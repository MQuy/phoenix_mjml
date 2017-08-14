defmodule PhoenixMjml.Engine do
  @behaviour Phoenix.Template.Engine

  def compile(path, _name) do
    case System.cmd("mjml", [path, "-s"]) do
      {html, 0} -> EEx.compile_string(html, engine: Phoenix.HTML.Engine, line: 0)
      _         -> raise "Error MJML exited with non zero status"
    end
  end

end
