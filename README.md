# **Optimal-Exam-Scheduler**

## **Description**

A **Prolog** program for the optimal scheduling of postgraduate student exams. Specifically, it implements predicates for creating, evaluating, and optimizing exam schedules, minimizing conflicts (more than 2 exams per week) and maximizing the total score.

---

### **🚀 Project Overview**

* **Exam Scheduling**: Generates exam schedules for 2.5 weeks (3 days, 3 days, 2 days).
* **Conflict Optimization**: Minimizes the number of students taking more than 2 exams in the same week.
* **Score Evaluation**: Calculates the score based on exam days and attendance multipliers.

---

### **🔍 Key Features**

* **Schedule Generation**: Returns all possible schedules through backtracking.
* **Conflict Estimation**: Counts students taking more than 2 exams per week.
* **Optimization Selection**: Chooses schedules with minimal conflicts and maximum total score.

---

### **🛠️ Technical Highlights**

* **Backtracking & Permutations**: Generation and evaluation of course combinations.
* **Accurate Score Calculation**: Functions for evaluating each schedule based on attendance and exam days.
* **Flexible Application**: Supports returning all alternative solutions for optimal selection.

---

### **📂 Code Structure**

* **main.pl**: Contains all predicate definitions.

  * **schedule/3**: Generates random exam schedules.
  * **schedule_errors/4**: Calculates conflicts per schedule.
  * **minimal_schedule_errors/4**: Finds schedules with the fewest conflicts.
  * **score_schedule/4**: Computes the total score of each schedule.
  * **maximum_score_schedule/4**: Selects the schedule with the best performance.

---

**🏷️ Tags**: **Prolog**, **Exam Scheduling**, **Optimization**, **Backtracking**, **Logic Programming**
**🌟 Concept**: *"An exam scheduling system aimed at the optimal organization of exam timetables, minimizing conflicts and maximizing the total score."*
