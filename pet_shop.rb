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