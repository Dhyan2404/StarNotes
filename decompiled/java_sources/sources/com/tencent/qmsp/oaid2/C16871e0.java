package com.tencent.qmsp.oaid2;

import android.content.Context;

/* renamed from: com.tencent.qmsp.oaid2.e0 */
/* loaded from: classes10.dex */
public class C16871e0 {
    /* renamed from: a */
    public static boolean m60164a() {
        if (C16869d0.f93733a) {
            return C16869d0.f93734b;
        }
        throw new RuntimeException("SDK Need Init First!");
    }

    /* renamed from: b */
    public static String m60165b(Context context) {
        if (C16869d0.f93733a) {
            return C16877h0.f93747f.m60177a(C16869d0.m60159a(context), "OUID");
        }
        throw new RuntimeException("SDK Need Init First!");
    }

    /* renamed from: c */
    public static void m60166c(Context context) {
        C16869d0.f93734b = C16877h0.f93747f.m60178a(C16869d0.m60159a(context));
        C16869d0.f93733a = true;
    }

    /* renamed from: a */
    public static String m60163a(Context context) {
        if (C16869d0.f93733a) {
            return C16877h0.f93747f.m60177a(C16869d0.m60159a(context), "AUID");
        }
        throw new RuntimeException("SDK Need Init First!");
    }
}
