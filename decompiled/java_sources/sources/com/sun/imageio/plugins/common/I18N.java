package com.sun.imageio.plugins.common;

/* loaded from: classes9.dex */
public final class I18N extends I18NImpl {
    private static final String resource_name = "iio-plugin.properties";

    public static String getString(String str) {
        return I18NImpl.getString("com.sun.imageio.plugins.common.I18N", resource_name, str);
    }
}
