using CalorieCounter.Models;
using CalorieCounter.Services;
using Microsoft.AspNetCore.Mvc;

namespace CalorieCounter.Controllers;

[ApiController]
[Route("[controller]")]
public class RecepieController : ControllerBase
{
    RecepieService _service;

    public RecepieController(RecepieService service)
    {
        _service = service;
    }

    [HttpGet]
    public IEnumerable<Recepie> GetAll() 
    {
        return _service.GetAll();
    }

    [HttpGet("{id}")]
    public ActionResult<Recepie> GetById(int id)
    {
        var recepie = _service.GetById(id);

        if(recepie is not null) 
        {
            return recepie;
        }
        else
        {
            return NotFound();
        }
    }

    [HttpPost]
    public IActionResult Create(Recepie newRecepie) 
    {
        var recepie = _service.Create(newRecepie);
        return CreatedAtAction(nameof(GetById), new { id = recepie!.Id }, recepie);
    }


    [HttpPut("{id}/[action]")]
    public IActionResult AddIngredient(int recepieId, int ingredientId)
    {
        var recepieToUpdate = _service.GetById(recepieId);

        if (recepieToUpdate is not null)
        {
            _service.AddIngredient(recepieId, ingredientId);
            return NoContent();
        }
        else
        { 
            return NotFound(); 
        }
    }

    [HttpPut("{id}/[action]")]
    public IActionResult RemoveIngredient(int recepieId, int ingredientId)
    {
        var recepieToUpdate = _service.GetById(recepieId);

        if (recepieToUpdate is not null)
        {
            _service.RemoveIngredient(recepieId, ingredientId);
            return NoContent();
        }
        else
        {
            return NotFound();
        }
    }

    [HttpDelete]
    public IActionResult Delete(int id)
    {
        var recepie = _service.GetById(id);

        if (recepie is not null)
        {
            _service.Delete(id);
            return Ok();
        }
        else
        {
            return NotFound();
        }
    }
}
