using CalorieCounter.Models;
using System.ComponentModel.DataAnnotations;


namespace CalorieCounter.Dto
{
    public class CreateMealDto
    {
        [Required]
        public int? MealTypeId { get; set; }

        [Required]
        public int? UserId { get; set; }

        [Required]
        public DateOnly Date { get; set; }

        [Required]
        public int? RecepieId { get; set; }

        [Required]
        public int Quantity { get; set; }
    }
}
