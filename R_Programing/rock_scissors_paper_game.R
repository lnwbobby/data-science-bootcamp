





#1 2 3
#hammer -1 win -2 lose
#scisor -1 win 1 lose
#paper 2 win 1 lose

game <- function() {
  hands = c("hammer","scissor","paper","q","exit","quit")
  action = FALSE
  score_user = 0
  score_bot = 0
  flush.console()
  
  while(TRUE){
     
    while(!action %in% hands){
    action = tolower(readline("Choose your hand ( hammer ,scissor , paper ) q for exit: "))
    }
    user_hand = which(hands==action)
    bot_hand = which(hands==sample(hands,1))
    result = user_hand-bot_hand
    if(user_hand>3){
      break
    }
    print(paste("Yor hand is",action))
    if(result==0){
      print("Draw")
    }else if(result==-1 | result==2){
      print("YOU WON")
      score_user = score_user +1
    }else{
      print("YOU LOSE")
      score_bot = score_bot + 1
    }
    print(paste("Your score is",score_user,": Bot score is",score_bot))
    action = FALSE

  }
}


game()
