package com.tencent.beacon.base.util;

import android.text.TextUtils;
import java.nio.charset.Charset;

/* renamed from: com.tencent.beacon.base.util.i */
/* loaded from: classes10.dex */
public class C14960i {
    /* renamed from: a */
    public static boolean m59417a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            return Charset.forName("ISO-8859-1").newEncoder().canEncode(str);
        } catch (Exception e) {
            C14954c.m59393a(e);
            return false;
        }
    }
}
