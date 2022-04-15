//
// Created by akhtyamovpavel on 5/1/20.
//

#include "AddTestCase.h"
#include "Functions.h"

TEST(AddTestCase, test1) {
    ASSERT_EQ(Add(5, 5), 10);
    ASSERT_EQ(IsLeap(2), false);
    ASSERT_THROW(IsLeap(-1), std::invalid_argument);
    ASSERT_EQ(IsLeap(400), true);
    ASSERT_THROW(GetMonthDays(1, -1), std::invalid_argument);
}

TEST(AddTestCase, test2) {
    ASSERT_EQ(IsLeap(500), false);
    ASSERT_EQ(GetMonthDays(2022, 2), 28);
    ASSERT_EQ(GetMonthDays(1, 4), 30);
    ASSERT_EQ(GetMonthDays(1, 1), 31);
}
