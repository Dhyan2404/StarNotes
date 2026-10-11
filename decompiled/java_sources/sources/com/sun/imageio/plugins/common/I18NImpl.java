package com.sun.imageio.plugins.common;

import java.util.PropertyResourceBundle;

/* loaded from: classes9.dex */
public class I18NImpl {
    public static final String getString(String str, String str2, String str3) {
        try {
            return (String) new PropertyResourceBundle(Class.forName(str).getResourceAsStream(str2)).handleGetObject(str3);
        } catch (Throwable th) {
            throw new RuntimeException(th);
        }
    }
}
