path <- 'https://github.com/nathanj3/haven-measure/blob/2089b10cc23470688da3054f9a99f08bbe96f0fe/haven_measure_original.sav'
df <- haven::read_sav(path)

# 'Measure' is not an attribute we can access
attributes(df$Rating)
