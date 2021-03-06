#include "PetApi.h"

const char* ssid = "your wifi name"; // TODO Change wifi name
const char* password = "Your wifi password"; //TODO Change wifi password


void setup(){
    //Initialize serial and wait for port to open:
    Serial.begin(9600);
    delay(100);

    Serial.print("Attempting to connect to SSID: ");
    Serial.println(ssid);
    WiFi.begin(ssid, password);

    // attempt to connect to Wifi network:
    while (WiFi.status() != WL_CONNECTED) {
    Serial.print(".");
    // wait 1 second for re-trying
    delay(1000);
    }

    Serial.print("Connected to ");
    Serial.println(ssid);

    //Print LAN IP.
    Serial.print("IP address set: ");
    Serial.println(WiFi.localIP());

    Tiny::PetApi petapi;
    auto resp = petapi.getPetById(10);
    Serial.println(resp.code);
    Tiny::Pet pet = resp.obj;
    Serial.println(pet.toJson().dump().c_str());
}

void loop(){}
