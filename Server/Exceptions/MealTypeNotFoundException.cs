namespace CalorieCounter.Exceptions
{
    public class MealTypeNotFoundException : Exception
    {
        public MealTypeNotFoundException() : base("Meal Type not found") { }
    }
}
