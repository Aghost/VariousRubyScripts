#!/usb/bin/env ruby

def clockmethod descriptionOfBlock, &block
  startTime = Time.now.hour < 12 ? Time.now.hour : Time.now.hour - 12
  startTime.times { block.call }
  puts 'dong'
end

clockmethod 'clockBlock' do
  puts 'ding'
end

