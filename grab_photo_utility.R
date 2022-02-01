
photos = Untitled_spreadsheet_Sheet1
mylist = list()

for (val in photos)
{
  mylist <- append(mylist, paste0('_IMG', val, '.JPG'))
  # mylist.append(paste0('_IMG', val))
  # print(paste0('_IMG', val))
}

# /^123456$/ <-- exact string regex pattern (ex: 123456)
# mylist

x <- unlist(mylist)
photo_vector <- as.vector(x)

current_folder <- '/Volumes/AJ 1TB GRY/D7500/Mexico 2021/JPEG/'
new_folder <- '/Volumes/AJ 1TB GRY/D7500/Mexico 2021/r_selections_JPEG/'

# regex_pattern <- paste(photo_vector, collapse = "|")

for (i in photo_vector)
{
  file.copy(paste0(current_folder, i), new_folder)
}
