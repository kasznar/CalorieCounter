using System.ComponentModel.DataAnnotations;
using System.Text.Json.Serialization;

namespace CalorieCounter.Models
{
    public class Ingredient
    {
        public int Id { get; set; }

        [Required]
        public string? Name { get; set; }
        public int Calories { get; set; }

        [JsonIgnore]
        public ICollection<Recepie>? Recepies { get; set; }
    }
}
