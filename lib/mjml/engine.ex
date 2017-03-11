defmodule Mjml.Engine do
  @behaviour Phoenix.Template.Engine

  import Mjml.Helpers

  def compile(path, _) do
    path
    |> generate_html_path
    |> compile_content
  end

  def generate_html_path(path) do
    path
    |> generate_mjml_path
    |> Path.absname
    ~> convert_into_html(path)
  end

  def generate_mjml_path(path) do
    filename =
      path
      |> Path.basename
      |> Path.rootname
    uuid = UUID.uuid1()
    "tmp/#{uuid}-#{filename}"
  end

  def convert_into_html(html_path, mjml_path) do
    File.mkdir("tmp")
    System.cmd("mjml", [mjml_path, "-o", html_path])
  end

  def compile_content(html_path) do
    html_path
    |> File.read!
    >>> File.rm!(html_path)
    |> EEx.compile_string(engine: Phoenix.HTML.Engine, line: 0, trim: true)
  end
end
