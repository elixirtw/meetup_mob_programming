defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t) :: map
  def count(sentence) do
    sentence
    |> String.split(~r/[^\w-]+|_+|\s+/u, trim: true)
    |> List.foldl(%{}, fn (key, map) ->
      Map.update(map, String.downcase(key), 1, &(&1 + 1))
      end)
  end
end
