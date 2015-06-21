module HackAppsHelper
	def pretty_status(status)
		if status == "Undecided"
		  return '<span class="ui yellow label">Undecided</span>'.html_safe
		elsif status == "Approved"
		  return '<span class="ui green label">Approved</span>'.html_safe
		else
		  return '<span class="ui red label">Denied</span>'.html_safe
		end
	end

	def pretty_travel_reimbursement(does_request)
		if does_request
		  return '<span class="ui blue label">Yes</span>'.html_safe
		else
 		  return '<span class="ui label">No</span>'.html_safe 
 		end
	end

	def pretty_first_time_hacker(is_first_time)
		if is_first_time
		  return '<span class="ui label">Yes</span>'.html_safe
		else
 		  return '<span class="ui label">No</span>'.html_safe 
 		end
	end

	def pretty_status_ribbon(status)
		if status == "Undecided"
		  return '<a class="ui huge yellow right ribbon label">Undecided</a>'.html_safe
		elsif status == "Approved"
		  return '<a class="ui huge green right ribbon label">Approved</a>'.html_safe
		else
		  return '<a class="ui huge red right ribbon label">Denied</a>'.html_safe
		end
	end

	def pretty_first_time_hacker_tag(is_first_time_hacker)
		if is_first_time_hacker
		  return '<a class="ui blue tag label">1st Time Hacker</a>'.html_safe
		end
	end

	def pretty_favorite(is_favorite)
		if is_favorite
		  return '<div class="ui huge label">
  					<i class="star icon"></i> Favorited
				 </div>'.html_safe
		 end
	end
end
