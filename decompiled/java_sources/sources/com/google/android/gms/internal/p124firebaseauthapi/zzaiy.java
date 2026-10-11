package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParser;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import java.lang.reflect.Type;

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
public final class zzaiy {
    public static final zzaiy zza;
    private static final zzaiy zzaa;
    private static final zzaiy zzab;
    private static final zzaiy zzac;
    private static final zzaiy zzad;
    private static final zzaiy zzae;
    private static final zzaiy zzaf;
    private static final zzaiy zzag;
    private static final zzaiy zzah;
    private static final zzaiy zzai;
    private static final zzaiy zzaj;
    private static final zzaiy zzak;
    private static final zzaiy zzal;
    private static final zzaiy zzam;
    private static final zzaiy zzan;
    private static final zzaiy zzao;
    private static final zzaiy zzap;
    private static final zzaiy zzaq;
    private static final zzaiy zzar;
    private static final zzaiy zzas;
    private static final zzaiy zzat;
    private static final zzaiy zzau;
    private static final zzaiy zzav;
    private static final zzaiy zzaw;
    private static final zzaiy zzax;
    private static final zzaiy zzay;
    private static final zzaiy[] zzaz;
    public static final zzaiy zzb;
    private static final Type[] zzba;
    private static final /* synthetic */ zzaiy[] zzbb;
    private static final zzaiy zzc;
    private static final zzaiy zzd;
    private static final zzaiy zze;
    private static final zzaiy zzf;
    private static final zzaiy zzg;
    private static final zzaiy zzh;
    private static final zzaiy zzi;
    private static final zzaiy zzj;
    private static final zzaiy zzk;
    private static final zzaiy zzl;
    private static final zzaiy zzm;
    private static final zzaiy zzn;
    private static final zzaiy zzo;
    private static final zzaiy zzp;
    private static final zzaiy zzq;
    private static final zzaiy zzr;
    private static final zzaiy zzs;
    private static final zzaiy zzt;
    private static final zzaiy zzu;
    private static final zzaiy zzv;
    private static final zzaiy zzw;
    private static final zzaiy zzx;
    private static final zzaiy zzy;
    private static final zzaiy zzz;
    private final zzajm zzbc;
    private final int zzbd;
    private final zzaja zzbe;
    private final Class<?> zzbf;
    private final boolean zzbg;

