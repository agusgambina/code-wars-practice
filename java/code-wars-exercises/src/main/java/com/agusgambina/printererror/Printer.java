package com.agusgambina.printererror;

// https://www.codewars.com/kata/printer-errors/java

public class Printer {

    public static String printerError(String s) {
        return s.replaceAll("[a-m]", "").length() + "/" + s.length();
    }
}
