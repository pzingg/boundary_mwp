defmodule MySystemSchemas do
  @moduledoc """
  Documentation for `MySystemSchemas`.

  If `type: :strict` is added, the following warnings are also
  emitted:

  ```
  warning: forbidden reference to Ecto.Schema
    (references from MySystemSchemas to Ecto.Schema are not allowed)
    lib/my_system_schemas/customer2.ex:17
  ```
  """
  # use Boundary, deps: [Ecto, Ecto.Schema, Phoenix.Param], type: :strict

  use Boundary, deps: [Ecto, Phoenix.Param]
end
