class TodayInHistory::Event
  attr_accessor :name
   
  def self.today
  self.scrape_events
  binding.pry
  end


  def self.scrape_events  
   events = []
  
   events << self.scrape_history
   events << self.scrape_film
   events << self.scrape_music
   events << self.scrape_sports
   events << self.scrape_canada
   events << self.scrape_america
   events << self.scrape_british
   events << self.scrape_australian
   events << self.scrape_indian
  events
  end 

  def self.scrape_history
     doc = Nokogiri::HTML(open("https://www.onthisday.com/history/events.php"))
     event = doc.search("li.event").first.text
     event
    end
  
  def self.scrape_film
   doc = Nokogiri::HTML(open("https://www.onthisday.com/film-tv/events.php"))
   event = doc.search("li.event").first.text
   event
   end 
   
   def self.scrape_music
     doc = Nokogiri::HTML(open("https://www.onthisday.com/music/events.php"))
     event = doc.search("li.event").first.text
     event
    end
    
  def self.scrape_sports
     doc = Nokogiri::HTML(open("https://www.onthisday.com/sport/events.php"))
     event = doc.search("li.event").first.text
     event
    end
    
   def self.scrape_canada
     doc = Nokogiri::HTML(open("https://www.onthisday.com/today/canadian-history.php"))
     event = doc.search("li.event").first.text
     event
    end
    
    def self.scrape_america
     doc = Nokogiri::HTML(open("https://www.onthisday.com/today/american-history.php"))
     event = doc.search("li.event").first.text
     event
    end
    
    def self.scrape_british
     doc = Nokogiri::HTML(open("https://www.onthisday.com/today/british-history.php"))
     event = doc.search("li.event").first.text
     event
    end
    
    def self.scrape_australian
     doc = Nokogiri::HTML(open("https://www.onthisday.com/today/australian-history.php"))
     event = doc.search("li.event").first.text
     event
    end
    
    def self.scrape_indian
     doc = Nokogiri::HTML(open("https://www.onthisday.com/today/indian-history.php"))
     event = doc.search("li.event").first.text
     event
   
    end
 end 