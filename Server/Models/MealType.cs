using System.ComponentModel.DataAnnotations;

namespace CalorieCounter.Models
{
    public class MealType
    {
        public int Id { get; set; }
        [Required]
        public string? Name { get; set; }
    }
}
