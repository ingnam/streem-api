class PagesController < ApplicationController

	def page_views
		# client = Elasticsearch::Client.new(url: 'http://elastic:streem@test.es.streem.com.au:8080')
		# query = {
		#   query: {
		#   	match_all: {}
	 #  	},
		#   size: 0,
		#   aggs: {
		#     views_over_time: {
		#       filter: {
		#         range: {
		#           derived_tstamp: {
		#             gte: "now-5y",
		#             lte: "now"
		#           }
		#         }
		#       },
		#       aggs: {
		#         time_interval: {
		#           date_histogram: {
		#             field: 'derived_tstamp',
		#             interval: 'month'
		#           }
		#         }
		#       }
		#     }
		#   }
		# }
		# records = client.search index: 'events', type: 'event', body: query

		# Demo data for histogram
		interval = ['10:00', '11:00', '12:00', '1:00', '2:00']
		hits_count = [
			{
			  name: 'http://google.com',
			  data: random_array
			}, 
			{
			  name: 'https://facebook.com',
			  data: random_array
			}, 
			{
			  name: 'https://twitter.com',
			  data: random_array
			}
  	]
		render json: { response: 200, interval: interval, hits_count: hits_count }
	end

	private

	def random_array
		Array.new(5) { rand(1...20) }
	end
end