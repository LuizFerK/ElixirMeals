defmodule Dailymeal.Error do
  @keys [:status, :result]

  @enforce_keys @keys

  defstruct @keys

  def build(status, result), do: %__MODULE__{status: status, result: result}

  def build_meal_not_found_error, do: build(:not_found, "Meal not found")
end
