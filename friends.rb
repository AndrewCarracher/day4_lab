# 1.

def get_name(person)
  return person[:name]
end

# .2
def get_tv_show(person)
  return person[:favourites][:tv_show]
end


# .3
def check_fav_food(person, food)
    snack = person[:favourites][:snacks]
    if snack == food
      return true
    else
      return false
    end
end

# .4

def friends_add(person, friend)
  person[:friends].push(friend)
end

# .5

def friends_delete(persons, friend)
    persons[:friends].delete(friend)
end

# .6

def test_money(people)
    money = 0

    for person in people
      money += person[:monies]
    end

    return money
end



#
# .7
def lend_money(lender, lendee, amount)
lender[:monies] += amount
lendee[:monies] -= amount

end
# .8

def all_fav_food(people)
  result = []

  for person in people
    for snack in person[:favourites][:snacks]
      result.push(snack)
    end
  end
  result = result.sort
  return result
end

#9

def all_friend (people)
  no_mates = []

  for person in people
    if person[:friends].length == 0
      no_mates.push(person)
    end
  end
    return no_mates
end
