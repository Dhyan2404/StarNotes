package org.apache.poi.util;

import com.couchbase.lite.internal.BaseTLSIdentity;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;

/* loaded from: classes13.dex */
public class Roman {
    public static final int[] VALUES = {1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1};
    public static final String[] ROMAN = {"M", "CM", SardineUtil.DEFAULT_NAMESPACE_PREFIX, "CD", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "XC", "L", "XL", "X", "IX", "V", "IV", "I"};

    public static String toRoman(int i) {
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < VALUES.length; i2++) {
            while (true) {
                int i3 = VALUES[i2];
                if (i >= i3) {
                    i -= i3;
                    sb.append(ROMAN[i2]);
                }
            }
        }
        return sb.toString();
    }
}
