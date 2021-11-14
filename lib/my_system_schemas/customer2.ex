defmodule MySystemSchemas.Customer2 do
  @moduledoc """
  A customer schema.

  The `customer_number` field (a unique identifier) is
  exposed in URLs via the Phoenix.Param protocol.

  This module explictly codes the protocol with `defimpl`.
  """
  use Ecto.Schema

  @primary_key {:id, :binary_id, autogenerate: true}
  @timestamps_opts [type: :utc_datetime]
  schema "more_customers" do
    field :customer_number, :string
    field :first_name, :string
    field :last_name, :string
    field :email, :string

    timestamps()
  end

  # Same as @derive {Phoenix.Param, key: :customer_number}
  defimpl Phoenix.Param, for: __MODULE__ do
    def to_param(customer_number: key) when is_binary(key), do: key

    def to_param(customer_number: nil) do
      raise ArgumentError,
            "cannot convert #{inspect(__MODULE__)} to param, " <>
              "key :customer_number contains a nil value"
    end

    def to_param(customer_number: _key) do
      raise ArgumentError,
            "cannot convert #{inspect(__MODULE__)} to param, " <>
              "key :customer_number contains a non-binary value"
    end
  end
end
