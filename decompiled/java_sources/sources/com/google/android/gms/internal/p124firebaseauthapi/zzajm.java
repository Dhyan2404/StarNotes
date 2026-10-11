package com.google.android.gms.internal.p124firebaseauthapi;

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
public final class zzajm {
    public static final zzajm zza;
    public static final zzajm zzb;
    public static final zzajm zzc;
    public static final zzajm zzd;
    public static final zzajm zze;
    public static final zzajm zzf;
    public static final zzajm zzg;
    public static final zzajm zzh;
    public static final zzajm zzi;
    public static final zzajm zzj;
    private static final /* synthetic */ zzajm[] zzk;
    private final Class<?> zzl;
    private final Class<?> zzm;
    private final Object zzn;

    static {
        zzajm zzajmVar = new zzajm("VOID", 0, Void.class, Void.class, null);
        zza = zzajmVar;
        Class cls = Integer.TYPE;
        zzajm zzajmVar2 = new zzajm("INT", 1, cls, Integer.class, 0);
        zzb = zzajmVar2;
        zzajm zzajmVar3 = new zzajm("LONG", 2, Long.TYPE, Long.class, 0L);
        zzc = zzajmVar3;
        zzajm zzajmVar4 = new zzajm("FLOAT", 3, Float.TYPE, Float.class, Float.valueOf(0.0f));
        zzd = zzajmVar4;
        zzajm zzajmVar5 = new zzajm("DOUBLE", 4, Double.TYPE, Double.class, Double.valueOf(0.0d));
        zze = zzajmVar5;
        zzajm zzajmVar6 = new zzajm("BOOLEAN", 5, Boolean.TYPE, Boolean.class, Boolean.FALSE);
        zzf = zzajmVar6;
        zzajm zzajmVar7 = new zzajm("STRING", 6, String.class, String.class, "");
        zzg = zzajmVar7;
        zzajm zzajmVar8 = new zzajm("BYTE_STRING", 7, zzaho.class, zzaho.class, zzaho.zza);
        zzh = zzajmVar8;
        zzajm zzajmVar9 = new zzajm("ENUM", 8, cls, Integer.class, null);
        zzi = zzajmVar9;
        zzajm zzajmVar10 = new zzajm(SyncConstant.MESSAGE_DB_NAME, 9, Object.class, Object.class, null);
        zzj = zzajmVar10;
        zzk = new zzajm[]{zzajmVar, zzajmVar2, zzajmVar3, zzajmVar4, zzajmVar5, zzajmVar6, zzajmVar7, zzajmVar8, zzajmVar9, zzajmVar10};
    }

    private zzajm(String str, int i, Class cls, Class cls2, Object obj) {
        this.zzl = cls;
        this.zzm = cls2;
        this.zzn = obj;
    }

    public static zzajm[] values() {
        return (zzajm[]) zzk.clone();
    }

    public final Class<?> zza() {
        return this.zzm;
    }
}
