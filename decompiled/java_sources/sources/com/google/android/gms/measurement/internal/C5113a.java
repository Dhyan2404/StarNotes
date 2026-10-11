package com.google.android.gms.measurement.internal;

import com.google.android.gms.measurement.internal.zzje;
import java.util.EnumMap;

/* renamed from: com.google.android.gms.measurement.internal.a */
/* loaded from: classes5.dex */
public final class C5113a {

    /* renamed from: a */
    public final EnumMap<zzje.zza, zzak> f29659a;

    public C5113a() {
        this.f29659a = new EnumMap<>(zzje.zza.class);
    }

    /* renamed from: a */
    public static C5113a m22268a(String str) {
        EnumMap enumMap = new EnumMap(zzje.zza.class);
        if (str.length() >= zzje.zza.values().length) {
            int i = 0;
            if (str.charAt(0) == '1') {
                zzje.zza[] values = zzje.zza.values();
                int length = values.length;
                int i2 = 1;
                while (i < length) {
                    enumMap.put((EnumMap) values[i], (zzje.zza) zzak.zza(str.charAt(i2)));
                    i++;
                    i2++;
                }
                return new C5113a(enumMap);
            }
        }
        return new C5113a();
    }

    /* renamed from: b */
    public final zzak m22269b(zzje.zza zzaVar) {
        zzak zzakVar = this.f29659a.get(zzaVar);
        return zzakVar == null ? zzak.UNSET : zzakVar;
    }

    /* renamed from: c */
    public final void m22270c(zzje.zza zzaVar, int i) {
        zzak zzakVar = zzak.UNSET;
        if (i != -30) {
            if (i != -20) {
                if (i == -10) {
                    zzakVar = zzak.MANIFEST;
                } else if (i != 0) {
                    if (i == 30) {
                        zzakVar = zzak.INITIALIZATION;
                    }
                }
            }
            zzakVar = zzak.API;
        } else {
            zzakVar = zzak.TCF;
        }
        this.f29659a.put((EnumMap<zzje.zza, zzak>) zzaVar, (zzje.zza) zzakVar);
    }

    /* renamed from: d */
    public final void m22271d(zzje.zza zzaVar, zzak zzakVar) {
        this.f29659a.put((EnumMap<zzje.zza, zzak>) zzaVar, (zzje.zza) zzakVar);
    }

    public final String toString() {
        char c;
        StringBuilder sb = new StringBuilder("1");
        for (zzje.zza zzaVar : zzje.zza.values()) {
            zzak zzakVar = this.f29659a.get(zzaVar);
            if (zzakVar == null) {
                zzakVar = zzak.UNSET;
            }
            c = zzakVar.zzl;
            sb.append(c);
        }
        return sb.toString();
    }

    public C5113a(EnumMap<zzje.zza, zzak> enumMap) {
        EnumMap<zzje.zza, zzak> enumMap2 = new EnumMap<>((Class<zzje.zza>) zzje.zza.class);
        this.f29659a = enumMap2;
        enumMap2.putAll(enumMap);
    }
}
