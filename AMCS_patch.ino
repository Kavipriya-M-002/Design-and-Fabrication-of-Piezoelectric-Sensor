#define pin A0

float x;
void setup() {
pinMode (pin, INPUT);
Serial.begin(19200);
}

void loop() {
x=analogRead(pin);
Serial.println(x);
delay(10);
}
