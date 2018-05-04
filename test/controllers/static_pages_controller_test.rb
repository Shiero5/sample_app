require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

  # test "should get home" do
  #   get static_pages_home_url
  #   # getはHomeページやHelpページがいわゆる「GETリクエストを受け付ける」普通のWebページであるということを示します
  #   assert_response :success
  #   assert_select "title", "Home | #{@base_title}"
  # end
  # Homeページのテスト。GETリクエストをhomeアクションに対して発行 (=送信) せよ。そうすれば、リクエストに対するレスポンスは[成功]になるはず。

  test "should get root" do
    get root_url
    # getはHomeページやHelpページがいわゆる「GETリクエストを受け付ける」普通のWebページであるということを示します
    assert_response :success
    assert_select "title", "#{@base_title}"
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end

  test "should get contact" do
    get static_pages_contact_url
    assert_response :success
    assert_select "title", "Contact | #{@base_title}"
  end


end
