# Write your code here

def badge_maker(name)
    return "Hello, my name is #{name}."
end

def batch_badge_creator(name_array)
    name_array.collect do |name|
        badge_maker(name)
    end
end

def assign_rooms(speakers)
    rooms = (1..7).to_a
    messages = []
    speakers.each_with_index do |speaker, index|
       messages << "Hello, #{speaker}! You'll be assigned to room #{rooms[index]}!"
    end
    messages
end

def printer(speakers)
    batch_badge_creator(speakers).each do |speaker|
        puts speaker
    end
    assign_rooms(speakers).each do |speaker|
        puts speaker
    end
end