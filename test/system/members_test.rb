require "application_system_test_case"

class MembersTest < ApplicationSystemTestCase
  setup do
    @member = members(:one)
  end

  test "visiting the index" do
    visit members_url
    assert_selector "h1", text: "Members"
  end

  test "creating a Member" do
    visit members_url
    click_on "New Member"

    fill_in "Bio", with: @member.bio
    fill_in "Birthdate", with: @member.birthdate
    fill_in "Cep", with: @member.cep
    fill_in "City", with: @member.city
    fill_in "Complement", with: @member.complement
    fill_in "Country", with: @member.country
    fill_in "Email", with: @member.email
    fill_in "Facebook", with: @member.facebook
    fill_in "Instagram", with: @member.instagram
    fill_in "Linkedin", with: @member.linkedin
    fill_in "Name", with: @member.name
    fill_in "Neighborhood", with: @member.neighborhood
    fill_in "Number", with: @member.number
    fill_in "Phone", with: @member.phone
    fill_in "State", with: @member.state
    fill_in "Street", with: @member.street
    click_on "Create Member"

    assert_text "Member was successfully created"
    click_on "Back"
  end

  test "updating a Member" do
    visit members_url
    click_on "Edit", match: :first

    fill_in "Bio", with: @member.bio
    fill_in "Birthdate", with: @member.birthdate
    fill_in "Cep", with: @member.cep
    fill_in "City", with: @member.city
    fill_in "Complement", with: @member.complement
    fill_in "Country", with: @member.country
    fill_in "Email", with: @member.email
    fill_in "Facebook", with: @member.facebook
    fill_in "Instagram", with: @member.instagram
    fill_in "Linkedin", with: @member.linkedin
    fill_in "Name", with: @member.name
    fill_in "Neighborhood", with: @member.neighborhood
    fill_in "Number", with: @member.number
    fill_in "Phone", with: @member.phone
    fill_in "State", with: @member.state
    fill_in "Street", with: @member.street
    click_on "Update Member"

    assert_text "Member was successfully updated"
    click_on "Back"
  end

  test "destroying a Member" do
    visit members_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Member was successfully destroyed"
  end
end
