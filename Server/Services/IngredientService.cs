using CalorieCounter.Data;
using CalorieCounter.Models;
using Microsoft.EntityFrameworkCore;

namespace CalorieCounter.Services
{
    public class IngredientService
    {
        private readonly DataContext _context;
        public IngredientService(DataContext context) { 
            _context = context;
        }
        public IEnumerable<Ingredient> GetAll()
        {
            return _context.Ingredients.AsNoTracking().ToList();
        }

        public Ingredient? GetById(int id) 
        {
            return _context.Ingredients
                .AsNoTracking()
                .SingleOrDefault(ingredient => ingredient.Id == id);
        }

        public Ingredient? Create(Ingredient ingredient)
        {
            _context.Ingredients.Add(ingredient);
            _context.SaveChanges();

            return ingredient;
        }

        public void Update(int id,  Ingredient ingredient)
        {
            var ingredientToUpdate = _context.Ingredients.Find(id);

            if (ingredientToUpdate is null)
            {
                throw new InvalidOperationException("Ingredient does not exist");
            }

            ingredientToUpdate.Calories = ingredient.Calories;
            ingredientToUpdate.Name = ingredient.Name;

            _context.SaveChanges();

        }

        public void DeleteById(int id) 
        {
            var ingredient = _context.Ingredients.Find(id);

            if (ingredient != null)
            {
                _context.Ingredients.Remove(ingredient);
                _context.SaveChanges();
            }
        }
    }
}
