% FACTS

/* attends/2
 * attends(AEM,course).
 * Succeeds if the student with the AEM is attending this course.
 */
:- dynamic attends/2.

attends(476, im218).
attends(478, im218).
attends(479, im218).
attends(481, im218).
attends(482, im218).
attends(483, im218).
attends(484, im218).
attends(485, im218).
attends(487, im218).
attends(488, im218).
attends(489, im218).
attends(490, im218).
attends(491, im218).
attends(492, im218).
attends(494, im218).
attends(495, im218).
attends(496, im218).
attends(497, im218).
attends(498, im218).
attends(500, im218).
attends(501, im218).
attends(505, im218).
attends(506, im218).
attends(507, im218).
attends(508, im218).
attends(510, im218).
attends(512, im218).
attends(514, im218).
attends(517, im218).
attends(518, im218).
attends(479, im217).
attends(481, im217).
attends(486, im217).
attends(493, im217).
attends(494, im217).
attends(495, im217).
attends(497, im217).
attends(499, im217).
attends(502, im217).
attends(503, im217).
attends(504, im217).
attends(520, im217).
attends(507, im217).
attends(509, im217).
attends(512, im217).
attends(513, im217).
attends(514, im217).
attends(516, im217).
attends(476, im204).
attends(478, im204).
attends(482, im204).
attends(485, im204).
attends(486, im204).
attends(487, im204).
attends(488, im204).
attends(489, im204).
attends(490, im204).
attends(491, im204).
attends(492, im204).
attends(493, im204).
attends(494, im204).
attends(496, im204).
attends(498, im204).
attends(499, im204).
attends(500, im204).
attends(501, im204).
attends(502, im204).
attends(503, im204).
attends(505, im204).
attends(520, im204).
attends(508, im204).
attends(509, im204).
attends(510, im204).
attends(512, im204).
attends(513, im204).
attends(514, im204).
attends(515, im204).
attends(516, im204).
attends(517, im204).
attends(518, im204).
attends(479, im210).
attends(480, im210).
attends(481, im210).
attends(483, im210).
attends(484, im210).
attends(491, im210).
attends(497, im210).
attends(508, im210).
attends(513, im210).
attends(515, im210).
attends(517, im210).
attends(476, im209).
attends(478, im209).
attends(480, im209).
attends(481, im209).
attends(482, im209).
attends(484, im209).
attends(485, im209).
attends(487, im209).
attends(488, im209).
attends(489, im209).
attends(490, im209).
attends(492, im209).
attends(493, im209).
attends(495, im209).
attends(496, im209).
attends(497, im209).
attends(498, im209).
attends(499, im209).
attends(500, im209).
attends(504, im209).
attends(506, im209).
attends(515, im209).
attends(516, im209).
attends(518, im209).
attends(476, im216).
attends(478, im216).
attends(484, im216).
attends(487, im216).
attends(491, im216).
attends(492, im216).
attends(493, im216).
attends(496, im216).
attends(498, im216).
attends(501, im216).
attends(502, im216).
attends(504, im216).
attends(505, im216).
attends(507, im216).
attends(509, im216).
attends(512, im216).
attends(513, im216).
attends(514, im216).
attends(515, im216).
attends(479, im214).
attends(480, im214).
attends(482, im214).
attends(483, im214).
attends(485, im214).
attends(486, im214).
attends(488, im214).
attends(489, im214).
attends(490, im214).
attends(494, im214).
attends(495, im214).
attends(499, im214).
attends(500, im214).
attends(503, im214).
attends(504, im214).
attends(505, im214).
attends(506, im214).
attends(520, im214).
attends(507, im214).
attends(508, im214).
attends(510, im214).
attends(516, im214).
attends(517, im214).
attends(518, im214).
attends(480, im212).
attends(483, im212).
attends(486, im212).
attends(501, im212).
attends(502, im212).
attends(503, im212).
attends(506, im212).
attends(520, im212).
attends(509, im212).
attends(510, im212).

% ASSISTING PREDICATES

/* permute_courses/4
   permute_courses(Courses, Week1, Week2, Week3)
   Succeeds if the the courses in Week1, Week2 and Week3 are a possible
   permutation and split of the list Courses. Generate a possible
   permutation given a list of 8 courses and split it into two lists of
   3 and one list of 2.
*/
permute_courses(Courses, Week1, Week2, Week3) :-
    permutation(Courses, Permutations), % Generate all permutations
    split_permutations(Permutations, Week1, Week2, Week3). % Split the permutations into two lists of 3 and one list of 2

