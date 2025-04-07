# **Optimal-Exam-Scheduler**

## **Περιγραφή**
Πρόγραμμα σε **Prolog** για τον βέλτιστο προγραμματισμό εξετάσεων μεταπτυχιακών φοιτητών. Συγκεκριμένα, υλοποιεί predicates για τη δημιουργία, αξιολόγηση και βελτιστοποίηση προγραμμάτων εξετάσεων, ελαχιστοποιώντας τις συγκρούσεις (περισσότερες από 2 εξετάσεις/εβδομάδα) και μεγιστοποιώντας το συνολικό σκορ.

---

### **🚀 Project Overview**
- **Προγραμματισμός Εξετάσεων**: Δημιουργία προγράμματος εξετάσεων για 2,5 εβδομάδες (3 ημέρες, 3 ημέρες, 2 ημέρες).
- **Βελτιστοποίηση Συγκρούσεων**: Ελαχιστοποίηση του αριθμού φοιτητών που δίνουν πάνω από 2 εξετάσεις την ίδια εβδομάδα.
- **Αξιολόγηση Σκορ**: Υπολογισμός σκορ με βάση τις εξεταστικές ημέρες και τους πολλαπλασιαστές παρουσίας.

---

### **🔍 Key Features**
- **Δημιουργία Προγραμμάτων**: Επιστροφή όλων των δυνατών προγραμμάτων μέσω backtracking.
- **Εκτίμηση Συγκρούσεων**: Μέτρηση φοιτητών που δίνουν παραπάνω από 2 εξετάσεις/εβδομάδα.
- **Βελτιστοποίηση Επιλογών**: Επιλογή προγραμμάτων με ελάχιστες συγκρούσεις και μέγιστο συνολικό σκορ.

---

### **🛠️ Technical Highlights**
- **Backtracking & Permutations**: Δημιουργία και επεξεργασία συνδυασμών μαθημάτων.
- **Ακριβής Υπολογισμός Σκορ**: Χρήση συναρτήσεων για την αξιολόγηση κάθε προγράμματος βάσει παρουσιών και ημερών.
- **Ευέλικτη Εφαρμογή**: Υποστηρίζει πλήρη επιστροφή εναλλακτικών λύσεων για βέλτιστη επιλογή.

---

### **📂 Code Structure**
- **main.pl**: Περιέχει όλους τους ορισμούς των predicates.
  - **schedule/3**: Δημιουργία τυχαίων προγραμμάτων εξετάσεων.
  - **schedule_errors/4**: Υπολογισμός συγκρούσεων ανά πρόγραμμα.
  - **minimal_schedule_errors/4**: Εύρεση προγραμμάτων με ελάχιστες συγκρούσεις.
  - **score_schedule/4**: Υπολογισμός συνολικού σκορ του προγράμματος.
  - **maximum_score_schedule/4**: Επιλογή του προγράμματος με τις βέλτιστες επιδόσεις.

---

**🏷️ Tags**: **Prolog**, **Exam Scheduling**, **Βελτιστοποίηση**, **Backtracking**, **Λογικός Προγραμματισμός**
**🌟 Concept**: *"Ένα σύστημα προγραμματισμού εξετάσεων που στοχεύει στη βέλτιστη οργάνωση του εξεταστικού προγράμματος, ελαχιστοποιώντας συγκρούσεις και μεγιστοποιώντας το συνολικό σκορ."*
