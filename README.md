# ConduitMessagePack

Add a functionality to parse and format in message pack to Conduit Framework.

## Installation

This package can be installed by adding `conduit_message_pack` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:conduit_message_pack, "~> 0.1.0"}
  ]
end
```

## Add Message Pack Content Type To Conduit Configuration

Add config below to your config file.


```elixir
# config/config.exs

config :conduit, Conduit.ContentType, [
    {"application/msgpack", ConduitMessagePack}, 
  ]
```
