using CalorieCounter.Data;
using CalorieCounter.Models;
using Microsoft.EntityFrameworkCore;

namespace CalorieCounter.Services;

public class MealTypesService
{
    private readonly DataContext _context;

    public MealTypesService(DataContext context)
    {
        _context = context;
    }
    
    public MealType Create(MealType mealType)
    {
        _context.MealTypes.Add(mealType);
        _context.SaveChanges();

        return mealType;
    }

    public IEnumerable<MealType> GetAll()
    {
        return _context.MealTypes
            .AsNoTracking()
            .ToList();
    }

    public MealType? Get(int id)
    {
        return _context.MealTypes
            .AsNoTracking()
            .SingleOrDefault(mealType => mealType.Id == id);
    }

    public void Update(int mealTypeId, string newName)
    {
        var mealTypeToUpdate = _context.MealTypes.Find(mealTypeId);

        if (mealTypeToUpdate is null)
        {
            throw new InvalidOperationException("MealType does not exist");
        }

        mealTypeToUpdate.Name = newName;
        _context.SaveChanges();
    }

    public void Delete(int id) 
    {
        var mealTypeToDelete = _context.MealTypes.Find(id);

        if (mealTypeToDelete is not null)
        {
            _context.MealTypes.Remove(mealTypeToDelete);
            _context.SaveChanges();
        }
    }
}
