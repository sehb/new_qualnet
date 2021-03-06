set(ALL_INCLUDES CACHE INTERNAL "include directories" FORCE)
macro (add_global_include_dir_absolute)
  set(ALL_INCLUDES ${ALL_INCLUDES} ${ARGN} CACHE INTERNAL "include directories")
endmacro ()
macro (add_global_include_dir)
  foreach (fname ${ARGN})
    if (fname STREQUAL ".")
      add_global_include_dir_absolute(${CMAKE_CURRENT_SOURCE_DIR})
    else ()
      add_global_include_dir_absolute(${CMAKE_CURRENT_SOURCE_DIR}/${fname})
    endif ()
  endforeach ()
endmacro ()

set(ALL_SYSTEM_INCLUDES CACHE INTERNAL "system include directories" FORCE)
macro (add_global_system_include_dir_absolute)
  set(ALL_SYSTEM_INCLUDES ${ALL_SYSTEM_INCLUDES} ${ARGN} CACHE INTERNAL "system include directories")
endmacro ()
macro (add_global_system_include_dir)
  foreach (fname ${ARGN})
    if (fname STREQUAL ".")
      add_global_system_include_dir_absolute(${CMAKE_CURRENT_SOURCE_DIR})
    else ()
      add_global_system_include_dir_absolute(${CMAKE_CURRENT_SOURCE_DIR}/${fname})
    endif ()
  endforeach ()
endmacro ()

set(ALL_CORE_SRCS CACHE INTERNAL "core sources" FORCE)
macro (add_core_srcs_absolute)
  set(ALL_CORE_SRCS ${ALL_CORE_SRCS} ${ARGN} CACHE INTERNAL "core sources")
endmacro ()
macro (add_core_srcs)
  foreach (fname ${ARGN})
    add_core_srcs_absolute(${CMAKE_CURRENT_SOURCE_DIR}/${fname})
  endforeach ()
endmacro ()

set(ALL_SRCS CACHE INTERNAL "sources" FORCE)
macro (add_srcs_absolute)
  set(ALL_SRCS ${ALL_SRCS} ${ARGN} CACHE INTERNAL "sources")
endmacro ()
macro (add_srcs)
  foreach (fname ${ARGN})
    add_srcs_absolute(${CMAKE_CURRENT_SOURCE_DIR}/${fname})
  endforeach ()
endmacro ()

set(ALL_DEFINES CACHE INTERNAL "defines" FORCE)
macro (add_global_definitions)
  set(ALL_DEFINES ${ALL_DEFINES} ${ARGN} CACHE INTERNAL "defines")
endmacro ()

set(ALL_LINK_LIBS CACHE INTERNAL "libraries to link" FORCE)
macro (add_global_link_libs)
  set(ALL_LINK_LIBS ${ALL_LINK_LIBS} ${ARGN} CACHE INTERNAL "libraries to link")
endmacro ()

set(ALL_UTILITY_TARGET_INCLUDES CACHE INTERNAL "CMake includes for extra utilities" FORCE)
macro (add_utility_target_include)
  set(ALL_UTILITY_TARGET_INCLUDES ${ALL_UTILITY_TARGET_INCLUDES} ${ARGN}
      CACHE INTERNAL "CMake includes for extra utilities")
endmacro ()

set(ALL_SCENARIO_DIRS CACHE INTERNAL "scenario directories" FORCE)
macro (add_scenario_dir)
  set(ALL_SCENARIO_DIRS ${ALL_SCENARIO_DIRS} ${ARGN}
      CACHE INTERNAL "scenario directories")
endmacro ()

set(ALL_DOXYGEN_INPUTS CACHE INTERNAL "Doxygen input" FORCE)
macro (add_doxygen_inputs)
    foreach (dname ${ARGN})
        if (dname STREQUAL ".")
            set(ALL_DOXYGEN_INPUTS ${ALL_DOXYGEN_INPUTS} ${CMAKE_CURRENT_SOURCE_DIR}
                CACHE INTERNAL "Doxygen input" FORCE)
        else ()
            set(ALL_DOXYGEN_INPUTS ${ALL_DOXYGEN_INPUTS} ${CMAKE_CURRENT_SOURCE_DIR}/${dname}
                CACHE INTERNAL "Doxygen input" FORCE)
        endif ()
    endforeach ()
endmacro ()
set(ALL_DOXYGEN_EXCLUDES CACHE INTERNAL "Doxygen excludes" FORCE)
macro (add_doxygen_excludes)
    foreach (fname ${ARGN})
        set(ALL_DOXYGEN_EXCLUDES ${ALL_DOXYGEN_EXCLUDES} ${CMAKE_CURRENT_SOURCE_DIR}/${fname}
            CACHE INTERNAL "Doxygen excludes" FORCE)
    endforeach ()
endmacro ()
