require "spec_helper"

describe Lita::Handlers::Fyjc, lita_handler: true do
  it { is_expected.to route("lita fyjc") }
  it { is_expected.not_to route("lita fyjc oki") }
  it { is_expected.to route("lita  fyjc ") }

  it "works" do
    images = File.readlines(File.expand_path(File.join(File.dirname(__FILE__), "../../../lib/lita/handlers/fyjc.txt")))
    images.map!{ |img| img.gsub("\n", "") }
    send_message('lita fyjc')

    (images - replies).size.should == (images.length - 1)
  end
end
