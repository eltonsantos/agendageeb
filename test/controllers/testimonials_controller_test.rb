require "test_helper"

class TestimonialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @testimonial = testimonials(:one)
  end

  test "should get index" do
    get testimonials_url
    assert_response :success
  end

  test "should get new" do
    get new_testimonial_url
    assert_response :success
  end

  test "should create testimonial" do
    assert_difference('Testimonial.count') do
      post testimonials_url, params: { testimonial: { member_since: @testimonial.member_since, message: @testimonial.message, name: @testimonial.name, title: @testimonial.title } }
    end

    assert_redirected_to testimonial_url(Testimonial.last)
  end

  test "should show testimonial" do
    get testimonial_url(@testimonial)
    assert_response :success
  end

  test "should get edit" do
    get edit_testimonial_url(@testimonial)
    assert_response :success
  end

  test "should update testimonial" do
    patch testimonial_url(@testimonial), params: { testimonial: { member_since: @testimonial.member_since, message: @testimonial.message, name: @testimonial.name, title: @testimonial.title } }
    assert_redirected_to testimonial_url(@testimonial)
  end

  test "should destroy testimonial" do
    assert_difference('Testimonial.count', -1) do
      delete testimonial_url(@testimonial)
    end

    assert_redirected_to testimonials_url
  end
end
