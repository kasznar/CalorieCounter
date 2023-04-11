using CalorieCounter.Data;
using CalorieCounter.Models;
using CalorieCounter.Services;
using Microsoft.AspNetCore.Mvc;

namespace CalorieCounter.Controllers;

[ApiController]
[Route("[controller]")]
public class IngredientsController : ControllerBase
{
    private readonly IngredientService _service;
    public IngredientsController(IngredientService service)
    {
        _service = service;
    }

    [HttpGet]
    public IEnumerable<Ingredient> GetAll()
    {
        return _service.GetAll();
    }

    [HttpGet("{id}")]
    public ActionResult<Ingredient> GetById(int id)
    {
        var ingredient = _service.GetById(id);

        if (ingredient is not null)
        {
            return ingredient;
        }
        else
        {
            return NotFound();
        }
    }

    [HttpPost]
    public IActionResult Create(Ingredient newIngredient)
    {
        var ingredient = _service.Create(newIngredient);
        return CreatedAtAction(nameof(GetById), new {id = ingredient!.Id}, ingredient);
    }

    [HttpPut("{id}")]
    public IActionResult Update(int id, Ingredient ingredient)
    {
        var oldIngredient = _service.GetById(id);

        if(ingredient.Id != id)
        {
            return BadRequest();
        }
        else if (oldIngredient is not null) {
            _service.Update(id, ingredient);
            return NoContent();
        }
        else { 
            return NotFound(); 
        }
    }

    [HttpDelete]
    public IActionResult Delete(int id)
    {
        var ingredient = _service.GetById(id);

        if (ingredient is not null)
        {
            _service.DeleteById(id);
            return Ok();
        }
        else
        {
            return NotFound();
        }
    }
}