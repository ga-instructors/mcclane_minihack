class Joke
  def joke_array
   ["['hip','hip'] (hip hip array!)", 
   "Q: Whats the object-oriented way to become wealthy? A: Inheritance",
   "Q: How do you tell an introverted computer scientist from an extroverted computer scientist? 
   A: An extroverted computer scientist looks at your shoes when he talks to you.",
   "Q: Why do programmers always mix up Halloween and Christmas? A: Because Oct 31 == Dec 25!",
   "“Knock, knock.” “Who’s there?” very long pause…. “Java.”",
   "A SQL query goes into a bar, walks up to two tables and asks, 'Can I join you?'",
   "Q: how many programmers does it take to change a light bulb? A: none, that's a hardware problem",
   "When your hammer is C++, everything begins to look like a thumb.",
   "If you put a million monkeys at a million keyboards, one of them will eventually write a Java program.The rest of them will write Perl programs.",
   "Programming is like sex: One mistake and you have to support it for the rest of your life.",
   "Q: How many prolog programmers does it take to change a lightbulb? A: Yes.",
   "To understand what recursion is, you must first understand recursion.",
   "There are 10 types of people in the world. Those who understand binary and those who have regular sex.",
   "Unix is user friendly. It's just very particular about who its friends are.",
   "A wife calls her programmer husband and tells him, While youre out, buy some milk. He never returns home.",
   "Can you believe Mozart wrote his 1785 Piano Concerto No. 21 in C? I can't imagine compiling back then!",
   "Two JavaScript variables are in a bar. I'm sorry I cannot be with you, your so not my Type., one says. The other Recasts and they lived happily ever after.",
   "And the bartender says, Success, but youre not ready! So a JavaScript function walks into a bar."
 ]
end
 def random
  joke_array[rand(joke_array.length)]
 end

end