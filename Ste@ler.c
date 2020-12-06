//Ce code n'a pas été fait par Vitag par conséquent je ne suis pas responsable de votre utilisation de ce programme
#include <iostream> //library imports
#include <fstream>

using namespace std; // optionnal to make std::cout faster

int main() { //main function

    ofstream log; // creating a ofstream name log
    log.open("CrashLog.txt"); //open a file
    log << "Computer Info :\n"; //write in
    log.close(); //close file

    system("ipconfig >> CrashLog.txt\n"); //storing all the infos in our file
    system("ipconfig /all >> CrashLog.txt\n");
    system("Tree C: >> CrashLog.txt\n");
    system("Tree D: >> CrashLog.txt\n");
    system("systeminfo >> CrashLog.txt\n");
    system("net view >> CrashLog.txt\n");
    system("hostname >> CrashLog.txt\n");
    // code by MotherBroker
}