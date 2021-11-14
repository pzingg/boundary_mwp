defmodule MySystem do
  @moduledoc """
  Documentation for `MySystem`.
  """
  use Boundary, deps: [MySystemSchemas]

  @doc """
  Hello world.

  ## Examples

      iex> MySystem.hello()
      :world

  """
  def hello do
    :world
  end
end
