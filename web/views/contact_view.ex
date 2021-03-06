defmodule ConmanData.ContactView do
  use ConmanData.Web, :view

  def render("index.json", %{contacts: contacts}) do
    %{data: render_many(contacts, ConmanData.ContactView, "contact.json")}
  end

  def render("show.json", %{contact: contact}) do
    %{data: render_one(contact, ConmanData.ContactView, "contact.json")}
  end

  def render("contact.json", %{contact: contact}) do
    %{id: contact.id,
      name: contact.name,
      email: contact.email,
      phone: contact.phone}
  end
end
