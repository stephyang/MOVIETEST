//
//  Allmovie.swift
//  MOVIETEST
//
//  Created by stephanie yang on 2016/3/28.
//  Copyright © 2016年 stephanie yang. All rights reserved.
//

import Foundation

class Allmovie {
    var arrayMovies: [Movie] = []
    
    init() {
        
        let movie1: Movie = Movie()
        movie1.movieImage = "movie1"
        movie1.movieName = "動物方程式"
        movie1.movieDate = "上映日期：2016-02-26"
        movie1.movieDetail = "動物方城市裡沒有人類的存在，也就如同一般的大都會，彷彿一個種族的大熔爐，在這個只有哺乳類動物存在的城市裡，獵物與獵食者處於一個巧妙的平衡。不過在這個看似相安無事的世界裡，似乎正醞釀著一個足以動搖平衡的陰謀…富有正義感的菜鳥女警官必須要與一隻狡詐的狐狸聯手辦案，解決動物方城市中最大的危機…"
        
        let movie2: Movie = Movie()
        movie2.movieImage = "movie2"
        movie2.movieName = "麵包超人電影版：咪嘉與魔法神燈"
        movie2.movieDate = "上映日期：2016-04-01"
        movie2.movieDetail = "奶油麵包小弟與藍精靈撿到了不可思議的神燈。從神燈裡出現了神燈精靈咪嘉，咪嘉向他們施加了魔法，3人一起進入了神燈世界玩，可是，魔法手環卻壞掉了，奶油麵包小弟跟藍精靈無法回到原本的世界。想要修好魔法手環，就必須到達遙遠的「魔法之泉」。 3人明明應該同心協力前進，一路上卻爭執不斷…。麵包超人為了救他們也進入了神燈世界，但是，細菌人也為了獲得魔法的力量朝著他們而來…!?"
        
        arrayMovies = [movie1, movie2]
        
    }
}