require "test_helper"

class MembersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @member = members(:one)
  end

  test "should get index" do
    get members_url
    assert_response :success
  end

  test "should get new" do
    get new_member_url
    assert_response :success
  end

  test "should create member" do
    assert_difference('Member.count') do
      post members_url, params: { member: { bio: @member.bio, birthdate: @member.birthdate, cep: @member.cep, city: @member.city, complement: @member.complement, country: @member.country, email: @member.email, facebook: @member.facebook, instagram: @member.instagram, linkedin: @member.linkedin, name: @member.name, neighborhood: @member.neighborhood, number: @member.number, phone: @member.phone, state: @member.state, street: @member.street } }
    end

    assert_redirected_to member_url(Member.last)
  end

  test "should show member" do
    get member_url(@member)
    assert_response :success
  end

  test "should get edit" do
    get edit_member_url(@member)
    assert_response :success
  end

  test "should update member" do
    patch member_url(@member), params: { member: { bio: @member.bio, birthdate: @member.birthdate, cep: @member.cep, city: @member.city, complement: @member.complement, country: @member.country, email: @member.email, facebook: @member.facebook, instagram: @member.instagram, linkedin: @member.linkedin, name: @member.name, neighborhood: @member.neighborhood, number: @member.number, phone: @member.phone, state: @member.state, street: @member.street } }
    assert_redirected_to member_url(@member)
  end

  test "should destroy member" do
    assert_difference('Member.count', -1) do
      delete member_url(@member)
    end

    assert_redirected_to members_url
  end
end
