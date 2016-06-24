defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t) :: map()
  def count(sentence) do
    sentence
    |> String.downcase
    |> String.split(~r/[^a-zA-Z\d-ö]+/, trim: true)
    |> List.foldl( %{}, fn(elem, acc) ->
      Map.merge(acc, %{elem => (Map.get(acc, elem, 0) + 1)})
    end )
  end
end
