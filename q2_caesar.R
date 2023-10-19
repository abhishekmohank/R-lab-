charAt <- function(sentence,index){
    c <- substr(sentence,index,index)
}

caeser_cipher <- function(sentence,shift){
  for (i in 1:nchar(sentence)) {
    if (tolower(charAt(sentence, i)) %in% letters) {
      alphabet <- tolower(charAt(sentence, i))
      position <- which(letters %in% alphabet) + shift
      if (position > 26) {
        position <- position - 26
      }
      if (i - 1 < 1) {
        sentence <- paste0(
          letters[position], substr(sentence, i + 1, nchar(sentence)
          )
        )
      } else {
        sentence <- paste0(
          substr(sentence, 1, i - 1),
          letters[position],
          substr(sentence,
          i + 1,
          nchar(sentence)))
      }
    } else {
      next
    }
  }
  return(sentence)
}
cat("Enter your sentence : ")
sentence <- readline()

cat("Enter the shift : ")
shift <- readline()

shift <- as.numeric(shift)

shifted_sentence <- caeser_cipher(sentence, shift)


cat("Before Caeser Cipher Encryption : ", sentence, "\n")

cat("After Caeser Cipher Encryption : ", shifted_sentence)
