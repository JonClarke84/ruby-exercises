test_tweets = [
  "This president sucks!",
  "I hate this Blank House!",
  "I can't believe we're living under such bad leadership. We were so foolish",
  "President Presidentname is a danger to society. I hate that he's so bad – it sucks."
  ]

banned_phrases = ["sucks", "bad", "hate", "foolish", "danger to society"]

#test each element in test_tweets to see if includes any element from banned_phrases

banned_phrases.each { |word| test_tweets.each { |tweet| tweet.include?(word) ? (tweet[word] = "CENSORED"): () }}

p test_tweets