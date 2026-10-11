package com.oplus.ocs.base.internal.safeparcel;

import android.os.Parcel;
import com.google.android.material.motion.MotionUtils;

/* renamed from: com.oplus.ocs.base.internal.safeparcel.a */
/* loaded from: classes9.dex */
public final class C13048a {

    /* renamed from: com.oplus.ocs.base.internal.safeparcel.a$a */
    /* loaded from: classes9.dex */
    public static class a extends RuntimeException {
        public a(String str) {
            super(str);
        }
    }

    /* renamed from: a */
    public static int m52200a(Parcel parcel, int i) {
        m52202c(parcel, i);
        return parcel.readInt();
    }

    /* renamed from: b */
    public static int m52201b(Parcel parcel, int i) {
        return (i & (-65536)) != -65536 ? (i >> 16) & 65535 : parcel.readInt();
    }

    /* renamed from: c */
    private static void m52202c(Parcel parcel, int i) {
        int m52201b = m52201b(parcel, i);
        if (m52201b == 4) {
            return;
        }
        throw new a("Expected size 4 got " + m52201b + " (0x" + Integer.toHexString(m52201b) + MotionUtils.f31762d);
    }
}
