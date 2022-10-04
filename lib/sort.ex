defmodule Sort do
  @spec bsort(list()) :: list()
  def bsort(values), do: bsorter(values, values)

  defp bsorter(values, pierv_values) do
    values = nested_for(values, length(values) - 2, fn values, n ->
      first = Enum.at(values, n, 0)
      second = Enum.at(values, n + 1, 0)
      if first > second do
        values = List.update_at(values, n, fn _ -> second end)
        List.update_at(values, n + 1, fn _ -> first end)
      else
        values
      end
    end)
    if values != pierv_values, do: bsorter(values, values), else: values
  end

  defp nested_for(values, iterator, callback, iterable \\ 0) do
    values = callback.(values, iterable)
    if iterable < iterator, do: nested_for(values, iterator, callback, iterable + 1), else: values
  end
end
