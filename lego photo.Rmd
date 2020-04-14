```{r}
library(brickr)
library(jpeg)
library(tidyverse)
library(dplyr)
```

```{r}
#photo <- jpeg::readJPEG("~/xmen.jpeg")
#writePNG(photo, "xmen.png")
```

```{r}
mosaic <- png::readPNG("~/xmen.png") %>% 
  image_to_mosaic(use_bricks = c("4x6", "2x4", "1x2", "1x1"))

mosaic %>% build_mosaic()
```

```{r}
mosaic <- png::readPNG("~/xmen.png") %>% 
  image_to_mosaic(contrast = 1.1,
                  use_bricks = c("4x6", "2x4", "1x2", "1x1")) %>% bricks_from_mosaic()

mosaic %>% build_bricks()
```

```{r}
ironman <- png::readPNG("~/ironman.png") %>% 
  image_to_mosaic(brightness = 1.1,
                  contrast = 1.1,
    use_bricks = c("4x6", "2x4", "1x2", "1x1")) %>% bricks_from_mosaic()

ironman %>% build_bricks()
```
