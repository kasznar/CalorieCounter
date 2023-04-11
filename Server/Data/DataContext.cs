using CalorieCounter.Models;
using Microsoft.EntityFrameworkCore;

namespace CalorieCounter.Data;


public class DataContext : DbContext
{
    public DataContext(DbContextOptions<DataContext> options) 
        : base(options) 
    {
    }

    public DbSet<User> Users => Set<User>();
    public DbSet<Meal> Meals => Set<Meal>();
    public DbSet<Recepie> Recepies => Set<Recepie>();
    public DbSet<Ingredient> Ingredients => Set<Ingredient>();
    public DbSet<MealType> MealTypes => Set<MealType>();
}
