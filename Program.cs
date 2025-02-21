namespace C_CALC
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Do you want to continue claculating?");
            string question = Console.ReadLine();
            while (question.ToLower() == "yes") {

                double result = 0.0;
                Console.WriteLine("enter the first number: ");
                double num1 = Convert.ToDouble(Console.ReadLine());
                Console.WriteLine("enter the second number: ");
                double num2 = Convert.ToDouble(Console.ReadLine());
                Console.WriteLine("enter an operator: ");
                char opreator = Convert.ToChar(Console.ReadLine());
                if (opreator == '+')
                {
                    result = num1 + num2;
                    Console.WriteLine("number1 +number2= " + result);
                }
                else if (opreator == '-')
                {
                    result = num1 - num2;
                    Console.WriteLine("number1 -number2= " + result);
                }
                else if (opreator == '*')
                {
                    result = num1 * num2;
                    Console.WriteLine("number1 * number2= " + result);
                }
                else if (opreator == '/')
                {
                    if (num2 == 0) {
                        Console.WriteLine("zero dividion erorr!!");
                            }
                    else {
                        result = num1 / num2;
                        Console.WriteLine("number1 / number2= " + result);
                    }
                }
                else {
                    Console.WriteLine("enter a valid operator!!");
                        }
                
                Console.Beep();
            }
        }
    }
}
