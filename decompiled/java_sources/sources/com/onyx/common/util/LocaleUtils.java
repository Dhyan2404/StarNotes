package com.onyx.common.util;

import java.util.Locale;

/* loaded from: classes8.dex */
public class LocaleUtils {
    public static boolean isSameLanguage(Locale locale, Locale locale2) {
        return locale.getLanguage().equalsIgnoreCase(locale2.getLanguage());
    }
}
