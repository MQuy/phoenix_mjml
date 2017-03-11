defmodule PhoenixMjml.Helpers do

  defmacro left >>> right do
    quote do
      result = unquote(left)
      unquote(right) && result
    end
  end

  defmacro left ~> right do
    quote do
      left_results = unquote(left)
      left_results |> unquote(right)
      left_results
    end
  end
end
