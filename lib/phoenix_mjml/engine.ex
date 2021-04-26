defmodule PhoenixMjml.Engine do
  @behaviour Phoenix.Template.Engine

  def compile(path, _name) do
    os_type = :os.type()

    case do_compile_with(os_type) do
      {html, 0} -> EEx.compile_string(html, engine: Phoenix.HTML.Engine, line: 0)
      _ -> raise "Error MJML exited with non zero status"
    end
  end

  defp do_compile_with({:unix, _osname}) do
    System.cmd("mjml", [path, "-s"])
  end

  defp do_compile_with({:win32, _osname}) do
    System.cmd("cmd.exe", ["/c", "mjml", path, "-s"])
  end
end
