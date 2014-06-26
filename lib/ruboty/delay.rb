require 'ruboty'
require 'ruboty/delay/version'

module Ruboty
  module Handlers
    class Delay < Base
      on(
        /delay\s+(?<sec>\d+)\s+(?<body>.*)/,
        name: 'delay',
        description: 'Execute ruboty command after given seconds',
      )

      def delay(message)
        sec, body_ = *message.match_data.captures

        message.instance_eval do
          define_singleton_method(:body) do
            body_
          end
        end

        Thread.new do
          sleep sec.to_i

          begin
            robot.send(:handlers).each do |handler|
              handler.call(message)
            end
          rescue
            message.reply("after #{sec} seconds, fail with: #{message.body}")
          end
        end
      end
    end
  end
end
