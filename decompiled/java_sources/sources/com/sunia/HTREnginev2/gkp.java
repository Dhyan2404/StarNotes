package com.sunia.HTREnginev2;

import android.text.TextUtils;
import com.google.android.gms.measurement.internal.zzje;
import com.google.android.gms.measurement.internal.zzjh;

/* loaded from: classes5.dex */
public final class gkp {

    /* renamed from: a */
    public final zzjh f71128a;

    public gkp(zzjh zzjhVar) {
        this.f71128a = zzjhVar;
    }

    /* renamed from: b */
    public static gkp m54295b(String str) {
        return new gkp((TextUtils.isEmpty(str) || str.length() > 1) ? zzjh.UNINITIALIZED : zzje.m22521b(str.charAt(0)));
    }

    /* renamed from: a */
    public final zzjh m54296a() {
        return this.f71128a;
    }

    /* renamed from: c */
    public final String m54297c() {
        return String.valueOf(zzje.m22520a(this.f71128a));
    }
}
