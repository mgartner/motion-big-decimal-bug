class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)

    json = "{\"value\": 0.0}"

    p1_json = BW::JSON.parse(json)
    puts "p1_json['value'].class: #{p1_json['value'].class}"

    error = Pointer.new(:id)
    opts = NSJSONReadingMutableContainers | NSJSONReadingMutableLeaves | NSJSONReadingAllowFragments
    p2_json = NSJSONSerialization.JSONObjectWithData(json.to_data, options: opts, error: error)
    puts "p2_json['value'].class: #{p2_json['value'].class}"

    true
  end
end
