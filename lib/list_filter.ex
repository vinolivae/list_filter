defmodule ListFilter do
  @moduledoc """
  filtering odd numbers by list
  """

  @doc """
  call functions to filter list

  ## Examples
  iex> ListFilter.call(["1", "3", "6", "43", "bike", "6", "abc"])
  3
  """
  @spec call([any]) :: number
  def call(list), do: list |> filter_odd_numbers() |> count_odd_numbers()

  defp filter_odd_numbers(list) do
    list
    |> Enum.flat_map(fn string ->
      case Integer.parse(string) do
        {int, _resp} -> [int]
        :error -> []
      end
    end)
    |> Enum.filter(fn number -> rem(number, 2) != 0 end)
  end

  defp count_odd_numbers(list) do
    list
    |> Enum.count()
  end
end
