package com.oplus.ocs.base.internal.safeparcel;

import android.os.Parcel;

/* renamed from: com.oplus.ocs.base.internal.safeparcel.b */
/* loaded from: classes9.dex */
public final class C13049b {
    /* renamed from: a */
    public static void m52204a(Parcel parcel, int i, int i2) {
        m52206c(parcel, i);
        parcel.writeInt(i2);
    }

    /* renamed from: b */
    public static int m52205b(Parcel parcel, int i) {
        parcel.writeInt(i | (-65536));
        parcel.writeInt(0);
        return parcel.dataPosition();
    }

    /* renamed from: c */
    private static void m52206c(Parcel parcel, int i) {
        parcel.writeInt(i | 262144);
    }

    /* renamed from: a */
    public static void m52203a(Parcel parcel, int i) {
        int dataPosition = parcel.dataPosition();
        parcel.setDataPosition(i - 4);
        parcel.writeInt(dataPosition - i);
        parcel.setDataPosition(dataPosition);
    }
}
