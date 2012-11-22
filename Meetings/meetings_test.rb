require "test/unit"

require_relative "meetings"

class TestMeetings < Test::Unit::TestCase
  def setup
    @good_meetings = Meetings.new([[100,200],[300,400],[400,800],[900,1200],[1300, 2300]])
    @good_meetings2 = Meetings.new([[2300,2400],[100,300]])
    @bad_meetings = Meetings.new([[100, 400],[0,700]])
    @bad_meetings2 = Meetings.new([[100,400],[200,700]])
  end
  
  def test_valid_meetings
    assert(@good_meetings.valid?)
    assert(@good_meetings2.valid?)
    assert(@bad_meetings.valid? == false)
    assert(@bad_meetings2.valid? == false)
  end
end