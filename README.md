# FlowdockBot

FlowdockBot using Hedwig and Api.ai

## Usage

Create Api.ai tokens and Flowdock api token and replace the places on config.exs file

```elixir
config :apiai,
  client_access_token: "CLIENT_ACCESS_TOKEN_HERE",
  developer_access_token: "DEVELOPER_ACCESS_TOKEN_HERE"

config :chatbot, FlowdockBot.Robot,
  adapter: Hedwig.Adapters.Flowdock,
  name: "ChatBot",
  aka: "/",
  # fill in the appropriate API token for your bot
  token: "FLOWDOCK_ACCESS_TOKEN_HERE",
  # for now, you can invite your bot to a channel in Flowdock and it will join
  # automatically
  rooms: ["ROOM_ID"],
  responders: [
    {Hedwig.Responders.Help, []},
    {Hedwig.Responders.Ping, []},
    {FlowdockBot.Responders.AI, []}
  ]
```

Open a terminal and run the following commands

```elixir
mix deps.get
iex -S mix
```
