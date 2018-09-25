require 'test_helper'

class NikkisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nikki = nikkis(:one)
  end

  test "should get index" do
    get nikkis_url
    assert_response :success
  end

  test "should get new" do
    get new_nikki_url
    assert_response :success
  end

  test "should create nikki" do
    assert_difference('Nikki.count') do
      post nikkis_url, params: { nikki: { body: @nikki.body, title: @nikki.title } }
    end

    assert_redirected_to nikki_url(Nikki.last)
  end

  test "should show nikki" do
    get nikki_url(@nikki)
    assert_response :success
  end

  test "should get edit" do
    get edit_nikki_url(@nikki)
    assert_response :success
  end

  test "should update nikki" do
    patch nikki_url(@nikki), params: { nikki: { body: @nikki.body, title: @nikki.title } }
    assert_redirected_to nikki_url(@nikki)
  end

  test "should destroy nikki" do
    assert_difference('Nikki.count', -1) do
      delete nikki_url(@nikki)
    end

    assert_redirected_to nikkis_url
  end
end
