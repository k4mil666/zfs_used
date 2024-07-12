#!/bin/bash

echo -e "NAME\t\t\t\tUSED\tTOTAL\tPERCENT_USED"

while IFS= read -r line; do
    name=$(echo $line | awk '{print $1}')
    used=$(echo $line | awk '{print $2}')
    total=$(echo $line | awk '{print $3}')

    used_bytes=$(numfmt --from=iec $used)
    total_bytes=$(numfmt --from=iec $total)

    percent_used=$(echo "scale=2; ($used_bytes / $total_bytes) * 100" | bc)

    printf "%-30s %-10s %-10s %6.2f%%\n" "$name" "$used" "$total" "$percent_used"

done < <(zfs list -o name,usedbydataset,volsize -H | grep vm-)
