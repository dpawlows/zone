import register.models as m
r=m.Rank()
r.description='Faculty'
r.save()
r=m.Rank()
r.description='Undergraduate Student'
r.save()
r=m.Rank()
r.description='Graduate Student'
r.save()

p = m.PresentationType()
p.description='Yes'
p.save()
p = m.PresentationType()
p.description='No'
p.save()

