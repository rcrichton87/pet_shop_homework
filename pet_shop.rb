def pet_shop_name(pet_shop_hash)
  shop_name = pet_shop_hash[:name]
end

def total_cash(pet_shop_hash)
  cash = pet_shop_hash[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop_hash, cash_change)
  new_cash = pet_shop_hash[:admin][:total_cash] += cash_change
end

def pets_sold(pet_shop_hash)
  number_pets_sold = pet_shop_hash[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop_hash, number_sold)
  new_total_sold = pet_shop_hash[:admin][:pets_sold] += number_sold
end

def stock_count(pet_shop_hash)
  stock = pet_shop_hash[:pets].length
end

def pets_by_breed(pet_shop_hash, breed_name)
  pets_array = pet_shop_hash[:pets] #array containing all pets
  breed_array = []
  for pet in pets_array #for each individual pet in pets_array
    if pet[:breed] == breed_name #if the animal breed is the breed being checked
      breed_array.push(pet[:breed]) #add it to the breed_array
    end
  end
  return breed_array
end

def find_pet_by_name(pet_shop_hash, search_name)
  pets_array = pet_shop_hash[:pets]
  for pet in pets_array
    if pet[:name] == search_name
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(pet_shop_hash, remove_name)
  pet_to_remove = find_pet_by_name(pet_shop_hash, remove_name)
  pet_shop_hash[:pets].delete(pet_to_remove)
end

def add_pet_to_stock(pet_shop_hash, new_pet)
  pet_shop_hash[:pets].push(new_pet)
end

def customer_pet_count(customer)
  customer[:pets].length
end

def add_pet_to_customer(customer, pet)
  customer[:pets].push(pet)
end