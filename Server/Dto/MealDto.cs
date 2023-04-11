using System.ComponentModel.DataAnnotations;

namespace CalorieCounter.Dto
{
    public class MealDto
    {
        public int Id { get; set; }
        public int? MealTypeId { get; set; }
        public DateOnly Date { get; set; }

        [Required]
        public string? RecepieName { get; set; }
        public int Quantity { get; set; }
    }
}
