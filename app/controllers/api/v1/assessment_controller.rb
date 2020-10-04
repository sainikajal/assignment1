class Api::V1::AssessmentController < ApplicationController
 def index
  response_1 = HTTParty.get('https://reqres.in/api/unknown')
  response_2 = HTTParty.get("https://reqres.in/api/products/")
  @responses_data = []
  @responses_data << response_1["data"] << response_2["data"]
  render json: { response: @responses_data , success: true }, status: :ok
 end
end	