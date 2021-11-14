defmodule MySystemSchemas.Customer do
  @moduledoc """
  A customer schema.

  The `customer_number` field (a unique identifier) is
  exposed in URLs via the Phoenix.Param protocol.

  This module explictly invokes the `__derving__ macro to
  define the protocol, and produces the warning:

  ```
  warning: forbidden reference to Phoenix.Param.Any
    (references from MySystemSchemas to Phoenix.Param.Any are not allowed)
    lib/my_system_schemas/customer.ex:23
  ```
  """
  use Ecto.Schema

  # @derive macro blows up boundary checking
  @derive {Phoenix.Param, key: :customer_number}
  @primary_key {:id, :binary_id, autogenerate: true}
  @timestamps_opts [type: :utc_datetime]
  schema "customers" do
    field :customer_number, :string
    field :first_name, :string
    field :last_name, :string
    field :email, :string

    timestamps()
  end
end
