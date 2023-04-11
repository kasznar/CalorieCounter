using CalorieCounter.Models;
using System.ComponentModel.DataAnnotations;


namespace CalorieCounter.Dto
{
    public class CreateRecepieDto
    {
        [Required]
        public string? Name { get; set; }

        public ICollection<int>? IngedientIds { get; set; }
    }
}
