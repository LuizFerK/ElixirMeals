defmodule Dailymeal.MealTest do
  use Dailymeal.DataCase, async: true
  import Dailymeal.Factory

  alias Dailymeal.Meal
  alias Ecto.Changeset

  describe "changeset/1" do
    test "when all params are valid, return a valid changeset" do
      params = build(:meal_params)

      response = Meal.changeset(params)

      assert %Changeset{changes: %{calorias: 1500}, valid?: true} = response
    end
  end
end
