ECE_281-lab2(PRELAB ASSIGMENT)
============




##TRUTH TABLE(from the lab notebook)

| A | B |Cin| S |Cout|
|---|---|---|---|----|
| 0 | 0 | 0 | 0 | 0  |
| 0 | 0 | 1 | 1 | 0  |
| 0 | 1 | 0 | 1 | 0  |
| 0 | 1 | 1 | 0 | 1  |
| 1 | 0 | 0 | 1 | 0  |
| 1 | 0 | 1 | 0 | 1  |
| 1 | 1 | 0 | 0 | 1  |
| 1 | 1 | 1 | 1 | 1  |


##Truth table (internet source to make sure if mine is correct)

![alt tag](http://s27.postimg.org/ymgnjober/fulladd.gif)

##Circuit Schematics

![alt tag](http://s12.postimg.org/r477rdkl9/300px_1_bit_full_adder_svg.png)
![alt tag](http://s9.postimg.org/dzq2mwotr/1_bit_adder_1318310926_462_207.png)


##Screenshot of testbench

![alt tag](http://s3.postimg.org/wqmnx4l9f/lab_2d_jn_testbench.png)

##Debugging log
I did not face any big challanges yet in this lab.

##Documentation statement:
Graphicas taken from pages below:

http://en.wikibooks.org/wiki/Microprocessor_Design/Add_and_Subtract_Blocks

http://hyperphysics.phy-astr.gsu.edu/hbase/electronic/fulladd.html

http://www.eeweb.com/electronics-quiz/ripple-carry-adder-logic

#ECE 281 - LAB2 (LAB)

##Final circuit desing

![alt tag](http://s9.postimg.org/ew2hy2qsf/2014_02_13_20_56_10.jpg)

##Testbench screenshot

![alt tag](http://s27.postimg.org/3v2xjo003/screenshot_final.png)

####Error log
The first error occured while I was trying to check the syntax of the four bit adder. It was a few stupid mistakes like forgetting to add PORT in before component or ":" instead of "=>".
The second syntax challenge was with " and '. I had to do research in google of when to use which.
The third challange occured while I was doing a test bench for the four bit adder. I had to google how to do loops. I used the design from this website "http://www.seas.upenn.edu/~ese171/vhdl/VHDLTestbench.pdf"

