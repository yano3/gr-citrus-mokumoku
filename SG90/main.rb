Servo.attach(0, 11)

pinMode(10, INPUT)
pinMode(12, INPUT)

kakudo = 0
while true do
  delay 1
  touchL = digitalRead(10) 
  touchR = digitalRead(12) 
  if touchR == 1 && touchL == 1 then
    puts 'owata!!'
    break;
  end
  if touchL == 1 then
    kakudo -= 1
  end
  if touchR == 1 then
    kakudo += 1
  end
  Servo.write(0, kakudo)
end

Servo.dettach(0)