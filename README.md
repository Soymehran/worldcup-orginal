# worldcup
### **SQL Queries for World Cup Database**  

#### **1. Players with "pir" in Their Name or Surname**  
Retrieve a list of players whose first name or surname contains "pir". The result should include:  
- `family_name`: Last name of the player  
- `name`: First name of the player  
Sort the results in ascending order by `family_name`.  

#### **2. Most Frequent Shirt Numbers**  
Retrieve the count of shirt numbers that have been worn more than 1000 times in matches. The result should include:  
- `shirt_number`: The jersey number  
- `count_shirt_number`: The number of times the shirt number has been worn  
Sort the results in descending order by `count_shirt_number`.  

#### **3. Players Who Won Both Young and Senior Awards**  
Retrieve a list of players who have won both the **Best Young Player** award and at least one senior award (**Golden Ball, Silver Ball, Bronze Ball, Golden Boot, etc.**). The result should include:  
- `family_name`: Last name of the player  
- `name`: First name of the player  
Sort the results in ascending order by `family_name`.
