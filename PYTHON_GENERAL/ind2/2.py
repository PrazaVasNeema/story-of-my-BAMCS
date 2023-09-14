print('1:')
lw = list(input().split())
l = lw
i = l.index(min(l))
j = l.index(max(l))
temp = l[i]
l[i] = l[j]
l[j] = temp
print(l)

print('\n2:')

l = lw
max_count = l.count(l[0])
max_count_val = l[0]
for i in range(1, len(l)):
#    max_count_val = l[i] if max_count_ind < l.count(l[i]) else max_count_val
    if max_count < l.count(l[i]):
        max_count_val = l[i]
        max_count = l.count(l[i])
print('val = ', max_count_val, '\nind = ', max_count)

print('\n3:')

for i in range(0, len(l)):
    if l[i]=='0':
        l.append('0')
        l.remove('0')
        i-=1
print(l)