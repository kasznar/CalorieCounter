using System.ComponentModel.DataAnnotations;
using System.Text.Json.Serialization;


namespace CalorieCounter.Models
{
    public class Meal
    {
        public int Id { get; set; }

        [Required]
        public MealType? Type { get; set; }

        [JsonIgnore]
        [Required]
        public User? User { get; set; }

        [Required]
        public DateOnly Date { get; set; }

        [Required]
        public Recepie? Recepie { get; set; }

        [Required]
        public int Quantity { get; set; }
    }
}
