using CalorieCounter.Models;

namespace CalorieCounter.Data;


public class DbInitializer
{
    public static void Initialize(DataContext context)
    {
        if (context.Ingredients.Any() 
            && context.Users.Any()
            && context.MealTypes.Any()
            && context.Recepies.Any())
        {
            return;
        }


        var user = new User { Email = "test@example.com", Password = "password" };
        var egg = new Ingredient { Name="Egg", Calories=12 };
        var omlette = new Recepie {
            Name = "Omlette",
            Ingedients = new List<Ingredient> { 
                egg
            } 
        };
        var breakfast = new MealType { Name = "Breakfast" };
        var meal = new Meal {
            User = user,
            Recepie = omlette,
            Type = breakfast,
            Quantity = 1,
            Date = new DateOnly(2023,4,8)
        };

        context.Meals.Add(meal);
        context.SaveChanges();
    }
}
