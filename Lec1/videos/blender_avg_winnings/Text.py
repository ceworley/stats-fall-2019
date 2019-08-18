x = bpy.data.objects['Cube']
for i in range(10):
    y = x.duplicate()
    y.location = (i, i, i)