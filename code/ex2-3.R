# excercise 02
?is_complete
?all_complete


# a
rules <- validator(
  is_complete(id),
  is_complete(id, turnover)
)

# validate
result.2 <- confront(SBS2000, rules)

# show summary
summary(result.2)


# b
rules.b <- validator(
  total.rev - total.costs == profit,
  turnover + other.rev == total.rev,
  total.rev * 0.6 <= profit
)

# validate
result.b <- confront(SBS2000, rules.b)

summary(result.b)


# c
# rule.c <- validator(
#   if ()
# )
# ????

# Exercise 3
rules.3 <- validator(.file = "./code/rules.R")

# c
names(rules.3) <- c("BRO1", "BRO2", "BRO3")
names(rules.3)
label(rules.3[3]) <- "profit def"
print(rules.3)

# d
export_yaml(rules.3, "br.yml")
