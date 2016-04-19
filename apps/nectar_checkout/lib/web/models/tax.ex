defmodule Nectar.Tax do
  use NectarCore.Web, :model

  schema "taxes" do
    field :name

    timestamps
  end

  @optional_fields ~w()
  @required_fields ~w(name)

  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end

end
