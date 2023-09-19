using System;

namespace Add
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine(Add(123, 4567));
            // Expected output: 
            // 1234567
        }

        // Returns numerals addition of two integers
        public static int Add(int num1, int num2)
        {   
            string addedAsString = num1.ToString() + num2.ToString();
            int added = int.Parse(addedAsString);
            return added;
        }
    }
}