/*  split_permutations/4
    split_permuations(OriginalList, Sublist1, Sublist2, Sublist3)
    Succeeds if the the courses in Sublist1, Sublist2, Sublist3 are a possible
    split of the list of Courses. Split permutations into two lists of 3
    and one list of 2
    */
split_permutations([C1, C2, C3, C4, C5, C6, C7, C8|_], [C1, C2, C3], [C4, C5, C6], [C7, C8]).

/* attends_all/2
   attends_all(Student, Week)
   Succeeds if the Student attends all the courses in a given list.
   It seperates the first course from the list and checks the student
   using attends/2. Then it recursively calls itself using the
   remainder of the list. It ends when the list of courses is empty.
   */
attends_all(_, []). % Recursion ending condition.
attends_all(Student, [Course | Rest]) :-
    attends(Student, Course),
    attends_all(Student, Rest).

/*split_week_courses/4
  split_week_courses([C1,C2,C3],C1,C2,C3)
  Succeeds if the the courses in List match the courses in the
  seperate variables. Split list in three variables using unification.
 */
split_week_courses([C1,C2,C3], C1, C2, C3). % Split a week's list into seperate variables

/*split_week_courses/3
  split_week_courses([C1,C2], C1,C2)
  Succeeds if the the courses in List match the courses in the
  seperate variables. Split list in two variables using unification.
 */

split_week_courses([C1,C2], C1, C2).

/* score_half_week/2
   score_half_week(Week, Score)
   Succeeds if the week given has a score equal to Score.
   Score is the score sum of the whole week.First it splits the week of
   courses into seperate variables. Then it sums up the score for each
   occasion with the use of multipliers and returns it. This is the
   version for a two day week
   */
score_half_week(Week, Score) :-
    split_week_courses(Week, C1, C2), % Seperate variables
    count_attendance(C1, C2, Count1, Count2, Count3), % Return counts for each occasion.
    Score is Count1 + Count2 * 7 + Count3 * 7. % Score formula

/* count_attendance/5
   count_attendance(C1, C2, Count1, Count2, Count3)
   Succeeds if the given courses match the occasion counters.
   Each counter is for a different occasion on how many and which
   courses of the week a student attends. Each counter is the amount of
   students that match its specific occasion.This is the
   version for a two day week
   */
count_attendance(C1, C2, Count1, Count2, Count3) :-
    aggregate_all(count, (attends(S,C1), attends(S,C2)),Count1 ), % Attends both courses
    aggregate_all(count, (attends(S,C2), not(attends(S,C1))), Count2), % Attends only second course
    aggregate_all(count, (attends(S,C1), not(attends(S,C2))),Count3 ). % Attends only first course

/* score_week/2
   score_week(Week, Score)
   Succeeds if the week given has a score equal to Score.
   Score is the score sum of the whole week. First it splits the week of
   courses into seperate variables. Then it sums up the score for each
   occasion with the use of multipliers and returns it. This is the
   version for a three day week
   */
score_week(Week, Score) :-
    split_week_courses(Week, C1, C2, C3), % Seperate variables
    count_attendance(C1, C2, C3, Count0, Count1, Count2, Count3, Count4, Count5, Count6),  % Return counts for each occasion.
    Score is Count1 + Count2 + Count3 * 3 + Count4 * 7 + Count5 * 7 + Count6 * 7 + Count0 * (-7). % Score formula

/* count_attendance/10
   count_attendance(C1, C2, C3, Count0, Count1, Count2, Count3, Count4, Count5, Count6)
   Succeeds if the given courses match the occasion counters.
   Each counter is for a different occasion on how many and which
   courses of the week a student attends. Each counter is the amount of
   students that match its specific occasion. This is the
   version for a three day week.
   */
count_attendance(C1, C2, C3, Count0, Count1, Count2, Count3, Count4, Count5, Count6) :-
    aggregate_all(count, (attends(S, C1), attends(S, C2), attends(S, C3)), Count0), % Attends all courses
    aggregate_all(count, (attends(S, C1), attends(S, C2), not(attends(S, C3))), Count1), % Attends only the two first courses
    aggregate_all(count, (attends(S, C2), attends(S, C3), not(attends(S, C1))), Count2), % Attends only the two last courses
    aggregate_all(count, (attends(S, C1), attends(S, C3), not(attends(S, C2))), Count3), % Attends only the first and last courses
    aggregate_all(count, (attends(S, C1), not(attends(S, C2)), not(attends(S, C3))), Count4), % Attends only the first course
    aggregate_all(count, (attends(S, C2), not(attends(S, C1)), not(attends(S, C3))), Count5), % Attends only the second course
    aggregate_all(count, (attends(S, C3), not(attends(S, C1)), not(attends(S, C2))), Count6). % Attends only the last course


 % EXERCISE PREDICATES

