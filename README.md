# Skrypt ZFS Usage

## Opis

Skrypt oblicza procent wykorzystanego miejsca dla każdej wolumii ZFS (zvol) wymienionej przez polecenie `zfs list | grep vm`. Wykorzystuje właściwości `usedbydataset` i `volsize` do przeprowadzenia tych obliczeń.

## Jak Używać

1. Zapisz skrypt do pliku, na przykład `zfs_usage.sh`.
2. Nadaj plikowi uprawnienia do wykonania:

    ```bash
    chmod +x zfs_usage.sh
    ```

3. Uruchom skrypt:

    ```bash
    ./zfs_usage.sh
    ```

## Przykład wyniku

Skrypt wyświetli wyniki w następującym formacie:

```plaintext
NAME                            USED         TOTAL        PERCENT_USED
rpool/data/vm-100-disk-0        15.0G        32G          46.88%
rpool/data/vm-100-disk-1        4.63G        20G          23.15%
rpool/data/vm-102-disk-0        15.0G        32G          46.88%
rpool/data/vm-104-disk-0        25.5G        32G          79.69%
```
