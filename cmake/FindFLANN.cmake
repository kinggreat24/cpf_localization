# - Try to find ANN
# Once done this will define
#  
# ANN_FOUND           - system has UTIL
# ANN_INCLUDE_DIR - theUTIL include directory
# ANN_LIBRARY         - Link these to use UTIL
# ANN_LIBRARY_DIR  - Library DIR of UTIL
#   

#IF (FLANN_INCLUDE_DIR)
 #SET(FLANN_FIND_QUIETLY TRUE)
#ENDIF (FLANN_INCLUDE_DIR)


               
#FIND_PATH(FLANN_INCLUDE_DIR flann/flann.hpp
	#  PATHS "/media/desktop/1TB/documents/flann-1.6.11-src/src/cpp"
    #            )                
                
FIND_PATH(FLANN_INCLUDE_DIR flann/flann.hpp
	  PATHS " /usr/local/include"
                )   


set( LIBDIR lib64 )

if( FLANN_INCLUDE_DIR )
   set( FLANN_FOUND TRUE )

   #set( FLANN_LIBRARY_DIR "/media/desktop/1TB/documents/flann-1.6.11-src/build/lib" )
set( FLANN_LIBRARY_DIR "/usr/local/lib64" )
   set( FLANN_LIBRARY optimized flann_cpp debug flann_cpp )

ELSE (FLANN_INCLUDE_DIR)
   SET(FLANN_FOUND FALSE )
ENDIF (FLANN_INCLUDE_DIR )

