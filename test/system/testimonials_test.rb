require "application_system_test_case"

class TestimonialsTest < ApplicationSystemTestCase
  setup do
    @testimonial = testimonials(:one)
  end

  test "visiting the index" do
    visit testimonials_url
    assert_selector "h1", text: "Testimonials"
  end

  test "creating a Testimonial" do
    visit testimonials_url
    click_on "New Testimonial"

    fill_in "Member since", with: @testimonial.member_since
    fill_in "Message", with: @testimonial.message
    fill_in "Name", with: @testimonial.name
    fill_in "Title", with: @testimonial.title
    click_on "Create Testimonial"

    assert_text "Testimonial was successfully created"
    click_on "Back"
  end

  test "updating a Testimonial" do
    visit testimonials_url
    click_on "Edit", match: :first

    fill_in "Member since", with: @testimonial.member_since
    fill_in "Message", with: @testimonial.message
    fill_in "Name", with: @testimonial.name
    fill_in "Title", with: @testimonial.title
    click_on "Update Testimonial"

    assert_text "Testimonial was successfully updated"
    click_on "Back"
  end

  test "destroying a Testimonial" do
    visit testimonials_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Testimonial was successfully destroyed"
  end
end
