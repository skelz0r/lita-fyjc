require "spec_helper"

describe Lita::Handlers::Fyjc, lita_handler: true do
  it { is_expected.to route("fyjc") }
  it { is_expected.not_to route("fyjc oki") }
  it { is_expected.to route("  fyjc ") }

  it "works" do
    images = File.readlines(File.expand_path(File.join(File.dirname(__FILE__), "../../../lib/lita/handlers/fyjc.txt")))
    send_message('fyjc')

    (images - replies).size.should == (images.length - 1)
  end
end
