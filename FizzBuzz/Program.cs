using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;

namespace FizzBuzz
{
    class Program
    {
        static void Main(string[] args)
        {
            int number = GetNumber();

            PrintFizzBuzz(number);

            Exit();
        }

        private static int GetNumber()
        {
            int number;
            string input = CaptureInput();

            if (!int.TryParse(input, out number))
            {
                Console.WriteLine($"Invalid Input: {input}");
                return 0;
            }
            {
                return number;
            }
        }

        private static string CaptureInput()
        {
            return Console.ReadLine();
        }

        private static void PrintFizzBuzz(int number)
        {
            //If divisible by 3 print Fizz
            if (number % 3 == 0)
            {
                Console.Write("Fizz");
            }

            //if divisible by 5 print buzz
            if (number % 5 == 0)
            {
                Console.Write("Buzz");
            }

            if (number % 3 != 0 && number % 5 != 0)
            {
                Console.Write(number);
            }
        }

        private static void Pause(int seconds)
        {
            TimeSpan timeSpan = new TimeSpan(0, 0, seconds);
            Thread.Sleep(timeSpan);
        }

        private static void Exit()
        {
            Console.WriteLine("");
            Console.WriteLine("Exiting the program");
            Pause(2);
            Environment.Exit(0);
        }
    }
}
