package com.google.android.gms.internal.p124firebaseauthapi;

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
public class zzamt {
    public static final zzamt zza;
    public static final zzamt zzb;
    public static final zzamt zzc;
    public static final zzamt zzd;
    public static final zzamt zze;
    public static final zzamt zzf;
    public static final zzamt zzg;
    public static final zzamt zzh;
    public static final zzamt zzi;
    public static final zzamt zzj;
    public static final zzamt zzk;
    public static final zzamt zzl;
    public static final zzamt zzm;
    public static final zzamt zzn;
    public static final zzamt zzo;
    public static final zzamt zzp;
    public static final zzamt zzq;
    public static final zzamt zzr;
    private static final /* synthetic */ zzamt[] zzs;
    private final zzand zzt;
    private final int zzu;

    /* JADX WARN: Multi-variable type inference failed */
    static {
        zzamt zzamtVar = new zzamt("DOUBLE", 0, zzand.DOUBLE, 1);
        zza = zzamtVar;
        zzamt zzamtVar2 = new zzamt("FLOAT", 1, zzand.FLOAT, 5);
        zzb = zzamtVar2;
        zzand zzandVar = zzand.LONG;
        zzamt zzamtVar3 = new zzamt("INT64", 2, zzandVar, 0);
        zzc = zzamtVar3;
        zzamt zzamtVar4 = new zzamt("UINT64", 3, zzandVar, 0);
        zzd = zzamtVar4;
        zzand zzandVar2 = zzand.INT;
        zzamt zzamtVar5 = new zzamt("INT32", 4, zzandVar2, 0);
        zze = zzamtVar5;
        zzamt zzamtVar6 = new zzamt("FIXED64", 5, zzandVar, 1);
        zzf = zzamtVar6;
        zzamt zzamtVar7 = new zzamt("FIXED32", 6, zzandVar2, 5);
        zzg = zzamtVar7;
        zzamt zzamtVar8 = new zzamt("BOOL", 7, zzand.BOOLEAN, 0);
        zzh = zzamtVar8;
        int i = 2;
        zzams zzamsVar = new zzams("STRING", zzand.STRING);
        zzi = zzamsVar;
        zzand zzandVar3 = zzand.MESSAGE;
        zzamu zzamuVar = new zzamu("GROUP", zzandVar3);
        zzj = zzamuVar;
        zzamw zzamwVar = new zzamw(SyncConstant.MESSAGE_DB_NAME, zzandVar3);
        zzk = zzamwVar;
        zzamy zzamyVar = new zzamy("BYTES", zzand.BYTE_STRING);
        zzl = zzamyVar;
        zzamt zzamtVar9 = new zzamt("UINT32", 12, zzandVar2, 0);
        zzm = zzamtVar9;
        zzamt zzamtVar10 = new zzamt("ENUM", 13, zzand.ENUM, 0);
        zzn = zzamtVar10;
        zzamt zzamtVar11 = new zzamt("SFIXED32", 14, zzandVar2, 5);
        zzo = zzamtVar11;
        zzamt zzamtVar12 = new zzamt("SFIXED64", 15, zzandVar, 1);
        zzp = zzamtVar12;
        zzamt zzamtVar13 = new zzamt("SINT32", 16, zzandVar2, 0);
        zzq = zzamtVar13;
        zzamt zzamtVar14 = new zzamt("SINT64", 17, zzandVar, 0);
        zzr = zzamtVar14;
        zzs = new zzamt[]{zzamtVar, zzamtVar2, zzamtVar3, zzamtVar4, zzamtVar5, zzamtVar6, zzamtVar7, zzamtVar8, zzamsVar, zzamuVar, zzamwVar, zzamyVar, zzamtVar9, zzamtVar10, zzamtVar11, zzamtVar12, zzamtVar13, zzamtVar14};
    }

    public static zzamt[] values() {
        return (zzamt[]) zzs.clone();
    }

    public final int zza() {
        return this.zzu;
    }

    public final zzand zzb() {
        return this.zzt;
    }

    private zzamt(String str, int i, zzand zzandVar, int i2) {
        this.zzt = zzandVar;
        this.zzu = i2;
    }
}
