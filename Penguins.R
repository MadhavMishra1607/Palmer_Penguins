View(penguins)
ggplot(data = penguins)+
  geom_point(mapping = aes(x =body_mass_g, y = flipper_length_mm,color =species, shape = species,alpha= species))

ggplot(data = penguins)+
  geom_point(mapping = aes(x =body_mass_g, y = flipper_length_mm),color ="purple")

ggplot(data = penguins)+
  geom_smooth(mapping = aes(x =body_mass_g, y = flipper_length_mm))+
  geom_point(mapping = aes(x =body_mass_g, y = flipper_length_mm))
  
ggplot(data = penguins)+
  geom_smooth(mapping = aes(x =body_mass_g, y = flipper_length_mm,linetype = species))
  
view(diamonds)
ggplot(data =diamonds)+
  geom_bar(mapping = aes(x=cut,fill= clarity))
 
ggplot(data = penguins)+
  geom_smooth(mapping = aes(x =body_mass_g, y = flipper_length_mm))+
  geom_point(mapping = aes(x =body_mass_g, y = flipper_length_mm,color =species, shape = species,alpha = species)) 

ggplot(data = penguins, aes(x= body_mass_g , y =flipper_length_mm))+
  geom_point(aes(color=species, shape = species))+
  facet_wrap(~species)

ggplot(data=penguins)+
  geom_point(mapping = aes(x= body_mass_g , y =flipper_length_mm,color =species))+
  facet_grid(~sex)

ggplot(data=penguins)+
  geom_point(mapping = aes(x= body_mass_g , y =flipper_length_mm,color =species))+
  facet_grid(~sex)+
  labs(title = "Palmer Penguins: Data vs Flipper Length",subtitle = "Sample of three penguin species", caption = "Data Collected by Dr. Kristen Gorman")

p <- ggplot(data=penguins)+
  geom_point(mapping = aes(x= body_mass_g , y =flipper_length_mm,color =species))

p +labs(title = "Palmer Penguins: Data vs Flipper Length",subtitle = "Sample of three penguin species", caption = "Data Collected by Dr. Kristen Gorman")+
  annotate("text",x = 5500,y=205,label = "Gentoos are the largest")

              