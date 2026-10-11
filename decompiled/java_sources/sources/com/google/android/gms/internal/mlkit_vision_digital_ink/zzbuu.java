package com.google.android.gms.internal.mlkit_vision_digital_ink;

import com.onyx.android.sdk.data.common.sync.SyncConstant;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'zzb' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: classes5.dex */
public final class zzbuu {
    public static final zzbuu zza;
    public static final zzbuu zzb;
    public static final zzbuu zzc;
    public static final zzbuu zzd;
    public static final zzbuu zze;
    public static final zzbuu zzf;
    public static final zzbuu zzg;
    public static final zzbuu zzh;
    public static final zzbuu zzi;
    public static final zzbuu zzj;
    private static final /* synthetic */ zzbuu[] zzk;
    private final Class zzl;
    private final Class zzm;
    private final Object zzn;

    static {
        zzbuu zzbuuVar = new zzbuu("VOID", 0, Void.class, Void.class, null);
        zza = zzbuuVar;
        Class cls = Integer.TYPE;
        zzbuu zzbuuVar2 = new zzbuu("INT", 1, cls, Integer.class, 0);
        zzb = zzbuuVar2;
        zzbuu zzbuuVar3 = new zzbuu("LONG", 2, Long.TYPE, Long.class, 0L);
        zzc = zzbuuVar3;
        zzbuu zzbuuVar4 = new zzbuu("FLOAT", 3, Float.TYPE, Float.class, Float.valueOf(0.0f));
        zzd = zzbuuVar4;
        zzbuu zzbuuVar5 = new zzbuu("DOUBLE", 4, Double.TYPE, Double.class, Double.valueOf(0.0d));
        zze = zzbuuVar5;
        zzbuu zzbuuVar6 = new zzbuu("BOOLEAN", 5, Boolean.TYPE, Boolean.class, Boolean.FALSE);
        zzf = zzbuuVar6;
        zzbuu zzbuuVar7 = new zzbuu("STRING", 6, String.class, String.class, "");
        zzg = zzbuuVar7;
        zzbuu zzbuuVar8 = new zzbuu("BYTE_STRING", 7, zzbsz.class, zzbsz.class, zzbsz.zzb);
        zzh = zzbuuVar8;
        zzbuu zzbuuVar9 = new zzbuu("ENUM", 8, cls, Integer.class, null);
        zzi = zzbuuVar9;
        zzbuu zzbuuVar10 = new zzbuu(SyncConstant.MESSAGE_DB_NAME, 9, Object.class, Object.class, null);
        zzj = zzbuuVar10;
        zzk = new zzbuu[]{zzbuuVar, zzbuuVar2, zzbuuVar3, zzbuuVar4, zzbuuVar5, zzbuuVar6, zzbuuVar7, zzbuuVar8, zzbuuVar9, zzbuuVar10};
    }

    private zzbuu(String str, int i, Class cls, Class cls2, Object obj) {
        this.zzl = cls;
        this.zzm = cls2;
        this.zzn = obj;
    }

    public static zzbuu[] values() {
        return (zzbuu[]) zzk.clone();
    }

    public final Class zza() {
        return this.zzm;
    }
}
