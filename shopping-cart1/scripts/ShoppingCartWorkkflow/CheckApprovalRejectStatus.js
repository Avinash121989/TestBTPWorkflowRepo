


// read user task information
var lastUserTask1 = $.usertasks.usertask1.last;
var userTaskSubject = lastUserTask1.subject;
var userTaskProcessor = lastUserTask1.processor;
var userTaskCompletedAt = lastUserTask1.completedAt;
var userDecision = lastUserTask1.decision;


//Put the values in Context
$.context.lastUserTask1 = lastUserTask1;
$.context.userTaskSubject = userTaskSubject;
$.context.userTaskProcessor = userTaskProcessor;
$.context.userTaskCompletedAt = userTaskCompletedAt;
$.context.userDecision = userDecision;
