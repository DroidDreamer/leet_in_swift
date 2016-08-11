//
//  Two_Sum.swift
//  
//
//  Created by ericwang on 16/8/11.
//
//

import Foundation



//Given an array of integers, return indices of the two numbers such that they add up to a specific target.
//
//You may assume that each input would have exactly one solution.
//
//Example:
//Given nums = [2, 7, 11, 15], target = 9,
//
//Because nums[0] + nums[1] = 2 + 7 = 9,
//return [0, 1].

func twoSum(nums: [Int], _ target: Int) -> [Int] {
    
    for i in 0..<nums.count-1 {
        for j in i+1..<nums.count{
            if nums[i] + nums[j] == target {
                return [i,j]
            }
        }
    }
    return [0,0]
}


//test:twoSum(nums: [3,2,4], 6)

//hint: parameter nums is disorder,wandering if it needs to order first
