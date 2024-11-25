# Customizable Digital Alarm Clock in EdSim51 with Assembly Language

Welcome to the **Customizable Digital Alarm Clock** project! This repository showcases an implementation of a digital alarm clock using the **8051 Microcontroller**, programmed in Assembly Language and simulated with the **EdSim51 Simulator**.  

# Table of Contents
- [Learning Objectives](#learning-objectives)
- [Features](#features)
- [Components Used](#components-used)
- [Visuals](#visuals)
- [Tools and Materials](#tools-and-materials)
- [How It Works](#how-it-works)
- [Running the Program](#running-the-program)
- [Results](#results)
- [Future Enhancements](#future-enhancements)
- [Conclusion](#conclusion)

## 📚 Learning Objectives

1. Apply knowledge of the **8051 Microcontroller** and its instruction set.
2. Demonstrate:
   - Switch input interfaces.
   - LED and LCD output interfaces.
   - DC motor as a timer/counter.
3. Build a functional **Digital Clock** using virtual I/O interfaces in EdSim51.

## 🌟 Features

- **Timer/Counter Functionality**: Uses a DC motor to increment values (e.g., seconds → minutes → hours).
- **LCD Output**: Displays time, date, and customizable messages (e.g., reminders or events).
- **Switch Input**: Provides user control for setting time, date, and mode selection.
- **Customizable Functionality**:
  - Set current date and time.
  - Display reminders (e.g., "Time to Wake Up!").
  - 24-hour or military time format.

## 🔧 Components Used

- **Input**: Switch buttons (SW0–SW7), Keypad (keys 0–11).  
- **Output**: 2-line LCD module.

## 🖼️ Visuals
1. **EdSim51 Simulator**  
![Simulator](/EdSim51_GUI.PNG)
2. **EdSim51 Schematic Diagram**  
![Logic Diagram](/EdSim51_Schematic_Diagram.png)

## 🛠️ Tools and Materials

- **EdSim51 Simulator**: A virtual environment for programming and simulating the 8051 Microcontroller.  
  Download here: [edsim51.com](https://www.edsim51.com/index.html)  
- **8051 Instruction Set**: Used for programming. Learn more: [Electronic Hub](https://www.electronicshub.org/8051-microcontroller-instruction-set/)  
- **HD44780 LCD Instruction Set**: For configuring the LCD. Datasheet: [SparkFun](https://www.sparkfun.com/datasheets/LCD/HD44780.pdf)  

## 🚀 How It Works

1. **Timer System**: The DC motor acts as a timer, incrementing seconds, minutes, and hours.  
2. **LCD Output**: Displays time, date, and custom messages refreshed dynamically.  
3. **Switch Input**:  
   - Adjust time/date or enter reminders.  
   - Select modes (e.g., timer, clock).  
   - Perform actions like "Save" or "Return."  

## 💻 Running the Program

1. Install **EdSim51 Simulator**.
2. Load the Assembly program file into the simulator.
3. Use the switches to interact with the system:
   - SW7: Mode Selector.
   - SW6: Increment Value.
   - SW5: Decrement Value.
   - SW4: Enter/Proceed.  
   *(Refer to the switch functionality illustration.)*
4. Observe output on the simulated LCD module.

## 🎯 Results

- Displays time in a 24-hour cycle.  
- Alerts users with a blinking LED and alarm reminder.  
- Seamless user interaction for customization.

## 🌱 Future Enhancements

- Add day/month/year counter functionality.  
- Implement advanced alarm features (e.g., snooze, multiple alarms).  

## 📝 Conclusion

This project demonstrates the potential of the **8051 Microcontroller** in building a functional digital alarm clock using Assembly Language. By integrating various I/O components and leveraging the EdSim51 Simulator, the project provides an engaging learning experience in microcontroller programming.  