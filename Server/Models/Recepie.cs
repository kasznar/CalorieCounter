using System.ComponentModel.DataAnnotations;

namespace CalorieCounter.Models
{
    public class Recepie
    {
        public int Id { get; set; }

        [Required]
        public string? Name { get; set; }

        public ICollection<Ingredient>? Ingedients { get; set; }
    }
}
