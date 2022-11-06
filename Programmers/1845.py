
# 프로그래머스 : 폰켓몬

def solution(nums):
    return min(len(set(nums)), len(nums)//2)