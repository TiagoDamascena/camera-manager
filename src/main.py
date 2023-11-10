import os
import gphoto2 as gp
camera = gp.Camera()
camera.init()
text = camera.get_summary()
print(text)
file_path = camera.capture(gp.GP_CAPTURE_IMAGE)
print('Camera file path: {0}/{1}'.format(file_path.folder, file_path.name))
target = os.path.join('/Users/renatoleal/Desktop', file_path.name)
camera_file = camera.file_get(file_path.folder, file_path.name, gp.GP_FILE_TYPE_NORMAL)
camera_file.save(target)
camera.exit()