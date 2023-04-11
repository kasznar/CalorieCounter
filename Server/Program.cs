using CalorieCounter.Data;
using CalorieCounter.Services;
using Microsoft.OpenApi.Models;

var builder = WebApplication.CreateBuilder(args);


builder.Services.AddControllers();

builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

builder.Services.AddSqlite<DataContext>("Data Source=CalorieCounter.db");

builder.Services.AddScoped<MealService>();
builder.Services.AddScoped<MealTypesService>();
builder.Services.AddScoped<UserService>();
builder.Services.AddScoped<RecepieService>();
builder.Services.AddScoped<IngredientService>();

builder.Services.AddSwaggerGen(c =>
{
    c.MapType<DateOnly>(() => new OpenApiSchema
    {
        Type = "string",
        Format = "date"
    });
});


var app = builder.Build();

if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.MapControllers();
app.CreateDbIfNotExists();

app.Run();
