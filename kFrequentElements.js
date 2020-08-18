//Leetcode 347
//O(nlog(n)) for the sorting. forEach is O(n), hash lookup is constant

/**
 * @param {number[]} nums
 * @param {number} k
 * @return {number[]}
 */
var topKFrequent = function (nums, k) {
  let hash = {}
  nums.forEach(num => {
    if (hash[num]) {
      hash[num] += 1
    } else {
      hash[num] = 1
    }
  })

  let sorted = Object.entries(hash).sort((a, b) => b[1] - a[1])
  return sorted.slice(0, k).map(e => e[0])
};