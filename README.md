# Phoenix Template Engine for Mjml

> Powered by [Mjml](https://mjml.io/)


## Usage

  1. Add `{:phoenix_mjml, "~> 0.1.0"}` to your deps in `mix.exs`.
     If you generated your app from the Phoenix master branch,
     add phoenix_mjml's master branch to your deps instead.
     `{:phoenix_mjml, github: "chrismccord/phoenix_mjml"}`
  2. Add the following to your Phoenix `config/config.exs`

     ```elixir
    config :phoenix, :template_engines,
      mjml: PhoenixMjml.Engine
     ```
  3. Use the `.html.mjml` extensions for your templates.

## Optional

Add mjml extension to Phoenix live reload in `config/dev.exs`

```elixir
  config :hello_phoenix, HelloPhoenix.Endpoint,
    live_reload: [
      patterns: [
        ~r{priv/static/.*(js|css|png|jpeg|jpg|gif|svg)$},
        ~r{web/views/.*(ex)$},
        ~r{web/templates/.*(eex|mjml)$}
      ]
    ]
```
