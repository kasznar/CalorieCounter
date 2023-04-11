using CalorieCounter.Data;
using CalorieCounter.Models;
using Microsoft.EntityFrameworkCore;

namespace CalorieCounter.Services
{
    public class RecepieService
    {
        private readonly DataContext _context;
        public RecepieService(DataContext context)
        {
            _context = context;
        }

        public IEnumerable<Recepie> GetAll() 
        {
            return _context.Recepies.Include(recepie => recepie.Ingedients).ToList();
        }

        public Recepie? GetById(int id)
        {
            return _context.Recepies
                .Include(recepie => recepie.Ingedients)
                .SingleOrDefault(recepie => recepie.Id == id );
        }

        public Recepie? Create(Recepie recepie)
        {
            _context.Recepies.Add(recepie);
            _context.SaveChanges();

            return recepie;
        }

        public void AddIngredient(int recepieId, int ingredientId) 
        {
            var recepieToUpdate = _context.Recepies.Find(recepieId);
            var ingredientToUpdate = _context.Ingredients.Find(ingredientId);

            if (recepieToUpdate is null || ingredientToUpdate is null)
            {
                throw new InvalidOperationException("Recepie or Ingredient is not found");
            }

            if (recepieToUpdate.Ingedients is null)
            {
                recepieToUpdate.Ingedients = new List<Ingredient>();
            }

            recepieToUpdate.Ingedients.Add(ingredientToUpdate);
            _context.SaveChanges();
        }

        public void RemoveIngredient(int recepieId, int ingredientId)
        {
            var recepieToUpdate = _context.Recepies.Find(recepieId);
            var ingredientToUpdate = _context.Ingredients.Find(ingredientId);

            if (recepieToUpdate is null || ingredientToUpdate is null)
            {
                throw new InvalidOperationException("Recepie or Ingredient is not found");
            }

            recepieToUpdate.Ingedients?.Remove(ingredientToUpdate);
            _context.SaveChanges();
        }

        public void Delete(int id)
        {
            var recepie = _context.Recepies.Find(id);
            if (recepie != null)
            {
                _context.Recepies.Remove(recepie);
                _context.SaveChanges();
            }
        }
    }
}
