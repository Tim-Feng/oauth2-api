# module V1
#   class SampleAPI < Base
#     namespace "sample"

#     get "hello" do
#       { :hello => "world" }
#     end

#     get "secret" do
#       guard! # Requires a valid OAuth 2 Access Token to use this Endpoint

#       { :secret => "only smart guys can see this ;)" }
#     end
#   end
# end

module V1
  class SampleAPI < Base
    get "secret" do
      guard! # Requires a valid OAuth 2 Access Token to use this Endpoint

      { :secret => "only smart guys can see this ;)" }
    end
  end
end