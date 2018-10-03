defmodule ConduitMessagePack do
  use Conduit.ContentType
  
  @moduledoc """
  Handles converting a message body to and from message pack.
  """

  @doc """
  Formats the message body to message pack.

  ## Examples

      iex> import Conduit.Message
      iex> message =
      iex>   %Conduit.Message{}
      iex>   |> put_body([1,2,3])
      iex>   |> ConduitMessagePack.format([])
      iex> message.body
      <<147,1,2,3>>

  """
  def format(message, _opts) do
    put_body(message, Msgpax.pack!(message.body, iodata: false))
  end

  @doc """
  Parses the body from message pack.

  ## Examples

      iex> import Conduit.Message
      iex> message =
      iex>   %Conduit.Message{}
      iex>   |> put_body(<<147,1,2,3>>)
      iex>   |> ConduitMessagePack.parse([])
      iex> message.body
      [1,2,3]

  """
  def parse(message, _opts) do
    put_body(message, Msgpax.unpack!(message.body))
  end
end
