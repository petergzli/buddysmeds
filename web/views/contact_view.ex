defmodule Buddysmeds.ContactView do
  use Buddysmeds.Web, :view

  def render("show.json",  _anything) do
    %{message: "Thanks for being our friend! We'll reach out when we have promotions and new products." }
  end
end