    static {
        zzaja zzajaVar = zzaja.SCALAR;
        zzajm zzajmVar = zzajm.zze;
        zzaiy zzaiyVar = new zzaiy("DOUBLE", 0, 0, zzajaVar, zzajmVar);
        zzc = zzaiyVar;
        zzajm zzajmVar2 = zzajm.zzd;
        zzaiy zzaiyVar2 = new zzaiy("FLOAT", 1, 1, zzajaVar, zzajmVar2);
        zzd = zzaiyVar2;
        zzajm zzajmVar3 = zzajm.zzc;
        zzaiy zzaiyVar3 = new zzaiy("INT64", 2, 2, zzajaVar, zzajmVar3);
        zze = zzaiyVar3;
        zzaiy zzaiyVar4 = new zzaiy("UINT64", 3, 3, zzajaVar, zzajmVar3);
        zzf = zzaiyVar4;
        zzajm zzajmVar4 = zzajm.zzb;
        zzaiy zzaiyVar5 = new zzaiy("INT32", 4, 4, zzajaVar, zzajmVar4);
        zzg = zzaiyVar5;
        zzaiy zzaiyVar6 = new zzaiy("FIXED64", 5, 5, zzajaVar, zzajmVar3);
        zzh = zzaiyVar6;
        zzaiy zzaiyVar7 = new zzaiy("FIXED32", 6, 6, zzajaVar, zzajmVar4);
        zzi = zzaiyVar7;
        zzajm zzajmVar5 = zzajm.zzf;
        zzaiy zzaiyVar8 = new zzaiy("BOOL", 7, 7, zzajaVar, zzajmVar5);
        zzj = zzaiyVar8;
        zzajm zzajmVar6 = zzajm.zzg;
        zzaiy zzaiyVar9 = new zzaiy("STRING", 8, 8, zzajaVar, zzajmVar6);
        zzk = zzaiyVar9;
        zzajm zzajmVar7 = zzajm.zzj;
        zzaiy zzaiyVar10 = new zzaiy(SyncConstant.MESSAGE_DB_NAME, 9, 9, zzajaVar, zzajmVar7);
        zzl = zzaiyVar10;
        zzajm zzajmVar8 = zzajm.zzh;
        zzaiy zzaiyVar11 = new zzaiy("BYTES", 10, 10, zzajaVar, zzajmVar8);
        zzm = zzaiyVar11;
        zzaiy zzaiyVar12 = new zzaiy("UINT32", 11, 11, zzajaVar, zzajmVar4);
        zzn = zzaiyVar12;
        zzajm zzajmVar9 = zzajm.zzi;
        zzaiy zzaiyVar13 = new zzaiy("ENUM", 12, 12, zzajaVar, zzajmVar9);
        zzo = zzaiyVar13;
        zzaiy zzaiyVar14 = new zzaiy("SFIXED32", 13, 13, zzajaVar, zzajmVar4);
        zzp = zzaiyVar14;
        zzaiy zzaiyVar15 = new zzaiy("SFIXED64", 14, 14, zzajaVar, zzajmVar3);
        zzq = zzaiyVar15;
        zzaiy zzaiyVar16 = new zzaiy("SINT32", 15, 15, zzajaVar, zzajmVar4);
        zzr = zzaiyVar16;
        zzaiy zzaiyVar17 = new zzaiy("SINT64", 16, 16, zzajaVar, zzajmVar3);
        zzs = zzaiyVar17;
        zzaiy zzaiyVar18 = new zzaiy("GROUP", 17, 17, zzajaVar, zzajmVar7);
        zzt = zzaiyVar18;
        zzaja zzajaVar2 = zzaja.VECTOR;
        zzaiy zzaiyVar19 = new zzaiy("DOUBLE_LIST", 18, 18, zzajaVar2, zzajmVar);
        zzu = zzaiyVar19;
        zzaiy zzaiyVar20 = new zzaiy("FLOAT_LIST", 19, 19, zzajaVar2, zzajmVar2);
        zzv = zzaiyVar20;
        zzaiy zzaiyVar21 = new zzaiy("INT64_LIST", 20, 20, zzajaVar2, zzajmVar3);
        zzw = zzaiyVar21;
        zzaiy zzaiyVar22 = new zzaiy("UINT64_LIST", 21, 21, zzajaVar2, zzajmVar3);
        zzx = zzaiyVar22;
        zzaiy zzaiyVar23 = new zzaiy("INT32_LIST", 22, 22, zzajaVar2, zzajmVar4);
        zzy = zzaiyVar23;
        zzaiy zzaiyVar24 = new zzaiy("FIXED64_LIST", 23, 23, zzajaVar2, zzajmVar3);
        zzz = zzaiyVar24;
        zzaiy zzaiyVar25 = new zzaiy("FIXED32_LIST", 24, 24, zzajaVar2, zzajmVar4);
        zzaa = zzaiyVar25;
        zzaiy zzaiyVar26 = new zzaiy("BOOL_LIST", 25, 25, zzajaVar2, zzajmVar5);
        zzab = zzaiyVar26;
        zzaiy zzaiyVar27 = new zzaiy("STRING_LIST", 26, 26, zzajaVar2, zzajmVar6);
        zzac = zzaiyVar27;
        zzaiy zzaiyVar28 = new zzaiy("MESSAGE_LIST", 27, 27, zzajaVar2, zzajmVar7);
        zzad = zzaiyVar28;
        zzaiy zzaiyVar29 = new zzaiy("BYTES_LIST", 28, 28, zzajaVar2, zzajmVar8);
        zzae = zzaiyVar29;
        zzaiy zzaiyVar30 = new zzaiy("UINT32_LIST", 29, 29, zzajaVar2, zzajmVar4);
        zzaf = zzaiyVar30;
        zzaiy zzaiyVar31 = new zzaiy("ENUM_LIST", 30, 30, zzajaVar2, zzajmVar9);
        zzag = zzaiyVar31;
        zzaiy zzaiyVar32 = new zzaiy("SFIXED32_LIST", 31, 31, zzajaVar2, zzajmVar4);
        zzah = zzaiyVar32;
        zzaiy zzaiyVar33 = new zzaiy("SFIXED64_LIST", 32, 32, zzajaVar2, zzajmVar3);
        zzai = zzaiyVar33;
        zzaiy zzaiyVar34 = new zzaiy("SINT32_LIST", 33, 33, zzajaVar2, zzajmVar4);
        zzaj = zzaiyVar34;
        zzaiy zzaiyVar35 = new zzaiy("SINT64_LIST", 34, 34, zzajaVar2, zzajmVar3);
        zzak = zzaiyVar35;
        zzaja zzajaVar3 = zzaja.PACKED_VECTOR;
        zzaiy zzaiyVar36 = new zzaiy("DOUBLE_LIST_PACKED", 35, 35, zzajaVar3, zzajmVar);
        zza = zzaiyVar36;
        zzaiy zzaiyVar37 = new zzaiy("FLOAT_LIST_PACKED", 36, 36, zzajaVar3, zzajmVar2);
        zzal = zzaiyVar37;
        zzaiy zzaiyVar38 = new zzaiy("INT64_LIST_PACKED", 37, 37, zzajaVar3, zzajmVar3);
        zzam = zzaiyVar38;
        zzaiy zzaiyVar39 = new zzaiy("UINT64_LIST_PACKED", 38, 38, zzajaVar3, zzajmVar3);
        zzan = zzaiyVar39;
        zzaiy zzaiyVar40 = new zzaiy("INT32_LIST_PACKED", 39, 39, zzajaVar3, zzajmVar4);
        zzao = zzaiyVar40;
        zzaiy zzaiyVar41 = new zzaiy("FIXED64_LIST_PACKED", 40, 40, zzajaVar3, zzajmVar3);
        zzap = zzaiyVar41;
        zzaiy zzaiyVar42 = new zzaiy("FIXED32_LIST_PACKED", 41, 41, zzajaVar3, zzajmVar4);
        zzaq = zzaiyVar42;
        zzaiy zzaiyVar43 = new zzaiy("BOOL_LIST_PACKED", 42, 42, zzajaVar3, zzajmVar5);
        zzar = zzaiyVar43;
        zzaiy zzaiyVar44 = new zzaiy("UINT32_LIST_PACKED", 43, 43, zzajaVar3, zzajmVar4);
        zzas = zzaiyVar44;
        zzaiy zzaiyVar45 = new zzaiy("ENUM_LIST_PACKED", 44, 44, zzajaVar3, zzajmVar9);
        zzat = zzaiyVar45;
        zzaiy zzaiyVar46 = new zzaiy("SFIXED32_LIST_PACKED", 45, 45, zzajaVar3, zzajmVar4);
        zzau = zzaiyVar46;
        zzaiy zzaiyVar47 = new zzaiy("SFIXED64_LIST_PACKED", 46, 46, zzajaVar3, zzajmVar3);
        zzav = zzaiyVar47;
        zzaiy zzaiyVar48 = new zzaiy("SINT32_LIST_PACKED", 47, 47, zzajaVar3, zzajmVar4);
        zzaw = zzaiyVar48;
        zzaiy zzaiyVar49 = new zzaiy("SINT64_LIST_PACKED", 48, 48, zzajaVar3, zzajmVar3);
        zzb = zzaiyVar49;
        zzaiy zzaiyVar50 = new zzaiy("GROUP_LIST", 49, 49, zzajaVar2, zzajmVar7);
        zzax = zzaiyVar50;
        zzaiy zzaiyVar51 = new zzaiy(HlsPlaylistParser.f26120C0, 50, 50, zzaja.MAP, zzajm.zza);
        zzay = zzaiyVar51;
        zzbb = new zzaiy[]{zzaiyVar, zzaiyVar2, zzaiyVar3, zzaiyVar4, zzaiyVar5, zzaiyVar6, zzaiyVar7, zzaiyVar8, zzaiyVar9, zzaiyVar10, zzaiyVar11, zzaiyVar12, zzaiyVar13, zzaiyVar14, zzaiyVar15, zzaiyVar16, zzaiyVar17, zzaiyVar18, zzaiyVar19, zzaiyVar20, zzaiyVar21, zzaiyVar22, zzaiyVar23, zzaiyVar24, zzaiyVar25, zzaiyVar26, zzaiyVar27, zzaiyVar28, zzaiyVar29, zzaiyVar30, zzaiyVar31, zzaiyVar32, zzaiyVar33, zzaiyVar34, zzaiyVar35, zzaiyVar36, zzaiyVar37, zzaiyVar38, zzaiyVar39, zzaiyVar40, zzaiyVar41, zzaiyVar42, zzaiyVar43, zzaiyVar44, zzaiyVar45, zzaiyVar46, zzaiyVar47, zzaiyVar48, zzaiyVar49, zzaiyVar50, zzaiyVar51};
        zzba = new Type[0];
        zzaiy[] values = values();
        zzaz = new zzaiy[values.length];
        for (zzaiy zzaiyVar52 : values) {
            zzaz[zzaiyVar52.zzbd] = zzaiyVar52;
        }
    }

    private zzaiy(String str, int i, int i2, zzaja zzajaVar, zzajm zzajmVar) {
        int i3;
        this.zzbd = i2;
        this.zzbe = zzajaVar;
        this.zzbc = zzajmVar;
        int ordinal = zzajaVar.ordinal();
        if (ordinal == 1) {
            this.zzbf = zzajmVar.zza();
        } else if (ordinal != 3) {
            this.zzbf = null;
        } else {
            this.zzbf = zzajmVar.zza();
        }
        this.zzbg = (zzajaVar != zzaja.SCALAR || (i3 = zzajb.zza[zzajmVar.ordinal()]) == 1 || i3 == 2 || i3 == 3) ? false : true;
    }

    public static zzaiy[] values() {
        return (zzaiy[]) zzbb.clone();
    }

    public final int zza() {
        return this.zzbd;
    }
}
