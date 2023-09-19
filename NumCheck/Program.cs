using System;

namespace NumCheck
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine(NumCheck(1, 2));
            Console.WriteLine(NumCheck(-1, 2));
            Console.WriteLine(NumCheck(1, -2));
            Console.WriteLine(NumCheck(-1, -2));
            Console.WriteLine(NumCheck(0, -2));

            // Expected output:
            // False
            // True
            // True
            // False
            // True
        }

        // Returns true if only one number is negative
        // In other cases returs false 
        public static bool NumCheck(int num1, int num2)
        {
            return num1 < 0 ^ num2 < 0;
        }
    }
}