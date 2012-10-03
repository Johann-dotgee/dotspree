namespace :fnordmetric do
  desc "Populate FnordMetric with events to simulate user activity"
  task :populate => :environment do
    products = Spree::Product.all
    videos = Spree::Video.all
    loop do
      products.sample.trigger_show_event
      videos.sample.trigger_show_event
      sleep(rand)
    end
  end
end