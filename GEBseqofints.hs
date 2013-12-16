sq :: (Integral a) => a -> [(a, a)]
sq    k
    | k == 0     = [(1, 2)]
    | otherwise  = (a, if elem nextn (a:((fst . unzip) hist)) then nextn+1 else nextn):hist
    where hist = sq (k-1)
          prev = head $ hist
          a = fst prev + snd prev
          nextn = snd prev + 1

p k = reverse $ (fst . unzip) $ sq k
n k = reverse $ (snd . unzip) $ sq k