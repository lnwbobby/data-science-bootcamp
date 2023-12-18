

hello_pizza = function(){
  pizza_list = c("hawaiian","pepperoni","margherita")
  pizza_price = c(129,159,199)
  order_type = list()
  order_quantity = list()
  order_type_current = ""
  order_quantity_current = ""
  total_price=0
  print("Hello Pizza,What do you want")
  flush.console()
  while(TRUE){
    action=readline("1.Order 2.check the order 3.bill&exit : ")
    if(action==1){
      print(paste0(pizza_list," : ",pizza_price," $"))
      flush.console()
      
      while(!order_type_current %in% pizza_list){
        order_type_current = tolower(readline("What do you want? : "))

      }
      while(!(is.numeric(order_quantity_current) && !is.na(order_quantity_current)) ){
        order_quantity_current=as.numeric(readline("How many whole pizzas do you want? : "))
      }
      order_type=append(order_type,order_type_current)
      order_quantity=append(order_quantity,order_quantity_current)
      
      
      order_quantity_current=""
      order_type_current=""
    }else if(action==2){
      print(paste0(order_type," : ",order_quantity," "))
      flush.console()
      for (i in seq_along(order_type)){

        total_price = total_price+ pizza_price[[which(pizza_list==order_type[i])]]*order_quantity[[i]]
      }
      print(paste0("Total_price is ",total_price," dollar"))
      flush.console()
      
      
    }else if(action==3){
      print(paste0("Total_price is ",total_price," dollar"))
      flush.console()
      print("Have a good day.")
      flush.console()
      break
    }
  }
  
}




hello_pizza()

