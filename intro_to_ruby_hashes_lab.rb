def base_hash
   {:railroads => {}}
end

def monopoly_with_second_tier
  res = base_hash
  res[:railroads] = {pieces: 4, rent_in_dollars: {}, names: {}}
  res
end

def monopoly_with_third_tier
  res = monopoly_with_second_tier
  res[:railroads][:rent_in_dollars] = {one_piece_owned: 25, two_pieces_owned: 50, three_pieces_owned: 100, four_pieces_owned: 200}
  res[:railroads][:names] = {reading_railroad: {}, pennsylvania_railroad: {}, b_and_o_railroad: {}, shortline_railroad: {}}
  res

end

def monopoly_with_fourth_tier
  res = monopoly_with_third_tier
  res[:railroads][:names][:reading_railroad] = {mortgage_value: 100}
  res[:railroads][:names][:pennsylvania_railroad] = {mortgage_value: 200}
  res[:railroads][:names][:b_and_o_railroad] = {mortgage_value: 400}
  res[:railroads][:names][:shortline_railroad] = {mortgage_value: 800}
  res

end

