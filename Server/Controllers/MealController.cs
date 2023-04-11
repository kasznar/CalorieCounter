using CalorieCounter.Dto;
using CalorieCounter.Models;
using CalorieCounter.Services;
using Microsoft.AspNetCore.Mvc;

namespace CalorieCounter.Controllers;

[ApiController]
[Route("[controller]")]
public class MealController : ControllerBase
{
    private readonly MealService _service;

    public MealController(MealService service)
    {
        _service = service;
    }

    [HttpGet]
    public IEnumerable<MealDto> GetAll()
    {
        return _service.GetAll();
    }

    [HttpGet("{id}")]
    public ActionResult<Meal> GetById(int id)
    {
        var meal = _service.Get(id);

        if (meal is not null)
        {
            return meal;
        }
        else
        {
            return NotFound();
        }
    }

    [HttpPost]
    public IActionResult Create(CreateMealDto newMeal)
    {
        var meal = _service.Create(newMeal);
        return CreatedAtAction(nameof(GetById), new { id = meal!.Id }, meal);
    }
}
