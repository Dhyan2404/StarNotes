package org.scribe.utils;

import java.util.regex.Pattern;
import org.scribe.model.OAuthConstants;

/* loaded from: classes16.dex */
public class Preconditions {

    /* renamed from: a */
    public static final String f116002a = "Received an invalid parameter";

    /* renamed from: b */
    public static final Pattern f116003b = Pattern.compile("^[a-zA-Z][a-zA-Z0-9+.-]*://\\S+");

    /* renamed from: a */
    public static void m71895a(boolean z, String str) {
        if (str == null || str.trim().length() <= 0) {
            str = f116002a;
        }
        if (!z) {
            throw new IllegalArgumentException(str);
        }
    }

    /* renamed from: b */
    public static boolean m71896b(String str) {
        return f116003b.matcher(str).matches();
    }

    public static void checkEmptyString(String str, String str2) {
        m71895a((str == null || str.trim().equals("")) ? false : true, str2);
    }

    public static void checkNotNull(Object obj, String str) {
        m71895a(obj != null, str);
    }

    public static void checkValidOAuthCallback(String str, String str2) {
        checkEmptyString(str, str2);
        if (str.compareToIgnoreCase(OAuthConstants.OUT_OF_BAND) != 0) {
            m71895a(m71896b(str), str2);
        }
    }

    public static void checkValidUrl(String str, String str2) {
        checkEmptyString(str, str2);
        m71895a(m71896b(str), str2);
    }
}
