class TodayInHistory::CLI
  
 def call
  puts Paint['*WELCOME TO "TODAY IN HISTORY"!*', :red] 
  
  puts Paint['The Date Today is:', :blue]
  puts Date.today.strftime("%a, %e %b %Y")
  
  list_events
  get_user_event

 end
 
 def list_events
  @events = TodayInHistory::Event.today
  @events.each.with_index(1) do |event, i|  
    #puts "#{i}.#{event}"
    end
    end
   
   def puts_list_events
  @events = TodayInHistory::Event.today
  @events.each.with_index(1) do |event, i|  
    puts "#{i}.#{event}"
    end
    end

  def get_user_event
  
    input = nil
    while input != "exit"
    puts Paint['Enter a Number to See a Historical Event that Happened on Todays date.', :green]  
    puts Paint['
    1.History
    2.Film/tv
    3.Music 
    4.Sports
    5.Canadian history
    6.American history
    7.British history
    8.Austrailian history
    9.Indian history', :yellow]
    puts Paint['
Or type all, type list, or type exit to exit.', :blue]
    input = gets.strip.downcase
    
    if input.to_i > 0  
      the_event = @events[input.to_i-1]
        puts "#{the_event}"
    elsif input == "all"
      puts_list_events
      
    elsif input == "list"  
     get_user_event
    elsif input == "exit"
     goodbye
    
    else 
      puts Paint['Not sure what you mean. Type list or exit.', :red]
    end   
 end 
 end
   
  
  def goodbye
    puts Paint['Goodbye.', :red]
  end
end 
