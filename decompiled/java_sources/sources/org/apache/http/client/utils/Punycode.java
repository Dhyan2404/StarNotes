package org.apache.http.client.utils;

import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;

@Contract(threading = ThreadingBehavior.IMMUTABLE)
@Deprecated
/* loaded from: classes12.dex */
public class Punycode {

    /* renamed from: a */
    public static final Idn f110203a;

    static {
        Idn rfc3492Idn;
        try {
            rfc3492Idn = new JdkIdn();
        } catch (Exception unused) {
            rfc3492Idn = new Rfc3492Idn();
        }
        f110203a = rfc3492Idn;
    }

    public static String toUnicode(String str) {
        return f110203a.toUnicode(str);
    }
}
