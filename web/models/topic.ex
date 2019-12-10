defmodule Discuss.Topic do
    use Discuss.Web, :model

    schema "topics" do
        field :title, :string
    end

    def changeset(struct, params \\ %{}) do
        struct
        |> cast(params, [:title])
        |> validate_required([:title])
    end
end

# schema is informing phoenix of whats going on in  postgres the module i created
#maps up to the topics table inside of my data base 
# the table has a title and the title is a string

# changeset validate a module before it is added to the data base