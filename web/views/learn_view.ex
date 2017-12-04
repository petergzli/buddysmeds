defmodule Buddysmeds.LearnView do
  use Buddysmeds.Web, :view

  def render("show.json",  _anything) do
    %{message: "Successfully added email." }
  end
end