find_package( GTest REQUIRED )
include( source.cmake )

enable_testing()

add_executable( test-erne ${ERNE_TEST_SOURCES} )
target_link_libraries( test-erne 
    GTest::GTest
    GTest::gtest_main 
)

gtest_discover_tests( test-erne )
