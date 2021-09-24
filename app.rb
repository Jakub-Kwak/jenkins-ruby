token = ARGV[0]
p token
require 'octokit'
client = Octokit::Client.new :access_token => token

# repos = client.repos.methods
# puts repos
# user = client.user
repos = client.repos("Jakub-Kwak")

repos.each {|repo| p repo.name}