---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by 19766.
--- DateTime: 2024/11/28 21:31
---


--- 获取信息权限
if redis.call('set',KEYS[1], ARGV[1],'EX', ARGV[2],'NX') then
    return 1;
elseif redis.call('get',KEYS[1]) == ARGV[1] then
    return redis.call('expire', KEYS[1], ARGV[2]);
else
    return 0;
end
