package com.tencent.qimei.p101u;

import com.tencent.qimei.p081b.C16762a;
import com.tencent.qimei.uin.C16842U;

/* renamed from: com.tencent.qimei.u.b */
/* loaded from: classes10.dex */
public class C16841b {

    /* renamed from: a */
    public boolean f93669a;

    /* renamed from: com.tencent.qimei.u.b$a */
    /* loaded from: classes10.dex */
    public static final class a {

        /* renamed from: a */
        public static final C16841b f93670a = new C16841b(null);
    }

    public /* synthetic */ C16841b(C16840a c16840a) {
    }

    /* renamed from: a */
    public byte m60109a(String str, String str2) {
        byte b = -1;
        if (!this.f93669a) {
            return (byte) -1;
        }
        if (C16842U.f93671a) {
            try {
                b = C16842U.m60114e(str, str2);
            } catch (NoSuchMethodError e) {
                e.printStackTrace();
            }
        }
        if (b != 0) {
            C16762a.m59872a(str, b);
        }
        return b;
    }
}
