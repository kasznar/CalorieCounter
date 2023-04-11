namespace CalorieCounter.Exceptions
{
    public class MealNotFoundException : Exception
    {
       public MealNotFoundException() : base("Meal not found") { }
    }
}
