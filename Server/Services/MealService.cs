using CalorieCounter.Data;
using CalorieCounter.Dto;
using CalorieCounter.Exceptions;
using CalorieCounter.Extensions;
using CalorieCounter.Models;
using Microsoft.EntityFrameworkCore;

namespace CalorieCounter.Services
{
    public class MealService
    {
        DataContext _context;
        public MealService(DataContext context) 
        {
            _context = context;
        }

        public Meal Create(CreateMealDto newMeal)
        {
            var user = _context.Users.Find(newMeal.UserId);

            if (user == null)
            {
                throw new UserNotFoundException();
            }

            var recepie = _context.Recepies.Find(newMeal.RecepieId);

            if (recepie == null)
            {
                throw new RecepieNotFoundException();
            }

            var mealType = _context.MealTypes.Find(newMeal.MealTypeId);

            if (mealType == null) 
            { 
                throw new MealTypeNotFoundException();
            }

            var meal = new Meal
            {
                Date = newMeal.Date,
                Quantity = newMeal.Quantity,
                Recepie = recepie,
                User = user,
                Type = mealType,
            };

            _context.Meals.Add(meal);
            _context.SaveChanges();

            return meal;
        }

        public IEnumerable<MealDto> GetAll() 
        {
            return _context.Meals
                .Include(meal => meal.Type)
                .Include(meal => meal.Recepie)
                .Include(meal => meal.User)
                .AsNoTracking()
                .ToList().Select(meal => meal.ToDto());
        }

        public Meal? Get(int id)
        {
            return _context.Meals.Find(id);
        }

        public void DeleteById(int id)
        {
            var mealToDelete = _context.Meals.Find(id);

            if (mealToDelete is not null)
            {
                _context.Meals.Remove(mealToDelete);
                _context.SaveChanges();
            }
        }
    }
}
