require 'spec_helper'
require 'capture-output'

describe Can963 do

  let(:can963) { Can963.new }

  describe 'version' do
    it 'should print the current version of CAN963' do
      text = Capture.stdout { can963.version }
      text.chomp.should == '969.1.0-p10'
    end
  end
end
