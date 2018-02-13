defmodule Buddysmeds.GiftView do
  use Buddysmeds.Web, :view

  def render("show.json",  _anything) do
    %{message: "Thanks for joining Buddy's Squad! We'll reach out soon to verify your address with our records and send your toy!" }
  end
end