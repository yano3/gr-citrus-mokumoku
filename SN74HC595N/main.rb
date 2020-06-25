DATAPIN = 12
LATCHPIN = 11
CLOCKPIN = 10

data = [
  [1,1,1,1,1,1,0,0],
  [0,1,1,0,0,0,0,0],
  [1,1,0,1,1,0,1,0],
  [1,1,1,1,0,0,1,0],
  [0,1,1,0,0,1,1,0],
  [1,0,1,1,0,1,1,0],
  [1,0,1,1,1,1,1,0],
  [1,1,1,0,0,0,0,0],
  [1,1,1,1,1,1,1,0],
  [1,1,1,1,0,1,1,0],
  [0,0,0,0,0,0,0,0],
  [1,1,1,1,1,1,1,1],
]

pinMode(10, 1)
pinMode(11, 1)
pinMode(12, 1)

(0..9).each do |num|
    pins.each_with_index do |pin, i|
        d = LOW
        if (num & (1 << i)) > 0 then
            d = HIGH;
        end
        digitalWrite(pin, d)
    end
    delay 500
end
