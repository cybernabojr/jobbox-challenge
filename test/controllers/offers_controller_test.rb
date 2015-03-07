require 'test_helper'

class OffersControllerTest < ActionController::TestCase
  setup do
    @offer = offers(:one)
    @offer.tags = [1,2,3]
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:offers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create offer" do
    assert_difference('Offer.count') do
      post :create, offer: { city: @offer.city, company_id: @offer.company_id, country_code: @offer.country_code, country_name: @offer.country_name, currency_code: @offer.currency_code, expires_at: @offer.expires_at, nice_to_have: @offer.nice_to_have, perks: @offer.perks, published_at: @offer.published_at, relocation_paid: @offer.relocation_paid, remote: @offer.remote, reward: @offer.reward, role_description: @offer.role_description, salary_high: @offer.salary_high, salary_low: @offer.salary_low, successful?: @offer.successful?, tags: @offer.tags, title: @offer.title, type: @offer.type, work_from_home: @offer.work_from_home }
    end

    assert_redirected_to offer_path(assigns(:offer))
  end

  test "should show offer" do
    get :show, id: @offer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @offer
    assert_response :success
  end

  test "should update offer" do
    patch :update, id: @offer, offer: { city: @offer.city, company_id: @offer.company_id, country_code: @offer.country_code, country_name: @offer.country_name, currency_code: @offer.currency_code, expires_at: @offer.expires_at, nice_to_have: @offer.nice_to_have, perks: @offer.perks, published_at: @offer.published_at, relocation_paid: @offer.relocation_paid, remote: @offer.remote, reward: @offer.reward, role_description: @offer.role_description, salary_high: @offer.salary_high, salary_low: @offer.salary_low, successful?: @offer.successful?, tags: @offer.tags, title: @offer.title, type: @offer.type, work_from_home: @offer.work_from_home }
    assert_redirected_to offer_path(assigns(:offer))
  end

  test "should destroy offer" do
    assert_difference('Offer.count', -1) do
      delete :destroy, id: @offer
    end

    assert_redirected_to offers_path
  end
end
