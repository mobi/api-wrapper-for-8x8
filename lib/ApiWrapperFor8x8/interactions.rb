module ApiWrapperFor8x8
  module Interactions

    # Get all interactions

    def all_interactions(params_options = {}, filtered_options={})
      get "/stats/allinteractions.json", params_options, filtered_options
    end

    # Get details of one interaction by id
    
    def interaction_by_id(id, params_options = {}, filtered_options={})
      all_interactions(params_options, {"interaction-id" => id.to_s}).first
    end

  end
end
