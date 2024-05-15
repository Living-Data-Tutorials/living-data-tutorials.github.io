library(imager)

imgs = list.files("figures/tutorials/original")
new_width = 768
for(f in imgs) {
  img <- load.image(paste0("figures/tutorials/original/", f))
  print(dim(img))
  img_resized <- resize(img, size_x=new_width, size_y = dim(img)[2]*new_width/dim(img)[1] )
  print(dim(img_resized))
  save.image(img_resized, quality=0.9, paste0("figures/tutorials/", f))
}

## resize to 768 px width