using CalorieCounter.Dto;
using CalorieCounter.Models;

namespace CalorieCounter.Extensions
{
    public static class MealMapperExtension
    {
        public static MealDto ToDto(this Meal meal)
        {
            return new MealDto
            {
                Date = meal.Date,
                Id = meal.Id,
                MealTypeId = meal.Type?.Id,
                Quantity = meal.Quantity,
                RecepieName = meal.Recepie?.Name,
            };
        }
    }
}
