;====================================================
; WARSAW UNIVERSITY OF TECHNOLOGY                    |
; FACULTY OF MATHEMATICS AND INFORMATION SCIENCE     |
;                                                    |
; Logic and Symbolic Programming Project             |
; ;Lisp Expert System for COVID-19 Diagnosis          |
; Author: Andra Umoru                                |
;=====================================================


; Macro that load the expert system
(defmacro expert-system ()
  `(progn
     (format t " ------------------------------------~%")
     (format t "|    Please answer the following     |~%")
     (format t "|    question that Expert System     |~%")
     (format t "| will ask you to know your COVID-19 |~%")
     (format t "|       status. Thank you!!!         |~%")
     (format t "|    Please respond by typing in     |~%")
     (format t "|             'y' or 'n'             |~%")
     (format t " ------------------------------------~%~%")
     (covid-19-positive)))


;Function showing author's information
(defun my-information ()
  (format t " ------------------------------------~%")
  (format t "|             Welcome to             |~%")
  (format t "|        Andra Umoru (324334)'s      |~%")
  (format t "|       Lisp COVID-19 Diagnosis      |~%")
  (format t "|     Expert System Implementation   |~%")
  (format t "|     Please respond by typing in    |~%")
  (format t "|             'y' or 'n'             |~%")
  (format t " ------------------------------------~%~%")
  (info))


;Function that check user's activity in the system
(defun info ()
  (if (initial-check)
    (expert-system)))


;Function that probes user
(defun initial-check ()
  (and (ask-question2 "Welcome, Do you want to do COVID-19 status check? ")
       (ask-question2 "Do you feel ill? ")))
      

; Macro that display diagnosis result
(defmacro covid-19-positive ()
  `(if (symptoms)
      (format t "Based on your symptoms, it is possible that you have COVID-19. Please consult a medical professional for a proper diagnosis and treatment plan.")
    (format t "You have some symptoms of COVID-19, but not all. It is possible that you might have COVID-19 or another illness. Please consult a medical professional for a proper diagnosis and treatment plan.")))

; macro that ask for user's symptoms
(defmacro symptoms ()
  `(and (ask-question "Do you have FEVER? ")
        (ask-question "Are you having DRY COUGH? ")
        (ask-question "Have you LOSS TASTE and SMELL? ")
        (ask-question "Are you having DIFFICULTY BREATHING? ")
        (ask-question "Are you FEELING TIRED? ")
        (ask-question "Are you having SORE THROAT? ")
        (ask-question "Do you have ACHES and PAINS? ")
        (ask-question "Do you have HEADACHE? ")))


; Macro that allows users to respond with yes or no to symptoms question
(defmacro ask-question (question)
  `(progn
     (format t ,question)
     (let ((reply (read)))
       (format t "~%")
       (string= reply "Y"))))



; Function that allows users to respond with yes or no to whether they want to use the system or not
(defun ask-question2 (question)
  (format t "~b" question)
  (let ((reply (read)))
    (format t "~%")
    (string= reply "Y")))


; Initiating loading the whole program
(my-information)