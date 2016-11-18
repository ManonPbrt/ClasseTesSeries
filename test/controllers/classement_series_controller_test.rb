require 'test_helper'

class ClassementSeriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @classement_series = classement_series(:one)
  end

  test "should get index" do
    get classement_series_index_url
    assert_response :success
  end

  test "should get new" do
    get new_classement_series_url
    assert_response :success
  end

  test "should create classement_series" do
    assert_difference('ClassementSeries.count') do
      post classement_series_index_url, params: { classement_series: { genre: @classement_series.genre, nom: @classement_series.nom, note: @classement_series.note, synopsis: @classement_series.synopsis } }
    end

    assert_redirected_to classement_series_url(ClassementSeries.last)
  end

  test "should show classement_series" do
    get classement_series_url(@classement_series)
    assert_response :success
  end

  test "should get edit" do
    get edit_classement_series_url(@classement_series)
    assert_response :success
  end

  test "should update classement_series" do
    patch classement_series_url(@classement_series), params: { classement_series: { genre: @classement_series.genre, nom: @classement_series.nom, note: @classement_series.note, synopsis: @classement_series.synopsis } }
    assert_redirected_to classement_series_url(@classement_series)
  end

  test "should destroy classement_series" do
    assert_difference('ClassementSeries.count', -1) do
      delete classement_series_url(@classement_series)
    end

    assert_redirected_to classement_series_index_url
  end
end
