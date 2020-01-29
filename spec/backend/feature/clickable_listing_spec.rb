feature 'Clickable listing' do
  scenario "user clicks listing and it takes them to listing page" do
    visit '/'
    listing_id = DatabaseConnection.command("SELECT listing_id FROM listings;")[0]['listing_id']
    first('.listing').click
    # page.find("##{listing_id}").click
    # page.find("#extra#{listing_id}").text
    #find out way to test dynamic jQuery content
    p listing_id
    expect(page).to have_content(listing_id)
  end
end
