#!/system/bin/sh
# Copyright (C) 2013 Nokia Corporation and/or its subsidiary(-ies). All rights reserved.
#
# This material, including documentation and any related computer programs,
# is protected by copyright controlled by Nokia. All rights are reserved.
# Copying, including reproducing, storing, adapting or translating,
# any or all of this material requires the prior written consent of Nokia.
# This material also contains confidential information, which may not be disclosed
# to others without the prior written consent of Nokia.
#

bom=`getprop ro.boot.bom`
productmodeltail=`getprop persist.sys.uat`
product_brand=`getprop ro.product.brand`
platform_version=`getprop ro.build.version.release`
build_id=`getprop ro.build.id`
build_number=`getprop ro.build.version.incremental`
build_type=`getprop ro.build.type`
build_version_tags=`getprop ro.build.tags`

asp=`getprop persist.sys.nvm.asp`
setprop persist.radio.always_send_plmn $asp

case "$bom" in
	rel1.db.ds | rel3.db.ds)
		setprop ro.product.name "RM-1013"
		setprop ro.product.model "NokiaX2DS"$productmodeltail
		setprop ro.product.device "RM-1013"
		setprop ro.product.uimodel "Nokia X2 Dual SIM"
		setprop ro.product.shortmodel "Nokia_X2"
		setprop ro.build.fingerprint "$product_brand/RM-1013/RM-1013:$platform_version/$build_id/$build_number:$build_type/$build_version_tags"
		;;
	rel2.qb.ss | rel4.qb.ss)
		setprop ro.product.name "RM-1014"
		setprop ro.product.model "NokiaX2"$productmodeltail
		setprop ro.product.device "RM-1014"
		setprop ro.product.uimodel "Nokia X2"
		setprop ro.product.shortmodel "Nokia_X2"
		setprop ro.build.fingerprint "$product_brand/RM-1014/RM-1014:$platform_version/$build_id/$build_number:$build_type/$build_version_tags"
		;;
	rel2.qb.ds.dtv | rel4.qb.ds.dtv)
		setprop ro.product.name "RM-1015"
		setprop ro.product.model "genm03"$productmodeltail
		setprop ro.product.device "RM-1015"
		setprop ro.product.uimodel "genm03"
		setprop ro.product.shortmodel "genm03"
		setprop ro.build.fingerprint "$product_brand/RM-1015/RM-1015:$platform_version/$build_id/$build_number:$build_type/$build_version_tags"
		;;
	rel2.qb.ss.dtv | rel4.qb.ss.dtv)
		setprop ro.product.name "RM-1016"
		setprop ro.product.model "genm04"$productmodeltail
		setprop ro.product.device "RM-1016"
		setprop ro.product.uimodel "genm04"
		setprop ro.product.shortmodel "genm04"
		setprop ro.build.fingerprint "$product_brand/RM-1016/RM-1016:$platform_version/$build_id/$build_number:$build_type/$build_version_tags"
		;;
esac

case "$bom" in
	*.dtv)
		start dtvservice
		;;
esac
