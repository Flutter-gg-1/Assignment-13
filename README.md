

# Assignment-13


in this   Assignment there is two page one for textfield and other for the card




### textfield page (HomePage)

in this page is done with using Form widget and globalKey for validat text this the main widget that has been used to done that



- Form() : widget is used to take globalKey to then be used to validat all TextFormField 


- TextFormField() : same is TextField but with atrbuit called validator that used to add method to check if tex is passed the test or not


- TexFieldWidget() : custuom widget that take width and hintTex and hintsize to be used to any TexField and take validMethod for validator atrbuit


    - and to fix validt shrink eorr i use global hight that change if the validator pass or not



- ButtonWidget : custom widget take global key and CardModel to show it data later

    - GestureDetector for user tap that have some logic like check form globalKey that all textfield pass the test

    - showDialog for showing Dialog in the screen using Container and Stack




---


### CardModel


class that hold all card info and have this method 


- cardYearMonth and format card year and month

- cardNumerFormat mehtod to and space after evry 4 number by check the reminder of divdie by for if eq 0 and if not reach the end of the card numer then add space
