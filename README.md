# Device tree (generic base)

Generic device tree generated with
[aospdtgen](https://github.com/sebaubuntu-python/aospdtgen) from the
`OS2.0.212.0.VPGMIXM` dump at
https://gitlab.com/mkpromvp/dumber-2-mk/-/tree/dump-redmi-spinel-os2.0.212.0.vpgmixm

Platform: MT6789 (Xiaomi/Redmi, A/B + virtual A/B).

Target: LineageOS `lineage-23.2` (Android 16).

## Structure

- `AndroidProducts.mk` / `lineage_generic.mk` — lunch products
- `BoardConfig.mk` — board config (MT6789, A/B + virtual A/B, super partitions)
- `device.mk` — device config
- `manifest.xml` — vendor VINTF manifest
- `*.prop` — partition build props
- `proprietary-files.txt` + `extract-files.py` + `setup-makefiles.py` — proprietary blobs
- `prebuilts/` — kernel, dtb.img, dtbo.img
- `rootdir/` — init rc files, fstab, modules scripts
