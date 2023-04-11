using Microsoft.AspNetCore.Mvc;
using CalorieCounter.Data;
using CalorieCounter.Models;
using CalorieCounter.Services;

namespace CalorieCounter.Controllers;


[Route("[controller]")]
[ApiController]
public class MealTypesController : ControllerBase
{
    private readonly MealTypesService _service;

    public MealTypesController(MealTypesService service)
    {
      _service = service;
    }

    [HttpGet]
    public IEnumerable<MealType> GetAll()
    {
        return _service.GetAll();
    }

    [HttpGet("{id}")]
    public ActionResult<MealType> GetById(int id)
    {
        var mealType = _service.Get(id);

        if (mealType is not null) 
        {
            return mealType;
        }
        else
        {
            return NotFound();
        }
    }

    [HttpPost]
    public IActionResult Create(MealType newMealType)
    {
        var mealType = _service.Create(newMealType);
        return CreatedAtAction(nameof(GetById), new { id = mealType.Id }, mealType);
    }

    [HttpPut("{id}")]
    public IActionResult Update(int id, string newName)
    {
        var mealTypeToUpdate = _service.Get(id);

        if (mealTypeToUpdate is not null)
        {
            _service.Update(id, newName);
            return NoContent();
        } 
        else
        {
            return NotFound();
        }
    }

    [HttpDelete("{id}")]
    public IActionResult Delete(int id)
    {
        var mealType = _service.Get(id);

        if (mealType is not null)
        {
            _service.Delete(id);
            return Ok();
        }
        else { 
            return NotFound(); 
        }
    }
}
