package com.google.i18n.phonenumbers.internal;

import com.google.i18n.phonenumbers.CountryCodeToRegionCodeMap;
import java.util.List;

/* loaded from: classes6.dex */
public final class GeoEntityUtility {
    public static final String REGION_CODE_FOR_NON_GEO_ENTITIES = "001";

    public static boolean isGeoEntity(String str) {
        return !str.equals("001");
    }

    public static boolean isGeoEntity(int i) {
        List<String> list = CountryCodeToRegionCodeMap.getCountryCodeToRegionCodeMap().get(Integer.valueOf(i));
        return (list == null || list.contains("001")) ? false : true;
    }
}
