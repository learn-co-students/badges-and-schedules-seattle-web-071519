speakers=["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"]

def badge_maker(name)
    return "Hello, my name is #{name}."
end

def batch_badge_creator(speakers)
    arr=[]
    speakers.each do |name|
        arr << "Hello, my name is #{name}."
    end
    return arr
end

def assign_rooms(speakers)
    arr=[]
    speakers.each_with_index do |name, index|
        arr << "Hello, #{name}! You'll be assigned to room #{index+1}!"
    end
    return arr
end

def printer(speakers)
    batch_badge_creator(speakers).each do |names|
        puts names
    end
    assign_rooms(speakers).each do |rooms|
        puts rooms
    end
end
