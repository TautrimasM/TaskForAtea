using System;

namespace LongestWord
{
    class Program
    {
        static void Main(string[] args)
        {
            string[] words = new string[] {"I", "like", "Hello", "World", "!"};
            Console.WriteLine(LongestWord(words));
            // Expected output:
            // Hello
        }

        // Returns the first longest word in the string array
        public static string LongestWord(string[] words)
        {
            if(words.Length == 0)
            {
                return "Array is Empty";
            }
			int maxLength = 0;
			int index = 0;

            for (int i = 0; i < words.Length; i++)
			{
				if (words[i].Length > maxLength)
				{
					maxLength = words[i].Length;
					index = i;
				}
			}

			string returnWord = words[index];
            return returnWord;
        }
    }
}
