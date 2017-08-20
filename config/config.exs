use Mix.Config

config :apiai,
  client_access_token: "eec4ba887b97433b80fd3f8b994548a3",
  developer_access_token: "9ca50e1ab18f49d5b869a80d2768662a"

config :chatbot, FlowdockBot.Robot,
  adapter: Hedwig.Adapters.Flowdock,
  name: "ChatBot",
  aka: "/",
  # fill in the appropriate API token for your bot
  token: "a961358037faa4a22e9097e1f8229875",
  # for now, you can invite your bot to a channel in Flowdock and it will join
  # automatically
  rooms: ["dc31e539-4e3f-4b56-bfae-3421167a4000"],
  responders: [
    {Hedwig.Responders.Help, []},
    {Hedwig.Responders.Ping, []},
    {FlowdockBot.Responders.AI, []}
  ]
