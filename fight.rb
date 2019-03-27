class Player 
    attr_accessor :name, :health, :power 
    def initialize(n,h,pow)
        @name = n
        @health = h
        @power = pow 
    end 
    def isAlive 
        @health > 0 
    end 
    def hit(opponet)
        opponet.health -= self.power 
    end
    def to_s 
        "#{name} Health: #{health}, Power: #{power}"
    end
end

def fight(p1,p2,p3,p4)
    while p1.isAlive || p2.isAlive && p3.isAlive || p4.isAlive 
    p1.hit(p2)
    p2.hit(p1)
    p3.hit(p4)
    p4.hit(p3)
    show_info(p1,p2,p3,p4)
    end 

    if p1.isAlive 
    puts "#{p1.name} WON!"
    elsif p2.isAlive 
    puts "#{p2.name} WON!"
    elsif p3.isAlive 
    puts "#{p3.name} WON!"
    elsif p4.isAlive 
    puts "#{p4.name} WON!"
    else
    puts "TIE!"
    end
end 

def show_info(*p)
    p.each{|x| puts x}
end

puts "PLAYER INFO"
p1 = Player.new("Player 1", 1+rand(100), 1+rand(20))
p2 = Player.new("Player 2", 1+rand(100), 1+rand(20))
p3 = Player.new("Player 3", 1+rand(100), 1+rand(20))
p4 = Player.new("Player 4", 1+rand(100), 1+rand(20))
show_info(p1,p2,p3,p4)

puts "LETS FIGHT!"
fight(p1,p2,p3,p4)
