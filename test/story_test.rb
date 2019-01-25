require 'pry'
require 'minitest/pride'
require 'minitest/autorun'
require './lib/story.rb'

class StoryTest < Minitest::Test
  def test_it_exists
    story = Story.new(
      "section": "U.S.",
      "subsection": "Politics",
      "title": "How a Lawyer, a Felon and a Russian General Chased a Moscow Trump Tower Deal",
      "abstract": "During the presidential campaign, Michael D. Cohen and Felix Sater, an associate with a criminal past, pursued a new Trump Tower project with a former spymaster’s help.",
      "url": "https://www.nytimes.com/2018/11/29/us/politics/trump-russia-felix-sater-michael-cohen.html",
      "published_date": "2018-11-29T18:46:27-05:00",
      "photo": "photo"
    )

    assert_instance_of Story, story
  end

  def test_it_has_attributes
    story = Story.new(
      "section": "U.S.",
      "subsection": "Politics",
      "title": "How a Lawyer, a Felon and a Russian General Chased a Moscow Trump Tower Deal",
      "abstract": "During the presidential campaign, Michael D. Cohen and Felix Sater, an associate with a criminal past, pursued a new Trump Tower project with a former spymaster’s help.",
      "url": "https://www.nytimes.com/2018/11/29/us/politics/trump-russia-felix-sater-michael-cohen.html",
      "published_date": "2018-11-29T18:46:27-05:00",
      "photo": "photo"
    )

    assert_equal "U.S.", story.section
    assert_equal "Politics", story.subsection
    assert_equal "How a Lawyer, a Felon and a Russian General Chased a Moscow Trump Tower Deal", story.title
    assert_equal "During the presidential campaign, Michael D. Cohen and Felix Sater, an associate with a criminal past, pursued a new Trump Tower project with a former spymaster’s help.", story.abstract
    assert_equal "https://www.nytimes.com/2018/11/29/us/politics/trump-russia-felix-sater-michael-cohen.html", story.url
    assert_equal "2018-11-29T18:46:27-05:00", story.published_date
    assert_equal "photo", story.photo
  end

  def test_it_returns_stories
    data = Story.content_load
  end


end