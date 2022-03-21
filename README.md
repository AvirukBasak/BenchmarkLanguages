# Benchmark Languages
Speed comparison b/w languages

## Run
To see speed comparion, clone this repository and go through `run.sh`.
Comment out languages you don't wish to check. Then install the appropriate compilers / runtimes.
Then, run `run.sh`.

## Compilers / runtimes
- C: `gcc (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0`
- C++: `g++ (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0`
- PHP: `PHP 7.2.24-0ubuntu0.18.04.11 (cli) (built: Mar  2 2022 17:52:35) ( NTS )`
- C#: `Mono C# compiler version 6.12.0.122`
- C# (mono runtime): `Mono JIT compiler version 6.12.0.122 (tarball Mon Feb 22 17:29:18 UTC 2021)`
- Python: `Python 3.6.9`
- JavaScript: `NodeJS v16.13.0`
- Java (compiler): `javac 1.8.0_292 (openjdk)`
- Java (runtime): `openjdk version "11.0.13" 2021-10-19`
- Bash: `GNU bash, version 4.4.20(1)-release (x86_64-pc-linux-gnu)`

## Warning
Time shown is time taken for language environment to start + the actual time taken for execution.

## Data
```
Language    Time taken (s)

c:          0.003
c++:        0.003
php:        0.058
c#:         0.060
python:     0.107
js:         0.167
java:       0.378
bash:       2.905
```
