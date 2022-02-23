require 'json'

class MainController < ApplicationController

  def main
    timeline_json = File.read("data/timeline.json")
    @timeline = JSON.parse(timeline_json)['timeline']
    render "main/main"
  end
end
