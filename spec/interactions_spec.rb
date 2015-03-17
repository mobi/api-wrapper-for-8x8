require 'spec_helper'

describe ApiWrapperFor8x8::Interactions do
  describe "all_interactions" do
    it "should GET /stats/allinteractions.json" do
      @api.should_receive(:get).with('/stats/allinteractions.json', {}, {})
      @api.all_interactions
    end
  end

  describe "interaction_by_id" do
    it "should get a single interaction" do
      Rails.logger.debug "#{@api.interaction_by_id(1234).inspect}"
      @api.should_receive(:get).with('/stats/allinteractions.json', {}, {"interaction-id" => "1234"})
      @api.interaction_by_id(1234)
    end
  end
end
