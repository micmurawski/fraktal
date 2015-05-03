from distutils.core import setup  
from distutils.extension import Extension  
from Cython.Distutils import build_ext
from Cython.Build import cythonize
      
setup(  
	name = 'Fractal',  
	ext_modules=[  
	Extension('c_fractal', ['c_fractal.pyx'])  
	],  
	cmdclass = {'build_ext': build_ext}  
	)  