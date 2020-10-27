#include <M5Stack.h>

void setup() {
  M5.begin();
  Serial.begin(115200);
  M5.Lcd.setTextSize(2);
}

void loop() {
  // 画面表示
  M5.Lcd.println("Hello World!");
  // シリアル通信表示
  Serial.println("Hello world");
  delay(1000);
}