f :: [Int] -> Int
f list =
    let after_skip = skip_init_le_zero list in
    case after_skip of
        (x:xs) ->
            let target = 2 * x in
            let first_gt_target = find_gt xs target in
            3 * first_gt_target

skip_init_le_zero :: [Int] -> [Int]
skip_init_le_zero [] = []
skip_init_le_zero (x:xs) =
    if x <= 0 then skip_init_le_zero xs else (x:xs)
find_gt :: [Int] -> Int -> Int
find_gt (x:xs) target =
    if x <= target then find_gt xs target else x
