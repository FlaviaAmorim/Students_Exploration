/*:
## Exercise: Goals

Think of a goal of yours that can be measured in progress every day, whether it’s minutes spent exercising, number of photos sent to friends, hours spent sleeping, or number words written for your novel.

 - callout(Exercise): Create an array literal with 20 to 25 items of sample data for your daily activity. It may be something like `let milesBiked = [3, 7.5, 0, 0, 17 ... ]` Feel free to make up or embellish the numbers, but make sure you have entries that are above, below and exactly at the goal you've thought of. _Hint: Make sure to choose the right kind of array for your data, whether `[Double]` or `[Int]`._
 */
//meta: vendas de produto diario


var metaVendaProduto = [4,5,3,8,10,15,20,23,32,35,43,2,6,7,11,12,13,17,19,35]
var highMeta = 35
//:  - callout(Exercise): Write a function that takes the daily number as an argument and returns a message as a string. It should return a different message based on how close the number comes to your goal. You can be as ambitious and creative as you'd like with your responses, but make sure to return at least two different messages depending on your daily progress!
func meta(produto: Int) -> String {
        if produto < highMeta {
            return ("Voce não atingiu a meta! Tente melhorar!")
        } else if produto == highMeta {
            return ("Parabens!!  Meta atingida!! 🥳")
        } else {
            return ("Você se superou! Continue assim.")
        }
    }
//:  - callout(Exercise): Write a `for…in` loop that iterates over your sample data, calls your function to get an appropriate message for each item, and prints the message to the console.
for item in metaVendaProduto {
    print(meta(produto: item))
}
/*:
[Previous](@previous)  |  page 16 of 18  |  [Next: Exercise: Screening Messages](@next)
 */
