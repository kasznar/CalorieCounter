namespace CalorieCounter.Exceptions
{
    public class MissingFieldException : Exception
    {
        public MissingFieldException() : base("Field is required") { }
    }
}
