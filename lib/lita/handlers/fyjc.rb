module Lita
  module Handlers
    class Fyjc < Handler

      route(/^\s*fyjc\s*$/, :random_fyjc, help: {
        "fyjc" => "Randomly sort a Fuck Yeah Jacques Chirac"
      })

      def random_fyjc(r)
        r.reply file_lines.sample
      end

      private

      def file_lines
        @file_lines ||= File.readlines(File.expand_path(File.join(File.dirname(__FILE__), "fyjc.txt")))
      end
    end

    Lita.register_handler(Fyjc)
  end
end
