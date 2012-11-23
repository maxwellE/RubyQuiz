# Facebook Interview Question
# Given several meeting times in the format of an array of arrays each with a 
# start and ending time tell me if it is possible for me to not miss a single
# meeting (i.e. I cannot be late).
# Ex: [[100,200],[300,400]] is valid using military time

# Solution complexity: nlog(n) due to the use of Quicksort
# See test for additional examples, military time use makes things simpler

class Meetings
  def initialize(times)
    @times = times.sort
  end
  
  def valid?
    meeting = @times.shift
    until @times.empty?
      if @times.first.first < meeting.last
        return false
      end
      meeting = @times.shift
    end
    return true
  end
end