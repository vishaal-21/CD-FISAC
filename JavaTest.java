package com.example;

import java.util.Scanner;

public class JavaTest 
{
	int a;


	public static void main() 
	{
		System.out.println("Hello, world!");

		int x = 10, i;
		int y = 20;

		if (x < y) {
			System.out.println("x is less than y");
		} else {
			System.out.println("x is greater than or equal to y");
		}

		for (i = 0; i < 5; i++) {
			System.out.println("Iteration i");
		}

		TestClass obj = new TestClass();
	}
}