/* schedule/3
   schedule(A,B,C).
   Succeeds if there is a unique permutation of courses throughtout
   the schedule. A is the first week with 3 unique courses. B is the
   second week with 3 unique courses. C is the third week with 2 unique
   courses. If the arguments given are variables it will return all
   possible combinations through backtracking. If its given three lists
   of courses (2 lists of three, 1 list of two) it will validate if its
   a possible combination.
*/
schedule(A,B,C) :-
    findall(Course,attends(_,Course),CoursesList), % Extract all the courses from the attends/2 facts and put them in a list
    sort(CoursesList, Sorted), % Sort the list
    msort(Sorted, Result), % Remove duplicates
    permute_courses(Result,A,B,C). % Create permutations

/* schedule_errors/4
   schedule_errors(A,B,C,E).
   Succeeds if the schedule given has a number of errors equal to E.
   E is the final error sum where an error is a student having three
   classes in a three day week. It first checks if the schedule given is
   valid and then calculates the number of errors for each week
   seperately before returning the sum.  If the arguments given are variables
   it will return all possible schedules and their errors through
   backtracking.
*/
schedule_errors(A,B,C,E) :-
    schedule(A,B,C), % Check if valid schedule
    aggregate_all(count,attends_all(_,A),Count1), % Count all students that attend all courses in week.
    aggregate_all(count,attends_all(_,B),Count2),
    % We dont bother with week C since it only has two courses
    E is Count1 + Count2.

/* minimal_schedule_errors/4
   minimal_schedule_errors(A,B,C,E).
   Succeeds if the schedule given has the minimal possible number of
   errors out of all schedules. E is the final error sum where an
   error is a student having three classes in a three day week. It first
   makes a list of error counts out of all the schedules and keeps the
   lowest number. Then it checks if the lowest is equal to number E. If
   the arguments given are variables it will return all possible
   schedules that have errors equal to the minimal possible.
*/
minimal_schedule_errors(A, B, C, E) :-
    findall(Error,schedule_errors(A, B, C, Error),Errors), % Gather the amount of errors for every possible schedule and put them in a list
    min_list(Errors, E),  % Find minimum error value and put it in E
    schedule_errors(A, B, C, E). % Return schedules that have the minimal amount of errors (=E)

/* score_schedule/4
   score_schedule(A,B,C,S).
   Succeeds if the schedule given has a score equal to S.
   S is the score sum of the whole week. It first checks if the schedule
   given is a valid schedule that has the minimal possible amount of
   errors since errors are more important than score. Then it
   calculates the score for each week seperately before
   returning the sum. If the arguments given are variables it will
   return all possible minimal error schedules and their scores through
   backtracking.
*/
score_schedule(A,B,C,S) :-
    minimal_schedule_errors(A,B,C,_), % Check if valid schedule. Since having a minimal amount of
    %  errors is more important than the score, we only bother scoring schedules with the minimal amount of errors.
    score_week(A,ScoreA), % Return score of week A
    score_week(B,ScoreB), % Return score of week B
    score_half_week(C,ScoreC), % Return score of week C
    S is ScoreA + ScoreB +ScoreC. % S is the combined score of all three weeks

/* maximum_score_schedule/4
   maximum_score_schedule(A,B,C,E,S).
   Succeeds if the schedule given has the minimal possible number of
   errors out of all schedules and the highest score out of all minimal
   error schedules. E is the final error sum where an error is a
   student having three classes in a three day week. S is the score sum of the whole week.
   It first makes a list of scores out of all the minimal error
   schedules and keeps the highest number. Then it checks if the lowest
   error count is equal to number E before checking if the highest
   score is equal to S. If the arguments given are variables it will
   return all possible minimal error schedules that have the highest
   score.
*/
maximum_score_schedule(A,B,C,E,S) :-
    findall(Score, score_schedule(A,B,C,Score), Scores), % Put all possible scores of schedules with the minimal amount of errors in a list
    max_list(Scores, S), % Find the biggest possible value.
    minimal_schedule_errors(A,B,C,E), %Return all schedules that have minimal errors
    score_schedule(A,B,C,S). % Return all schedules that the biggest score.


