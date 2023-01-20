#include "gtest/gtest.h"
#include "add.h"

TEST(AddTest, onePlusTwoGivesThree){
  EXPECT_EQ(3, add(1, 2));
}
