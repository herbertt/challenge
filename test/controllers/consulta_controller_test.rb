require 'test_helper'

class ConsultaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @consultum = consulta(:one)
  end

  test "should get index" do
    get consulta_url
    assert_response :success
  end

  test "should get new" do
    get new_consultum_url
    assert_response :success
  end

  test "should create consultum" do
    assert_difference('Consultum.count') do
      post consulta_url, params: { consultum: { email: @consultum.email, empresa: @consultum.empresa, faturamento: @consultum.faturamento, user_name: @consultum.user_name, val_titulo: @consultum.val_titulo, vencimento: @consultum.vencimento } }
    end

    assert_redirected_to consultum_url(Consultum.last)
  end

  test "should show consultum" do
    get consultum_url(@consultum)
    assert_response :success
  end

  test "should get edit" do
    get edit_consultum_url(@consultum)
    assert_response :success
  end

  test "should update consultum" do
    patch consultum_url(@consultum), params: { consultum: { email: @consultum.email, empresa: @consultum.empresa, faturamento: @consultum.faturamento, user_name: @consultum.user_name, val_titulo: @consultum.val_titulo, vencimento: @consultum.vencimento } }
    assert_redirected_to consultum_url(@consultum)
  end

  test "should destroy consultum" do
    assert_difference('Consultum.count', -1) do
      delete consultum_url(@consultum)
    end

    assert_redirected_to consulta_url
  end
end
