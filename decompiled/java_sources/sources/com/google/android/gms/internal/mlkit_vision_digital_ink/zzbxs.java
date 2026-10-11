package com.google.android.gms.internal.mlkit_vision_digital_ink;

import com.onyx.android.sdk.data.common.sync.SyncConstant;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'zzc' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: classes5.dex */
public final class zzbxs {
    public static final zzbxs zza;
    public static final zzbxs zzb;
    public static final zzbxs zzc;
    public static final zzbxs zzd;
    public static final zzbxs zze;
    public static final zzbxs zzf;
    public static final zzbxs zzg;
    public static final zzbxs zzh;
    public static final zzbxs zzi;
    public static final zzbxs zzj;
    public static final zzbxs zzk;
    public static final zzbxs zzl;
    public static final zzbxs zzm;
    public static final zzbxs zzn;
    public static final zzbxs zzo;
    public static final zzbxs zzp;
    public static final zzbxs zzq;
    public static final zzbxs zzr;
    private static final /* synthetic */ zzbxs[] zzs;
    private final zzbxt zzt;
    private final int zzu;

    static {
        zzbxs zzbxsVar = new zzbxs("DOUBLE", 0, zzbxt.DOUBLE, 1);
        zza = zzbxsVar;
        zzbxs zzbxsVar2 = new zzbxs("FLOAT", 1, zzbxt.FLOAT, 5);
        zzb = zzbxsVar2;
        zzbxt zzbxtVar = zzbxt.LONG;
        zzbxs zzbxsVar3 = new zzbxs("INT64", 2, zzbxtVar, 0);
        zzc = zzbxsVar3;
        zzbxs zzbxsVar4 = new zzbxs("UINT64", 3, zzbxtVar, 0);
        zzd = zzbxsVar4;
        zzbxt zzbxtVar2 = zzbxt.INT;
        zzbxs zzbxsVar5 = new zzbxs("INT32", 4, zzbxtVar2, 0);
        zze = zzbxsVar5;
        zzbxs zzbxsVar6 = new zzbxs("FIXED64", 5, zzbxtVar, 1);
        zzf = zzbxsVar6;
        zzbxs zzbxsVar7 = new zzbxs("FIXED32", 6, zzbxtVar2, 5);
        zzg = zzbxsVar7;
        zzbxs zzbxsVar8 = new zzbxs("BOOL", 7, zzbxt.BOOLEAN, 0);
        zzh = zzbxsVar8;
        zzbxs zzbxsVar9 = new zzbxs("STRING", 8, zzbxt.STRING, 2);
        zzi = zzbxsVar9;
        zzbxt zzbxtVar3 = zzbxt.MESSAGE;
        zzbxs zzbxsVar10 = new zzbxs("GROUP", 9, zzbxtVar3, 3);
        zzj = zzbxsVar10;
        zzbxs zzbxsVar11 = new zzbxs(SyncConstant.MESSAGE_DB_NAME, 10, zzbxtVar3, 2);
        zzk = zzbxsVar11;
        zzbxs zzbxsVar12 = new zzbxs("BYTES", 11, zzbxt.BYTE_STRING, 2);
        zzl = zzbxsVar12;
        zzbxs zzbxsVar13 = new zzbxs("UINT32", 12, zzbxtVar2, 0);
        zzm = zzbxsVar13;
        zzbxs zzbxsVar14 = new zzbxs("ENUM", 13, zzbxt.ENUM, 0);
        zzn = zzbxsVar14;
        zzbxs zzbxsVar15 = new zzbxs("SFIXED32", 14, zzbxtVar2, 5);
        zzo = zzbxsVar15;
        zzbxs zzbxsVar16 = new zzbxs("SFIXED64", 15, zzbxtVar, 1);
        zzp = zzbxsVar16;
        zzbxs zzbxsVar17 = new zzbxs("SINT32", 16, zzbxtVar2, 0);
        zzq = zzbxsVar17;
        zzbxs zzbxsVar18 = new zzbxs("SINT64", 17, zzbxtVar, 0);
        zzr = zzbxsVar18;
        zzs = new zzbxs[]{zzbxsVar, zzbxsVar2, zzbxsVar3, zzbxsVar4, zzbxsVar5, zzbxsVar6, zzbxsVar7, zzbxsVar8, zzbxsVar9, zzbxsVar10, zzbxsVar11, zzbxsVar12, zzbxsVar13, zzbxsVar14, zzbxsVar15, zzbxsVar16, zzbxsVar17, zzbxsVar18};
    }

    private zzbxs(String str, int i, zzbxt zzbxtVar, int i2) {
        this.zzt = zzbxtVar;
        this.zzu = i2;
    }

    public static zzbxs[] values() {
        return (zzbxs[]) zzs.clone();
    }

    public final int zza() {
        return this.zzu;
    }

    public final zzbxt zzb() {
        return this.zzt;
    }
}
