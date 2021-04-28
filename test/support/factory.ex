defmodule Dailymeal.Factory do
  use ExMachina.Ecto, repo: Dailymeal.Repo

  alias Dailymeal.Meal

  def meal_params_factory do
    %{
      "descricao" => "Description",
      "data" => NaiveDateTime.local_now(),
      "calorias" => 1500
    }
  end

  def meal_factory do
    %Meal{
      descricao: "Description",
      data: NaiveDateTime.local_now(),
      calorias: 1500
    }
  end
end
