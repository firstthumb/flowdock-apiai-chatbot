defmodule FlowdockBot.Responders.AI do
  use Hedwig.Responder

  import Logger

  @bot_user "302789"
  @session_id "123456"

  hear ~r/.*/i, msg do
    if msg.user.id == @bot_user do
      :ok
    else
      {:ok, response} = ApiAi.query(msg.matches[0], @session_id)
      reply msg, response.speech
    end
  end
end
