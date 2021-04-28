defmodule DailymealWeb.MealsViewTest do
  use DailymealWeb.ConnCase, async: true

  import Phoenix.View
  import Dailymeal.Factory

  alias Dailymeal.Meal
  alias DailymealWeb.MealsView

  test "renders meal.json" do
    meal = build(:meal)

    response = render(MealsView, "meal.json", meal: meal)

    assert %{
             meal: %Meal{
               descricao: "Description",
               data: _,
               calorias: 1500
             }
           } = response
  end
end
