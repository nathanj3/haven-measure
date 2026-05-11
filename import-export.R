path <- 'https://github.com/nathanj3/haven-measure/blob/2089b10cc23470688da3054f9a99f08bbe96f0fe/haven_measure_original.sav'
df <- haven::read_sav(path)

# ID and Rating were both read in as numeric
df

# 'Measure' is not an attribute we can access
attributes(df$Rating)

# Rating (ordinal with labels) converts to a factor, but ID (nominal, no labels) does not convert
df2 <- haven::as_factor(df)
df2

# Using `only_labelled = FALSE` would convert ALL variables - which we don't want
haven::as_factor(df, only_labelled = FALSE)

# After exporting, ID becomes 'scale' and Rating becomes 'nominal'
haven::write_sav(df2, '~/haven_labelled_export.sav')
