# Device tree for Xiaomi Redmi Note 15 4G (spinel)

Base device tree for `spinel` (MT6789, Redmi Note 15 4G / 2510DRA23E).

Generated with [aospdtgen](https://github.com/sebaubuntu-python/aospdtgen) from the
`OS2.0.212.0.VPGMIXM` dump at
https://gitlab.com/mkpromvp/dumber-2-mk/-/tree/dump-redmi-spinel-os2.0.212.0.vpgmixm

Target: LineageOS `lineage-23.2` (Android 16).

## Structure

- `AndroidProducts.mk` / `lineage_spinel.mk` — lunch products
- `BoardConfig.mk` — board config (MT6789, A/B + virtual A/B, super partitions)
- `device.mk` — device config
- `manifest.xml` — vendor VINTF manifest
- `*.prop` — partition build props
- `proprietary-files.txt` + `extract-files.py` + `setup-makefiles.py` — proprietary blobs
- `prebuilts/` — kernel, dtb.img, dtbo.img
- `rootdir/` — init rc files, fstab, modules scripts
