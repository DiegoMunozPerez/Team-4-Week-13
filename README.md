# Lab 11 - Counters and Dividers

In this lab, we learned how to make clock dividers from two types of counters.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?

It divides by 2 * Count because once it detects 6 it will remian high unitl the next six cycles but since both systems are positive edge the output that reads the moduloo counter is off by a factor of two because of the small delay form when the moduloo hits and the clock cylce is high.

### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?

It goes to all 1 s on the first cylcle becasue it gives us a known strting value at all times, we then know when a full cylcle ends.

### 3 - What width of ring counter would you use to get to an output of ~1KHz?

you would need 10 bits to reach a output of ~1KHz.

