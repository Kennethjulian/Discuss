defmodule Discuss.TopicController do
    use Discuss.Web, :controller # makes web.ex modules availible here
    
    alias Discuss.Topic

    def new(conn, _params) do
        changeset = Topic.changeset(%Topic{}, %{})

        render conn, "new.html", changeset: changeset
    end

    def create(conn, %{"topic" => topic}) do
        
    end
end