defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t) :: map
  def count(sentence) do
    sentence
    |> String.downcase
    |> String.split([" ", "-", "_"])
    |> List.foldl(%{}, fn (elem, acc) -> 
        Map.put(acc, elem, Map.get(acc, elem, 0) + 1)
       end)
    |> IO.inspect
  end
end
