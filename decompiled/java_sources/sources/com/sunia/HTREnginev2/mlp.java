package com.sunia.HTREnginev2;

import com.google.android.gms.internal.measurement.zzfr;
import com.google.android.gms.internal.measurement.zzs;

/* loaded from: classes5.dex */
public final /* synthetic */ class mlp {

    /* renamed from: a */
    public static final /* synthetic */ int[] f77732a;

    /* renamed from: b */
    public static final /* synthetic */ int[] f77733b;

    /* renamed from: c */
    public static final /* synthetic */ int[] f77734c;

    static {
        int[] iArr = new int[zzfr.zza.zzd.values().length];
        f77734c = iArr;
        try {
            iArr[zzfr.zza.zzd.DENIED.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f77734c[zzfr.zza.zzd.GRANTED.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        int[] iArr2 = new int[zzfr.zza.zze.values().length];
        f77733b = iArr2;
        try {
            iArr2[zzfr.zza.zze.AD_STORAGE.ordinal()] = 1;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f77733b[zzfr.zza.zze.ANALYTICS_STORAGE.ordinal()] = 2;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            f77733b[zzfr.zza.zze.AD_USER_DATA.ordinal()] = 3;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            f77733b[zzfr.zza.zze.AD_PERSONALIZATION.ordinal()] = 4;
        } catch (NoSuchFieldError unused6) {
        }
        int[] iArr3 = new int[zzs.values().length];
        f77732a = iArr3;
        try {
            iArr3[zzs.DEBUG.ordinal()] = 1;
        } catch (NoSuchFieldError unused7) {
        }
        try {
            f77732a[zzs.ERROR.ordinal()] = 2;
        } catch (NoSuchFieldError unused8) {
        }
        try {
            f77732a[zzs.WARN.ordinal()] = 3;
        } catch (NoSuchFieldError unused9) {
        }
        try {
            f77732a[zzs.VERBOSE.ordinal()] = 4;
        } catch (NoSuchFieldError unused10) {
        }
    }
}
