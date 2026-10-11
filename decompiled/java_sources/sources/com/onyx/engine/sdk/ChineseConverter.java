package com.onyx.engine.sdk;

import com.onyx.engine.sdk.ReaderTextStyle;

/* loaded from: classes8.dex */
public class ChineseConverter {
    private ChineseConverter() {
    }

    public static String convert(String str, ReaderTextStyle.ChineseConvertType chineseConvertType) {
        return nativeConvert(str, chineseConvertType.ordinal());
    }

    private static native String nativeConvert(String str, int i);
}
