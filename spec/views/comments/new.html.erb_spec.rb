require 'rails_helper'

RSpec.describe "comments/new", type: :view do
  before(:each) do
    assign(:comment, Comment.new(
      :user => "MyString",
      :body => "MyText",
      :image => "MyString",
      :notice => nil
    ))
  end

  it "renders new comment form" do
    render

    assert_select "form[action=?][method=?]", comments_path, "post" do

      assert_select "input#comment_user[name=?]", "comment[user]"

      assert_select "textarea#comment_body[name=?]", "comment[body]"

      assert_select "input#comment_image[name=?]", "comment[image]"

      assert_select "input#comment_notice_id[name=?]", "comment[notice_id]"
    end
  end
end
