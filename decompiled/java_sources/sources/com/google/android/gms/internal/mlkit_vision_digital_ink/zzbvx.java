package com.google.android.gms.internal.mlkit_vision_digital_ink;

import com.caverock.androidsvg.SVG;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzbvx<T> implements zzbwi<T> {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzbxm.zzg();
    private final int[] zzc;
    private final Object[] zzd;
    private final int zze;
    private final int zzf;
    private final zzbvu zzg;
    private final boolean zzh;
    private final boolean zzi;
    private final boolean zzj;
    private final int[] zzk;
    private final int zzl;
    private final int zzm;
    private final zzbvh zzn;
    private final zzbxc zzo;
    private final zzbts zzp;
    private final zzbwa zzq;
    private final zzbvp zzr;

    private zzbvx(int[] iArr, Object[] objArr, int i, int i2, zzbvu zzbvuVar, boolean z, boolean z2, int[] iArr2, int i3, int i4, zzbwa zzbwaVar, zzbvh zzbvhVar, zzbxc zzbxcVar, zzbts zzbtsVar, zzbvp zzbvpVar, byte[] bArr) {
        this.zzc = iArr;
        this.zzd = objArr;
        this.zze = i;
        this.zzf = i2;
        this.zzi = zzbvuVar instanceof zzbui;
        this.zzj = z;
        boolean z3 = false;
        if (zzbtsVar != null && zzbtsVar.zzj(zzbvuVar)) {
            z3 = true;
        }
        this.zzh = z3;
        this.zzk = iArr2;
        this.zzl = i3;
        this.zzm = i4;
        this.zzq = zzbwaVar;
        this.zzn = zzbvhVar;
        this.zzo = zzbxcVar;
        this.zzp = zzbtsVar;
        this.zzg = zzbvuVar;
        this.zzr = zzbvpVar;
    }

    private final int zzA(int i, int i2) {
        int length = (this.zzc.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int i5 = this.zzc[i4];
            if (i == i5) {
                return i4;
            }
            if (i < i5) {
                length = i3 - 1;
            } else {
                i2 = i3 + 1;
            }
        }
        return -1;
    }

    private static int zzB(int i) {
        return (i >>> 20) & 255;
    }

    private final int zzC(int i) {
        return this.zzc[i + 1];
    }

    private static long zzD(Object obj, long j) {
        return ((Long) zzbxm.zzf(obj, j)).longValue();
    }

    private final zzbum zzE(int i) {
        int i2 = i / 3;
        return (zzbum) this.zzd[i2 + i2 + 1];
    }

    private final zzbwi zzF(int i) {
        int i2 = i / 3;
        int i3 = i2 + i2;
        zzbwi zzbwiVar = (zzbwi) this.zzd[i3];
        if (zzbwiVar != null) {
            return zzbwiVar;
        }
        zzbwi zzb2 = zzbwe.zza().zzb((Class) this.zzd[i3 + 1]);
        this.zzd[i3] = zzb2;
        return zzb2;
    }

    private final Object zzG(Object obj, int i, Object obj2, zzbxc zzbxcVar, Object obj3) {
        zzbum zzE;
        int i2 = this.zzc[i];
        Object zzf = zzbxm.zzf(obj, zzC(i) & 1048575);
        if (zzf == null || (zzE = zzE(i)) == null) {
            return obj2;
        }
        zzbvm zzc = ((zzbvn) zzH(i)).zzc();
        Iterator it2 = ((zzbvo) zzf).entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry entry = (Map.Entry) it2.next();
            if (!zzE.zza(((Integer) entry.getValue()).intValue())) {
                if (obj2 == null) {
                    obj2 = zzbxcVar.zzc(obj3);
                }
                int zzb2 = zzbvn.zzb(zzc, entry.getKey(), entry.getValue());
                zzbsz zzbszVar = zzbsz.zzb;
                byte[] bArr = new byte[zzb2];
                zzbtm zzO = zzbtm.zzO(bArr);
                try {
                    zzbvn.zze(zzO, zzc, entry.getKey(), entry.getValue());
                    zzbxcVar.zzk(obj2, i2, zzbsu.zza(zzO, bArr));
                    it2.remove();
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }
        return obj2;
    }

    private final Object zzH(int i) {
        int i2 = i / 3;
        return this.zzd[i2 + i2];
    }

    private final Object zzI(Object obj, int i) {
        zzbwi zzF = zzF(i);
        int zzC = zzC(i) & 1048575;
        if (!zzX(obj, i)) {
            return zzF.zze();
        }
        Object object = zzb.getObject(obj, zzC);
        if (zzaa(object)) {
            return object;
        }
        Object zze = zzF.zze();
        if (object != null) {
            zzF.zzg(zze, object);
        }
        return zze;
    }

    private final Object zzJ(Object obj, int i, int i2) {
        zzbwi zzF = zzF(i2);
        if (!zzab(obj, i, i2)) {
            return zzF.zze();
        }
        Object object = zzb.getObject(obj, zzC(i2) & 1048575);
        if (zzaa(object)) {
            return object;
        }
        Object zze = zzF.zze();
        if (object != null) {
            zzF.zzg(zze, object);
        }
        return zze;
    }

    private static Field zzK(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            throw new RuntimeException("Field " + str + " for " + cls.getName() + " not found. Known fields are " + Arrays.toString(declaredFields));
        }
    }

    private static void zzL(Object obj) {
        if (!zzaa(obj)) {
            throw new IllegalArgumentException("Mutating immutable message: ".concat(String.valueOf(obj)));
        }
    }

    private final void zzM(Object obj, Object obj2, int i) {
        if (zzX(obj2, i)) {
            int zzC = zzC(i) & 1048575;
            Unsafe unsafe = zzb;
            long j = zzC;
            Object object = unsafe.getObject(obj2, j);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.zzc[i] + " is present but null: " + obj2.toString());
            }
            zzbwi zzF = zzF(i);
            if (!zzX(obj, i)) {
                if (zzaa(object)) {
                    Object zze = zzF.zze();
                    zzF.zzg(zze, object);
                    unsafe.putObject(obj, j, zze);
                } else {
                    unsafe.putObject(obj, j, object);
                }
                zzP(obj, i);
                return;
            }
            Object object2 = unsafe.getObject(obj, j);
            if (!zzaa(object2)) {
                Object zze2 = zzF.zze();
                zzF.zzg(zze2, object2);
                unsafe.putObject(obj, j, zze2);
                object2 = zze2;
            }
            zzF.zzg(object2, object);
        }
    }

    private final void zzN(Object obj, Object obj2, int i) {
        int i2 = this.zzc[i];
        if (zzab(obj2, i2, i)) {
            int zzC = zzC(i) & 1048575;
            Unsafe unsafe = zzb;
            long j = zzC;
            Object object = unsafe.getObject(obj2, j);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.zzc[i] + " is present but null: " + obj2.toString());
            }
            zzbwi zzF = zzF(i);
            if (!zzab(obj, i2, i)) {
                if (zzaa(object)) {
                    Object zze = zzF.zze();
                    zzF.zzg(zze, object);
                    unsafe.putObject(obj, j, zze);
                } else {
                    unsafe.putObject(obj, j, object);
                }
                zzQ(obj, i2, i);
                return;
            }
            Object object2 = unsafe.getObject(obj, j);
            if (!zzaa(object2)) {
                Object zze2 = zzF.zze();
                zzF.zzg(zze2, object2);
                unsafe.putObject(obj, j, zze2);
                object2 = zze2;
            }
            zzF.zzg(object2, object);
        }
    }

    private final void zzO(Object obj, int i, zzbwh zzbwhVar) throws IOException {
        if (zzW(i)) {
            zzbxm.zzs(obj, i & 1048575, zzbwhVar.zzu());
        } else if (this.zzi) {
            zzbxm.zzs(obj, i & 1048575, zzbwhVar.zzt());
        } else {
            zzbxm.zzs(obj, i & 1048575, zzbwhVar.zzp());
        }
    }

    private final void zzP(Object obj, int i) {
        int zzz = zzz(i);
        long j = 1048575 & zzz;
        if (j == 1048575) {
            return;
        }
        zzbxm.zzq(obj, j, (1 << (zzz >>> 20)) | zzbxm.zzc(obj, j));
    }

    private final void zzQ(Object obj, int i, int i2) {
        zzbxm.zzq(obj, zzz(i2) & 1048575, i);
    }

    private final void zzR(Object obj, int i, Object obj2) {
        zzb.putObject(obj, zzC(i) & 1048575, obj2);
        zzP(obj, i);
    }

    private final void zzS(Object obj, int i, int i2, Object obj2) {
        zzb.putObject(obj, zzC(i2) & 1048575, obj2);
        zzQ(obj, i, i2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:29:0x007d. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:100:0x025f  */
    /* JADX WARN: Removed duplicated region for block: B:101:0x026f  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x027f  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x028f  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x029f  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x02af  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x02bf  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x02cf  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x02df  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x02ef  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x02fe  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0311  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0320  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x032f  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x033e  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x034d  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x035c  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x036b  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x037a  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0389  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x039a  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x03ab  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x03b8  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x03c5  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x03d2  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x03df  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x03ec  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x03f9  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0408  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0419  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0425  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0431  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x043d  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x0449  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x0455  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x0461  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x046d  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x0479  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x048a  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0166  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0184  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01af  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01bf  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x01cf  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01df  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x01ef  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x01ff  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x020f  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x021f  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x022f  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x023f  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x024f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzT(java.lang.Object r17, com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxu r18) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1336
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_vision_digital_ink.zzbvx.zzT(java.lang.Object, com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxu):void");
    }

    private final void zzU(zzbxu zzbxuVar, int i, Object obj, int i2) throws IOException {
        if (obj != null) {
            zzbxuVar.zzv(i, ((zzbvn) zzH(i2)).zzc(), (zzbvo) obj);
        }
    }

    private final boolean zzV(Object obj, Object obj2, int i) {
        return zzX(obj, i) == zzX(obj2, i);
    }

    private static boolean zzW(int i) {
        return (i & 536870912) != 0;
    }

    private final boolean zzX(Object obj, int i) {
        int zzz = zzz(i);
        long j = zzz & 1048575;
        if (j != 1048575) {
            return ((1 << (zzz >>> 20)) & zzbxm.zzc(obj, j)) != 0;
        }
        int zzC = zzC(i);
        long j2 = zzC & 1048575;
        switch (zzB(zzC)) {
            case 0:
                return Double.doubleToRawLongBits(zzbxm.zza(obj, j2)) != 0;
            case 1:
                return Float.floatToRawIntBits(zzbxm.zzb(obj, j2)) != 0;
            case 2:
                return zzbxm.zzd(obj, j2) != 0;
            case 3:
                return zzbxm.zzd(obj, j2) != 0;
            case 4:
                return zzbxm.zzc(obj, j2) != 0;
            case 5:
                return zzbxm.zzd(obj, j2) != 0;
            case 6:
                return zzbxm.zzc(obj, j2) != 0;
            case 7:
                return zzbxm.zzw(obj, j2);
            case 8:
                Object zzf = zzbxm.zzf(obj, j2);
                if (zzf instanceof String) {
                    return !((String) zzf).isEmpty();
                }
                if (zzf instanceof zzbsz) {
                    return !zzbsz.zzb.equals(zzf);
                }
                throw new IllegalArgumentException();
            case 9:
                return zzbxm.zzf(obj, j2) != null;
            case 10:
                return !zzbsz.zzb.equals(zzbxm.zzf(obj, j2));
            case 11:
                return zzbxm.zzc(obj, j2) != 0;
            case 12:
                return zzbxm.zzc(obj, j2) != 0;
            case 13:
                return zzbxm.zzc(obj, j2) != 0;
            case 14:
                return zzbxm.zzd(obj, j2) != 0;
            case 15:
                return zzbxm.zzc(obj, j2) != 0;
            case 16:
                return zzbxm.zzd(obj, j2) != 0;
            case 17:
                return zzbxm.zzf(obj, j2) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final boolean zzY(Object obj, int i, int i2, int i3, int i4) {
        return i2 == 1048575 ? zzX(obj, i) : (i3 & i4) != 0;
    }

    private static boolean zzZ(Object obj, int i, zzbwi zzbwiVar) {
        return zzbwiVar.zzl(zzbxm.zzf(obj, i & 1048575));
    }

    private static boolean zzaa(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof zzbui) {
            return ((zzbui) obj).zzag();
        }
        return true;
    }

    private final boolean zzab(Object obj, int i, int i2) {
        return zzbxm.zzc(obj, (long) (zzz(i2) & 1048575)) == i;
    }

    private static boolean zzac(Object obj, long j) {
        return ((Boolean) zzbxm.zzf(obj, j)).booleanValue();
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0006. Please report as an issue. */
    private static final int zzad(byte[] bArr, int i, int i2, zzbxs zzbxsVar, Class cls, zzbsl zzbslVar) throws IOException {
        zzbxs zzbxsVar2 = zzbxs.zza;
        switch (zzbxsVar.ordinal()) {
            case 0:
                zzbslVar.zzc = Double.valueOf(Double.longBitsToDouble(zzbsm.zzq(bArr, i)));
                return i + 8;
            case 1:
                zzbslVar.zzc = Float.valueOf(Float.intBitsToFloat(zzbsm.zzb(bArr, i)));
                return i + 4;
            case 2:
            case 3:
                int zzm = zzbsm.zzm(bArr, i, zzbslVar);
                zzbslVar.zzc = Long.valueOf(zzbslVar.zzb);
                return zzm;
            case 4:
            case 12:
            case 13:
                int zzj = zzbsm.zzj(bArr, i, zzbslVar);
                zzbslVar.zzc = Integer.valueOf(zzbslVar.zza);
                return zzj;
            case 5:
            case 15:
                zzbslVar.zzc = Long.valueOf(zzbsm.zzq(bArr, i));
                return i + 8;
            case 6:
            case 14:
                zzbslVar.zzc = Integer.valueOf(zzbsm.zzb(bArr, i));
                return i + 4;
            case 7:
                int zzm2 = zzbsm.zzm(bArr, i, zzbslVar);
                zzbslVar.zzc = Boolean.valueOf(zzbslVar.zzb != 0);
                return zzm2;
            case 8:
                return zzbsm.zzh(bArr, i, zzbslVar);
            case 9:
            default:
                throw new RuntimeException("unsupported field type.");
            case 10:
                return zzbsm.zzd(zzbwe.zza().zzb(cls), bArr, i, i2, zzbslVar);
            case 11:
                return zzbsm.zza(bArr, i, zzbslVar);
            case 16:
                int zzj2 = zzbsm.zzj(bArr, i, zzbslVar);
                zzbslVar.zzc = Integer.valueOf(zzbtf.zzF(zzbslVar.zza));
                return zzj2;
            case 17:
                int zzm3 = zzbsm.zzm(bArr, i, zzbslVar);
                zzbslVar.zzc = Long.valueOf(zzbtf.zzG(zzbslVar.zzb));
                return zzm3;
        }
    }

    private static final void zzae(int i, Object obj, zzbxu zzbxuVar) throws IOException {
        if (obj instanceof String) {
            zzbxuVar.zzH(i, (String) obj);
        } else {
            zzbxuVar.zzd(i, (zzbsz) obj);
        }
    }

    public static zzbxd zzd(Object obj) {
        zzbui zzbuiVar = (zzbui) obj;
        zzbxd zzbxdVar = zzbuiVar.zzc;
        if (zzbxdVar != zzbxd.zzc()) {
            return zzbxdVar;
        }
        zzbxd zzf = zzbxd.zzf();
        zzbuiVar.zzc = zzf;
        return zzf;
    }

    public static zzbvx zzm(Class cls, zzbvr zzbvrVar, zzbwa zzbwaVar, zzbvh zzbvhVar, zzbxc zzbxcVar, zzbts zzbtsVar, zzbvp zzbvpVar) {
        if (zzbvrVar instanceof zzbwg) {
            return zzn((zzbwg) zzbvrVar, zzbwaVar, zzbvhVar, zzbxcVar, zzbtsVar, zzbvpVar);
        }
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x0258  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0270  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0273  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x025b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.mlkit_vision_digital_ink.zzbvx zzn(com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwg r34, com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwa r35, com.google.android.gms.internal.mlkit_vision_digital_ink.zzbvh r36, com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxc r37, com.google.android.gms.internal.mlkit_vision_digital_ink.zzbts r38, com.google.android.gms.internal.mlkit_vision_digital_ink.zzbvp r39) {
        /*
            Method dump skipped, instructions count: 986
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_vision_digital_ink.zzbvx.zzn(com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwg, com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwa, com.google.android.gms.internal.mlkit_vision_digital_ink.zzbvh, com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxc, com.google.android.gms.internal.mlkit_vision_digital_ink.zzbts, com.google.android.gms.internal.mlkit_vision_digital_ink.zzbvp):com.google.android.gms.internal.mlkit_vision_digital_ink.zzbvx");
    }

    private static double zzo(Object obj, long j) {
        return ((Double) zzbxm.zzf(obj, j)).doubleValue();
    }

    private static float zzp(Object obj, long j) {
        return ((Float) zzbxm.zzf(obj, j)).floatValue();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:11:0x003a. Please report as an issue. */
    private final int zzq(Object obj) {
        int i;
        int zzM;
        int zzM2;
        int zzN;
        int zzM3;
        int zzM4;
        int zzM5;
        int zzM6;
        int zzu;
        boolean z;
        int zzd;
        int zzi;
        int zzL;
        int zzM7;
        int i2;
        int zzM8;
        int zzM9;
        int zzM10;
        int zzM11;
        Unsafe unsafe = zzb;
        int i3 = 1048575;
        int i4 = 1048575;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        while (i5 < this.zzc.length) {
            int zzC = zzC(i5);
            int[] iArr = this.zzc;
            int i8 = iArr[i5];
            int zzB = zzB(zzC);
            if (zzB <= 17) {
                int i9 = iArr[i5 + 2];
                int i10 = i9 & i3;
                int i11 = i9 >>> 20;
                if (i10 != i4) {
                    i7 = unsafe.getInt(obj, i10);
                    i4 = i10;
                }
                i = 1 << i11;
            } else {
                i = 0;
            }
            long j = zzC & i3;
            switch (zzB) {
                case 0:
                    if ((i7 & i) != 0) {
                        zzM = zzbtm.zzM(i8 << 3);
                        zzM4 = zzM + 8;
                        i6 += zzM4;
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if ((i7 & i) != 0) {
                        zzM2 = zzbtm.zzM(i8 << 3);
                        zzM4 = zzM2 + 4;
                        i6 += zzM4;
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if ((i7 & i) != 0) {
                        zzN = zzbtm.zzN(unsafe.getLong(obj, j));
                        zzM3 = zzbtm.zzM(i8 << 3);
                        i6 += zzM3 + zzN;
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if ((i7 & i) != 0) {
                        zzN = zzbtm.zzN(unsafe.getLong(obj, j));
                        zzM3 = zzbtm.zzM(i8 << 3);
                        i6 += zzM3 + zzN;
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if ((i7 & i) != 0) {
                        zzN = zzbtm.zzF(unsafe.getInt(obj, j));
                        zzM3 = zzbtm.zzM(i8 << 3);
                        i6 += zzM3 + zzN;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if ((i7 & i) != 0) {
                        zzM = zzbtm.zzM(i8 << 3);
                        zzM4 = zzM + 8;
                        i6 += zzM4;
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if ((i7 & i) != 0) {
                        zzM2 = zzbtm.zzM(i8 << 3);
                        zzM4 = zzM2 + 4;
                        i6 += zzM4;
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if ((i7 & i) != 0) {
                        zzM4 = zzbtm.zzM(i8 << 3) + 1;
                        i6 += zzM4;
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if ((i7 & i) != 0) {
                        Object object = unsafe.getObject(obj, j);
                        if (object instanceof zzbsz) {
                            int i12 = zzbtm.zzf;
                            int zzd2 = ((zzbsz) object).zzd();
                            zzM5 = zzbtm.zzM(zzd2) + zzd2;
                            zzM6 = zzbtm.zzM(i8 << 3);
                            zzM4 = zzM6 + zzM5;
                            i6 += zzM4;
                            break;
                        } else {
                            zzN = zzbtm.zzK((String) object);
                            zzM3 = zzbtm.zzM(i8 << 3);
                            i6 += zzM3 + zzN;
                            break;
                        }
                    } else {
                        break;
                    }
                case 9:
                    if ((i7 & i) != 0) {
                        zzM4 = zzbwk.zzo(i8, unsafe.getObject(obj, j), zzF(i5));
                        i6 += zzM4;
                        break;
                    } else {
                        break;
                    }
                case 10:
                    if ((i7 & i) != 0) {
                        zzbsz zzbszVar = (zzbsz) unsafe.getObject(obj, j);
                        int i13 = zzbtm.zzf;
                        int zzd3 = zzbszVar.zzd();
                        zzM5 = zzbtm.zzM(zzd3) + zzd3;
                        zzM6 = zzbtm.zzM(i8 << 3);
                        zzM4 = zzM6 + zzM5;
                        i6 += zzM4;
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if ((i7 & i) != 0) {
                        zzN = zzbtm.zzM(unsafe.getInt(obj, j));
                        zzM3 = zzbtm.zzM(i8 << 3);
                        i6 += zzM3 + zzN;
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if ((i7 & i) != 0) {
                        zzN = zzbtm.zzF(unsafe.getInt(obj, j));
                        zzM3 = zzbtm.zzM(i8 << 3);
                        i6 += zzM3 + zzN;
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if ((i7 & i) != 0) {
                        zzM2 = zzbtm.zzM(i8 << 3);
                        zzM4 = zzM2 + 4;
                        i6 += zzM4;
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if ((i7 & i) != 0) {
                        zzM = zzbtm.zzM(i8 << 3);
                        zzM4 = zzM + 8;
                        i6 += zzM4;
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if ((i7 & i) != 0) {
                        int i14 = unsafe.getInt(obj, j);
                        zzM3 = zzbtm.zzM(i8 << 3);
                        zzN = zzbtm.zzM((i14 >> 31) ^ (i14 + i14));
                        i6 += zzM3 + zzN;
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if ((i & i7) != 0) {
                        long j2 = unsafe.getLong(obj, j);
                        i6 += zzbtm.zzM(i8 << 3) + zzbtm.zzN((j2 >> 63) ^ (j2 + j2));
                        break;
                    } else {
                        break;
                    }
                case 17:
                    if ((i7 & i) != 0) {
                        zzM4 = zzbtm.zzD(i8, (zzbvu) unsafe.getObject(obj, j), zzF(i5));
                        i6 += zzM4;
                        break;
                    } else {
                        break;
                    }
                case 18:
                    zzM4 = zzbwk.zzh(i8, (List) unsafe.getObject(obj, j), false);
                    i6 += zzM4;
                    break;
                case 19:
                    zzM4 = zzbwk.zzf(i8, (List) unsafe.getObject(obj, j), false);
                    i6 += zzM4;
                    break;
                case 20:
                    zzM4 = zzbwk.zzm(i8, (List) unsafe.getObject(obj, j), false);
                    i6 += zzM4;
                    break;
                case 21:
                    zzM4 = zzbwk.zzx(i8, (List) unsafe.getObject(obj, j), false);
                    i6 += zzM4;
                    break;
                case 22:
                    zzM4 = zzbwk.zzk(i8, (List) unsafe.getObject(obj, j), false);
                    i6 += zzM4;
                    break;
                case 23:
                    zzM4 = zzbwk.zzh(i8, (List) unsafe.getObject(obj, j), false);
                    i6 += zzM4;
                    break;
                case 24:
                    zzM4 = zzbwk.zzf(i8, (List) unsafe.getObject(obj, j), false);
                    i6 += zzM4;
                    break;
                case 25:
                    zzM4 = zzbwk.zza(i8, (List) unsafe.getObject(obj, j), false);
                    i6 += zzM4;
                    break;
                case 26:
                    zzu = zzbwk.zzu(i8, (List) unsafe.getObject(obj, j));
                    i6 += zzu;
                    break;
                case 27:
                    zzu = zzbwk.zzp(i8, (List) unsafe.getObject(obj, j), zzF(i5));
                    i6 += zzu;
                    break;
                case 28:
                    zzu = zzbwk.zzc(i8, (List) unsafe.getObject(obj, j));
                    i6 += zzu;
                    break;
                case 29:
                    zzu = zzbwk.zzv(i8, (List) unsafe.getObject(obj, j), false);
                    i6 += zzu;
                    break;
                case 30:
                    z = false;
                    zzd = zzbwk.zzd(i8, (List) unsafe.getObject(obj, j), false);
                    i6 += zzd;
                    break;
                case 31:
                    z = false;
                    zzd = zzbwk.zzf(i8, (List) unsafe.getObject(obj, j), false);
                    i6 += zzd;
                    break;
                case 32:
                    z = false;
                    zzd = zzbwk.zzh(i8, (List) unsafe.getObject(obj, j), false);
                    i6 += zzd;
                    break;
                case 33:
                    z = false;
                    zzd = zzbwk.zzq(i8, (List) unsafe.getObject(obj, j), false);
                    i6 += zzd;
                    break;
                case 34:
                    z = false;
                    zzd = zzbwk.zzs(i8, (List) unsafe.getObject(obj, j), false);
                    i6 += zzd;
                    break;
                case 35:
                    zzi = zzbwk.zzi((List) unsafe.getObject(obj, j));
                    if (zzi > 0) {
                        zzL = zzbtm.zzL(i8);
                        zzM7 = zzbtm.zzM(zzi);
                        i2 = zzL + zzM7;
                        i6 += i2 + zzi;
                    }
                    break;
                case 36:
                    zzi = zzbwk.zzg((List) unsafe.getObject(obj, j));
                    if (zzi > 0) {
                        zzL = zzbtm.zzL(i8);
                        zzM7 = zzbtm.zzM(zzi);
                        i2 = zzL + zzM7;
                        i6 += i2 + zzi;
                    }
                    break;
                case 37:
                    zzi = zzbwk.zzn((List) unsafe.getObject(obj, j));
                    if (zzi > 0) {
                        zzL = zzbtm.zzL(i8);
                        zzM7 = zzbtm.zzM(zzi);
                        i2 = zzL + zzM7;
                        i6 += i2 + zzi;
                    }
                    break;
                case 38:
                    zzi = zzbwk.zzy((List) unsafe.getObject(obj, j));
                    if (zzi > 0) {
                        zzL = zzbtm.zzL(i8);
                        zzM7 = zzbtm.zzM(zzi);
                        i2 = zzL + zzM7;
                        i6 += i2 + zzi;
                    }
                    break;
                case 39:
                    zzi = zzbwk.zzl((List) unsafe.getObject(obj, j));
                    if (zzi > 0) {
                        zzL = zzbtm.zzL(i8);
                        zzM7 = zzbtm.zzM(zzi);
                        i2 = zzL + zzM7;
                        i6 += i2 + zzi;
                    }
                    break;
                case 40:
                    zzi = zzbwk.zzi((List) unsafe.getObject(obj, j));
                    if (zzi > 0) {
                        zzL = zzbtm.zzL(i8);
                        zzM7 = zzbtm.zzM(zzi);
                        i2 = zzL + zzM7;
                        i6 += i2 + zzi;
                    }
                    break;
                case 41:
                    zzi = zzbwk.zzg((List) unsafe.getObject(obj, j));
                    if (zzi > 0) {
                        zzL = zzbtm.zzL(i8);
                        zzM7 = zzbtm.zzM(zzi);
                        i2 = zzL + zzM7;
                        i6 += i2 + zzi;
                    }
                    break;
                case 42:
                    zzi = zzbwk.zzb((List) unsafe.getObject(obj, j));
                    if (zzi > 0) {
                        zzL = zzbtm.zzL(i8);
                        zzM7 = zzbtm.zzM(zzi);
                        i2 = zzL + zzM7;
                        i6 += i2 + zzi;
                    }
                    break;
                case 43:
                    zzi = zzbwk.zzw((List) unsafe.getObject(obj, j));
                    if (zzi > 0) {
                        zzL = zzbtm.zzL(i8);
                        zzM7 = zzbtm.zzM(zzi);
                        i2 = zzL + zzM7;
                        i6 += i2 + zzi;
                    }
                    break;
                case 44:
                    zzi = zzbwk.zze((List) unsafe.getObject(obj, j));
                    if (zzi > 0) {
                        zzL = zzbtm.zzL(i8);
                        zzM7 = zzbtm.zzM(zzi);
                        i2 = zzL + zzM7;
                        i6 += i2 + zzi;
                    }
                    break;
                case 45:
                    zzi = zzbwk.zzg((List) unsafe.getObject(obj, j));
                    if (zzi > 0) {
                        zzL = zzbtm.zzL(i8);
                        zzM7 = zzbtm.zzM(zzi);
                        i2 = zzL + zzM7;
                        i6 += i2 + zzi;
                    }
                    break;
                case 46:
                    zzi = zzbwk.zzi((List) unsafe.getObject(obj, j));
                    if (zzi > 0) {
                        zzL = zzbtm.zzL(i8);
                        zzM7 = zzbtm.zzM(zzi);
                        i2 = zzL + zzM7;
                        i6 += i2 + zzi;
                    }
                    break;
                case 47:
                    zzi = zzbwk.zzr((List) unsafe.getObject(obj, j));
                    if (zzi > 0) {
                        zzL = zzbtm.zzL(i8);
                        zzM7 = zzbtm.zzM(zzi);
                        i2 = zzL + zzM7;
                        i6 += i2 + zzi;
                    }
                    break;
                case 48:
                    zzi = zzbwk.zzt((List) unsafe.getObject(obj, j));
                    if (zzi > 0) {
                        zzL = zzbtm.zzL(i8);
                        zzM7 = zzbtm.zzM(zzi);
                        i2 = zzL + zzM7;
                        i6 += i2 + zzi;
                    }
                    break;
                case 49:
                    zzu = zzbwk.zzj(i8, (List) unsafe.getObject(obj, j), zzF(i5));
                    i6 += zzu;
                    break;
                case 50:
                    zzu = zzbvp.zza(i8, unsafe.getObject(obj, j), zzH(i5));
                    i6 += zzu;
                    break;
                case 51:
                    if (zzab(obj, i8, i5)) {
                        zzM8 = zzbtm.zzM(i8 << 3);
                        zzu = zzM8 + 8;
                        i6 += zzu;
                    }
                    break;
                case 52:
                    if (zzab(obj, i8, i5)) {
                        zzM9 = zzbtm.zzM(i8 << 3);
                        zzu = zzM9 + 4;
                        i6 += zzu;
                    }
                    break;
                case 53:
                    if (zzab(obj, i8, i5)) {
                        zzi = zzbtm.zzN(zzD(obj, j));
                        i2 = zzbtm.zzM(i8 << 3);
                        i6 += i2 + zzi;
                    }
                    break;
                case 54:
                    if (zzab(obj, i8, i5)) {
                        zzi = zzbtm.zzN(zzD(obj, j));
                        i2 = zzbtm.zzM(i8 << 3);
                        i6 += i2 + zzi;
                    }
                    break;
                case 55:
                    if (zzab(obj, i8, i5)) {
                        zzi = zzbtm.zzF(zzs(obj, j));
                        i2 = zzbtm.zzM(i8 << 3);
                        i6 += i2 + zzi;
                    }
                    break;
                case 56:
                    if (zzab(obj, i8, i5)) {
                        zzM8 = zzbtm.zzM(i8 << 3);
                        zzu = zzM8 + 8;
                        i6 += zzu;
                    }
                    break;
                case 57:
                    if (zzab(obj, i8, i5)) {
                        zzM9 = zzbtm.zzM(i8 << 3);
                        zzu = zzM9 + 4;
                        i6 += zzu;
                    }
                    break;
                case 58:
                    if (zzab(obj, i8, i5)) {
                        zzu = zzbtm.zzM(i8 << 3) + 1;
                        i6 += zzu;
                    }
                    break;
                case 59:
                    if (zzab(obj, i8, i5)) {
                        Object object2 = unsafe.getObject(obj, j);
                        if (object2 instanceof zzbsz) {
                            int i15 = zzbtm.zzf;
                            int zzd4 = ((zzbsz) object2).zzd();
                            zzM10 = zzbtm.zzM(zzd4) + zzd4;
                            zzM11 = zzbtm.zzM(i8 << 3);
                            zzu = zzM11 + zzM10;
                            i6 += zzu;
                        } else {
                            zzi = zzbtm.zzK((String) object2);
                            i2 = zzbtm.zzM(i8 << 3);
                            i6 += i2 + zzi;
                        }
                    }
                    break;
                case 60:
                    if (zzab(obj, i8, i5)) {
                        zzu = zzbwk.zzo(i8, unsafe.getObject(obj, j), zzF(i5));
                        i6 += zzu;
                    }
                    break;
                case 61:
                    if (zzab(obj, i8, i5)) {
                        zzbsz zzbszVar2 = (zzbsz) unsafe.getObject(obj, j);
                        int i16 = zzbtm.zzf;
                        int zzd5 = zzbszVar2.zzd();
                        zzM10 = zzbtm.zzM(zzd5) + zzd5;
                        zzM11 = zzbtm.zzM(i8 << 3);
                        zzu = zzM11 + zzM10;
                        i6 += zzu;
                    }
                    break;
                case 62:
                    if (zzab(obj, i8, i5)) {
                        zzi = zzbtm.zzM(zzs(obj, j));
                        i2 = zzbtm.zzM(i8 << 3);
                        i6 += i2 + zzi;
                    }
                    break;
                case 63:
                    if (zzab(obj, i8, i5)) {
                        zzi = zzbtm.zzF(zzs(obj, j));
                        i2 = zzbtm.zzM(i8 << 3);
                        i6 += i2 + zzi;
                    }
                    break;
                case 64:
                    if (zzab(obj, i8, i5)) {
                        zzM9 = zzbtm.zzM(i8 << 3);
                        zzu = zzM9 + 4;
                        i6 += zzu;
                    }
                    break;
                case 65:
                    if (zzab(obj, i8, i5)) {
                        zzM8 = zzbtm.zzM(i8 << 3);
                        zzu = zzM8 + 8;
                        i6 += zzu;
                    }
                    break;
                case 66:
                    if (zzab(obj, i8, i5)) {
                        int zzs = zzs(obj, j);
                        i2 = zzbtm.zzM(i8 << 3);
                        zzi = zzbtm.zzM((zzs >> 31) ^ (zzs + zzs));
                        i6 += i2 + zzi;
                    }
                    break;
                case 67:
                    if (zzab(obj, i8, i5)) {
                        long zzD = zzD(obj, j);
                        i6 += zzbtm.zzM(i8 << 3) + zzbtm.zzN((zzD >> 63) ^ (zzD + zzD));
                    }
                    break;
                case 68:
                    if (zzab(obj, i8, i5)) {
                        zzu = zzbtm.zzD(i8, (zzbvu) unsafe.getObject(obj, j), zzF(i5));
                        i6 += zzu;
                    }
                    break;
            }
            i5 += 3;
            i3 = 1048575;
        }
        int i17 = 0;
        zzbxc zzbxcVar = this.zzo;
        int zza2 = i6 + zzbxcVar.zza(zzbxcVar.zzd(obj));
        if (!this.zzh) {
            return zza2;
        }
        zzbtw zzb2 = this.zzp.zzb(obj);
        for (int i18 = 0; i18 < zzb2.zza.zzb(); i18++) {
            Map.Entry zzg = zzb2.zza.zzg(i18);
            i17 += zzbtw.zzb((zzbtv) zzg.getKey(), zzg.getValue());
        }
        for (Map.Entry entry : zzb2.zza.zzc()) {
            i17 += zzbtw.zzb((zzbtv) entry.getKey(), entry.getValue());
        }
        return zza2 + i17;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:10:0x0033. Please report as an issue. */
    private final int zzr(Object obj) {
        int zzM;
        int zzM2;
        int zzN;
        int zzM3;
        int zzM4;
        int zzM5;
        int zzM6;
        int zzo;
        int zzM7;
        int zzN2;
        int zzL;
        int zzM8;
        Unsafe unsafe = zzb;
        int i = 0;
        for (int i2 = 0; i2 < this.zzc.length; i2 += 3) {
            int zzC = zzC(i2);
            int zzB = zzB(zzC);
            int i3 = this.zzc[i2];
            int i4 = zzC & 1048575;
            if (zzB >= zzbtx.zzJ.zza() && zzB <= zzbtx.zzW.zza()) {
                int i5 = this.zzc[i2 + 2];
            }
            long j = i4;
            switch (zzB) {
                case 0:
                    if (zzX(obj, i2)) {
                        zzM = zzbtm.zzM(i3 << 3);
                        zzo = zzM + 8;
                        i += zzo;
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (zzX(obj, i2)) {
                        zzM2 = zzbtm.zzM(i3 << 3);
                        zzo = zzM2 + 4;
                        i += zzo;
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (zzX(obj, i2)) {
                        zzN = zzbtm.zzN(zzbxm.zzd(obj, j));
                        zzM3 = zzbtm.zzM(i3 << 3);
                        i += zzM3 + zzN;
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (zzX(obj, i2)) {
                        zzN = zzbtm.zzN(zzbxm.zzd(obj, j));
                        zzM3 = zzbtm.zzM(i3 << 3);
                        i += zzM3 + zzN;
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (zzX(obj, i2)) {
                        zzN = zzbtm.zzF(zzbxm.zzc(obj, j));
                        zzM3 = zzbtm.zzM(i3 << 3);
                        i += zzM3 + zzN;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (zzX(obj, i2)) {
                        zzM = zzbtm.zzM(i3 << 3);
                        zzo = zzM + 8;
                        i += zzo;
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (zzX(obj, i2)) {
                        zzM2 = zzbtm.zzM(i3 << 3);
                        zzo = zzM2 + 4;
                        i += zzo;
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (zzX(obj, i2)) {
                        zzM4 = zzbtm.zzM(i3 << 3);
                        zzo = zzM4 + 1;
                        i += zzo;
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (zzX(obj, i2)) {
                        Object zzf = zzbxm.zzf(obj, j);
                        if (zzf instanceof zzbsz) {
                            int i6 = i3 << 3;
                            int i7 = zzbtm.zzf;
                            int zzd = ((zzbsz) zzf).zzd();
                            zzM5 = zzbtm.zzM(zzd) + zzd;
                            zzM6 = zzbtm.zzM(i6);
                            zzo = zzM6 + zzM5;
                            i += zzo;
                            break;
                        } else {
                            zzN = zzbtm.zzK((String) zzf);
                            zzM3 = zzbtm.zzM(i3 << 3);
                            i += zzM3 + zzN;
                            break;
                        }
                    } else {
                        break;
                    }
                case 9:
                    if (zzX(obj, i2)) {
                        zzo = zzbwk.zzo(i3, zzbxm.zzf(obj, j), zzF(i2));
                        i += zzo;
                        break;
                    } else {
                        break;
                    }
                case 10:
                    if (zzX(obj, i2)) {
                        zzbsz zzbszVar = (zzbsz) zzbxm.zzf(obj, j);
                        int i8 = i3 << 3;
                        int i9 = zzbtm.zzf;
                        int zzd2 = zzbszVar.zzd();
                        zzM5 = zzbtm.zzM(zzd2) + zzd2;
                        zzM6 = zzbtm.zzM(i8);
                        zzo = zzM6 + zzM5;
                        i += zzo;
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (zzX(obj, i2)) {
                        zzN = zzbtm.zzM(zzbxm.zzc(obj, j));
                        zzM3 = zzbtm.zzM(i3 << 3);
                        i += zzM3 + zzN;
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (zzX(obj, i2)) {
                        zzN = zzbtm.zzF(zzbxm.zzc(obj, j));
                        zzM3 = zzbtm.zzM(i3 << 3);
                        i += zzM3 + zzN;
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (zzX(obj, i2)) {
                        zzM2 = zzbtm.zzM(i3 << 3);
                        zzo = zzM2 + 4;
                        i += zzo;
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (zzX(obj, i2)) {
                        zzM = zzbtm.zzM(i3 << 3);
                        zzo = zzM + 8;
                        i += zzo;
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (zzX(obj, i2)) {
                        int zzc = zzbxm.zzc(obj, j);
                        zzM3 = zzbtm.zzM(i3 << 3);
                        zzN = zzbtm.zzM((zzc >> 31) ^ (zzc + zzc));
                        i += zzM3 + zzN;
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (zzX(obj, i2)) {
                        long zzd3 = zzbxm.zzd(obj, j);
                        zzM7 = zzbtm.zzM(i3 << 3);
                        zzN2 = zzbtm.zzN((zzd3 + zzd3) ^ (zzd3 >> 63));
                        zzo = zzM7 + zzN2;
                        i += zzo;
                        break;
                    } else {
                        break;
                    }
                case 17:
                    if (zzX(obj, i2)) {
                        zzo = zzbtm.zzD(i3, (zzbvu) zzbxm.zzf(obj, j), zzF(i2));
                        i += zzo;
                        break;
                    } else {
                        break;
                    }
                case 18:
                    zzo = zzbwk.zzh(i3, (List) zzbxm.zzf(obj, j), false);
                    i += zzo;
                    break;
                case 19:
                    zzo = zzbwk.zzf(i3, (List) zzbxm.zzf(obj, j), false);
                    i += zzo;
                    break;
                case 20:
                    zzo = zzbwk.zzm(i3, (List) zzbxm.zzf(obj, j), false);
                    i += zzo;
                    break;
                case 21:
                    zzo = zzbwk.zzx(i3, (List) zzbxm.zzf(obj, j), false);
                    i += zzo;
                    break;
                case 22:
                    zzo = zzbwk.zzk(i3, (List) zzbxm.zzf(obj, j), false);
                    i += zzo;
                    break;
                case 23:
                    zzo = zzbwk.zzh(i3, (List) zzbxm.zzf(obj, j), false);
                    i += zzo;
                    break;
                case 24:
                    zzo = zzbwk.zzf(i3, (List) zzbxm.zzf(obj, j), false);
                    i += zzo;
                    break;
                case 25:
                    zzo = zzbwk.zza(i3, (List) zzbxm.zzf(obj, j), false);
                    i += zzo;
                    break;
                case 26:
                    zzo = zzbwk.zzu(i3, (List) zzbxm.zzf(obj, j));
                    i += zzo;
                    break;
                case 27:
                    zzo = zzbwk.zzp(i3, (List) zzbxm.zzf(obj, j), zzF(i2));
                    i += zzo;
                    break;
                case 28:
                    zzo = zzbwk.zzc(i3, (List) zzbxm.zzf(obj, j));
                    i += zzo;
                    break;
                case 29:
                    zzo = zzbwk.zzv(i3, (List) zzbxm.zzf(obj, j), false);
                    i += zzo;
                    break;
                case 30:
                    zzo = zzbwk.zzd(i3, (List) zzbxm.zzf(obj, j), false);
                    i += zzo;
                    break;
                case 31:
                    zzo = zzbwk.zzf(i3, (List) zzbxm.zzf(obj, j), false);
                    i += zzo;
                    break;
                case 32:
                    zzo = zzbwk.zzh(i3, (List) zzbxm.zzf(obj, j), false);
                    i += zzo;
                    break;
                case 33:
                    zzo = zzbwk.zzq(i3, (List) zzbxm.zzf(obj, j), false);
                    i += zzo;
                    break;
                case 34:
                    zzo = zzbwk.zzs(i3, (List) zzbxm.zzf(obj, j), false);
                    i += zzo;
                    break;
                case 35:
                    zzN = zzbwk.zzi((List) unsafe.getObject(obj, j));
                    if (zzN > 0) {
                        zzL = zzbtm.zzL(i3);
                        zzM8 = zzbtm.zzM(zzN);
                        zzM3 = zzL + zzM8;
                        i += zzM3 + zzN;
                        break;
                    } else {
                        break;
                    }
                case 36:
                    zzN = zzbwk.zzg((List) unsafe.getObject(obj, j));
                    if (zzN > 0) {
                        zzL = zzbtm.zzL(i3);
                        zzM8 = zzbtm.zzM(zzN);
                        zzM3 = zzL + zzM8;
                        i += zzM3 + zzN;
                        break;
                    } else {
                        break;
                    }
                case 37:
                    zzN = zzbwk.zzn((List) unsafe.getObject(obj, j));
                    if (zzN > 0) {
                        zzL = zzbtm.zzL(i3);
                        zzM8 = zzbtm.zzM(zzN);
                        zzM3 = zzL + zzM8;
                        i += zzM3 + zzN;
                        break;
                    } else {
                        break;
                    }
                case 38:
                    zzN = zzbwk.zzy((List) unsafe.getObject(obj, j));
                    if (zzN > 0) {
                        zzL = zzbtm.zzL(i3);
                        zzM8 = zzbtm.zzM(zzN);
                        zzM3 = zzL + zzM8;
                        i += zzM3 + zzN;
                        break;
                    } else {
                        break;
                    }
                case 39:
                    zzN = zzbwk.zzl((List) unsafe.getObject(obj, j));
                    if (zzN > 0) {
                        zzL = zzbtm.zzL(i3);
                        zzM8 = zzbtm.zzM(zzN);
                        zzM3 = zzL + zzM8;
                        i += zzM3 + zzN;
                        break;
                    } else {
                        break;
                    }
                case 40:
                    zzN = zzbwk.zzi((List) unsafe.getObject(obj, j));
                    if (zzN > 0) {
                        zzL = zzbtm.zzL(i3);
                        zzM8 = zzbtm.zzM(zzN);
                        zzM3 = zzL + zzM8;
                        i += zzM3 + zzN;
                        break;
                    } else {
                        break;
                    }
                case 41:
                    zzN = zzbwk.zzg((List) unsafe.getObject(obj, j));
                    if (zzN > 0) {
                        zzL = zzbtm.zzL(i3);
                        zzM8 = zzbtm.zzM(zzN);
                        zzM3 = zzL + zzM8;
                        i += zzM3 + zzN;
                        break;
                    } else {
                        break;
                    }
                case 42:
                    zzN = zzbwk.zzb((List) unsafe.getObject(obj, j));
                    if (zzN > 0) {
                        zzL = zzbtm.zzL(i3);
                        zzM8 = zzbtm.zzM(zzN);
                        zzM3 = zzL + zzM8;
                        i += zzM3 + zzN;
                        break;
                    } else {
                        break;
                    }
                case 43:
                    zzN = zzbwk.zzw((List) unsafe.getObject(obj, j));
                    if (zzN > 0) {
                        zzL = zzbtm.zzL(i3);
                        zzM8 = zzbtm.zzM(zzN);
                        zzM3 = zzL + zzM8;
                        i += zzM3 + zzN;
                        break;
                    } else {
                        break;
                    }
                case 44:
                    zzN = zzbwk.zze((List) unsafe.getObject(obj, j));
                    if (zzN > 0) {
                        zzL = zzbtm.zzL(i3);
                        zzM8 = zzbtm.zzM(zzN);
                        zzM3 = zzL + zzM8;
                        i += zzM3 + zzN;
                        break;
                    } else {
                        break;
                    }
                case 45:
                    zzN = zzbwk.zzg((List) unsafe.getObject(obj, j));
                    if (zzN > 0) {
                        zzL = zzbtm.zzL(i3);
                        zzM8 = zzbtm.zzM(zzN);
                        zzM3 = zzL + zzM8;
                        i += zzM3 + zzN;
                        break;
                    } else {
                        break;
                    }
                case 46:
                    zzN = zzbwk.zzi((List) unsafe.getObject(obj, j));
                    if (zzN > 0) {
                        zzL = zzbtm.zzL(i3);
                        zzM8 = zzbtm.zzM(zzN);
                        zzM3 = zzL + zzM8;
                        i += zzM3 + zzN;
                        break;
                    } else {
                        break;
                    }
                case 47:
                    zzN = zzbwk.zzr((List) unsafe.getObject(obj, j));
                    if (zzN > 0) {
                        zzL = zzbtm.zzL(i3);
                        zzM8 = zzbtm.zzM(zzN);
                        zzM3 = zzL + zzM8;
                        i += zzM3 + zzN;
                        break;
                    } else {
                        break;
                    }
                case 48:
                    zzN = zzbwk.zzt((List) unsafe.getObject(obj, j));
                    if (zzN > 0) {
                        zzL = zzbtm.zzL(i3);
                        zzM8 = zzbtm.zzM(zzN);
                        zzM3 = zzL + zzM8;
                        i += zzM3 + zzN;
                        break;
                    } else {
                        break;
                    }
                case 49:
                    zzo = zzbwk.zzj(i3, (List) zzbxm.zzf(obj, j), zzF(i2));
                    i += zzo;
                    break;
                case 50:
                    zzo = zzbvp.zza(i3, zzbxm.zzf(obj, j), zzH(i2));
                    i += zzo;
                    break;
                case 51:
                    if (zzab(obj, i3, i2)) {
                        zzM = zzbtm.zzM(i3 << 3);
                        zzo = zzM + 8;
                        i += zzo;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (zzab(obj, i3, i2)) {
                        zzM2 = zzbtm.zzM(i3 << 3);
                        zzo = zzM2 + 4;
                        i += zzo;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (zzab(obj, i3, i2)) {
                        zzN = zzbtm.zzN(zzD(obj, j));
                        zzM3 = zzbtm.zzM(i3 << 3);
                        i += zzM3 + zzN;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (zzab(obj, i3, i2)) {
                        zzN = zzbtm.zzN(zzD(obj, j));
                        zzM3 = zzbtm.zzM(i3 << 3);
                        i += zzM3 + zzN;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (zzab(obj, i3, i2)) {
                        zzN = zzbtm.zzF(zzs(obj, j));
                        zzM3 = zzbtm.zzM(i3 << 3);
                        i += zzM3 + zzN;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (zzab(obj, i3, i2)) {
                        zzM = zzbtm.zzM(i3 << 3);
                        zzo = zzM + 8;
                        i += zzo;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (zzab(obj, i3, i2)) {
                        zzM2 = zzbtm.zzM(i3 << 3);
                        zzo = zzM2 + 4;
                        i += zzo;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (zzab(obj, i3, i2)) {
                        zzM4 = zzbtm.zzM(i3 << 3);
                        zzo = zzM4 + 1;
                        i += zzo;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (zzab(obj, i3, i2)) {
                        Object zzf2 = zzbxm.zzf(obj, j);
                        if (zzf2 instanceof zzbsz) {
                            int i10 = i3 << 3;
                            int i11 = zzbtm.zzf;
                            int zzd4 = ((zzbsz) zzf2).zzd();
                            zzM5 = zzbtm.zzM(zzd4) + zzd4;
                            zzM6 = zzbtm.zzM(i10);
                            zzo = zzM6 + zzM5;
                            i += zzo;
                            break;
                        } else {
                            zzN = zzbtm.zzK((String) zzf2);
                            zzM3 = zzbtm.zzM(i3 << 3);
                            i += zzM3 + zzN;
                            break;
                        }
                    } else {
                        break;
                    }
                case 60:
                    if (zzab(obj, i3, i2)) {
                        zzo = zzbwk.zzo(i3, zzbxm.zzf(obj, j), zzF(i2));
                        i += zzo;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (zzab(obj, i3, i2)) {
                        zzbsz zzbszVar2 = (zzbsz) zzbxm.zzf(obj, j);
                        int i12 = i3 << 3;
                        int i13 = zzbtm.zzf;
                        int zzd5 = zzbszVar2.zzd();
                        zzM5 = zzbtm.zzM(zzd5) + zzd5;
                        zzM6 = zzbtm.zzM(i12);
                        zzo = zzM6 + zzM5;
                        i += zzo;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (zzab(obj, i3, i2)) {
                        zzN = zzbtm.zzM(zzs(obj, j));
                        zzM3 = zzbtm.zzM(i3 << 3);
                        i += zzM3 + zzN;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (zzab(obj, i3, i2)) {
                        zzN = zzbtm.zzF(zzs(obj, j));
                        zzM3 = zzbtm.zzM(i3 << 3);
                        i += zzM3 + zzN;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (zzab(obj, i3, i2)) {
                        zzM2 = zzbtm.zzM(i3 << 3);
                        zzo = zzM2 + 4;
                        i += zzo;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (zzab(obj, i3, i2)) {
                        zzM = zzbtm.zzM(i3 << 3);
                        zzo = zzM + 8;
                        i += zzo;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (zzab(obj, i3, i2)) {
                        int zzs = zzs(obj, j);
                        zzM3 = zzbtm.zzM(i3 << 3);
                        zzN = zzbtm.zzM((zzs >> 31) ^ (zzs + zzs));
                        i += zzM3 + zzN;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (zzab(obj, i3, i2)) {
                        long zzD = zzD(obj, j);
                        zzM7 = zzbtm.zzM(i3 << 3);
                        zzN2 = zzbtm.zzN((zzD + zzD) ^ (zzD >> 63));
                        zzo = zzM7 + zzN2;
                        i += zzo;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (zzab(obj, i3, i2)) {
                        zzo = zzbtm.zzD(i3, (zzbvu) zzbxm.zzf(obj, j), zzF(i2));
                        i += zzo;
                        break;
                    } else {
                        break;
                    }
            }
        }
        zzbxc zzbxcVar = this.zzo;
        return i + zzbxcVar.zza(zzbxcVar.zzd(obj));
    }

    private static int zzs(Object obj, long j) {
        return ((Integer) zzbxm.zzf(obj, j)).intValue();
    }

    private final int zzt(Object obj, byte[] bArr, int i, int i2, int i3, long j, zzbsl zzbslVar) throws IOException {
        Unsafe unsafe = zzb;
        Object zzH = zzH(i3);
        Object object = unsafe.getObject(obj, j);
        if (zzbvp.zzb(object)) {
            zzbvo zzb2 = zzbvo.zza().zzb();
            zzbvp.zzc(zzb2, object);
            unsafe.putObject(obj, j, zzb2);
            object = zzb2;
        }
        zzbvm zzc = ((zzbvn) zzH).zzc();
        zzbvo zzbvoVar = (zzbvo) object;
        int zzj = zzbsm.zzj(bArr, i, zzbslVar);
        int i4 = zzbslVar.zza;
        if (i4 < 0 || i4 > i2 - zzj) {
            throw zzbut.zzj();
        }
        int i5 = i4 + zzj;
        Object obj2 = zzc.zzb;
        Object obj3 = zzc.zzd;
        while (zzj < i5) {
            int i6 = zzj + 1;
            int i7 = bArr[zzj];
            if (i7 < 0) {
                i6 = zzbsm.zzk(i7, bArr, i6, zzbslVar);
                i7 = zzbslVar.zza;
            }
            int i8 = i6;
            int i9 = i7 & 7;
            int i10 = i7 >>> 3;
            if (i10 != 1) {
                if (i10 == 2 && i9 == zzc.zzc.zza()) {
                    zzj = zzad(bArr, i8, i2, zzc.zzc, zzc.zzd.getClass(), zzbslVar);
                    obj3 = zzbslVar.zzc;
                }
                zzj = zzbsm.zzp(i7, bArr, i8, i2, zzbslVar);
            } else if (i9 == zzc.zza.zza()) {
                zzj = zzad(bArr, i8, i2, zzc.zza, null, zzbslVar);
                obj2 = zzbslVar.zzc;
            } else {
                zzj = zzbsm.zzp(i7, bArr, i8, i2, zzbslVar);
            }
        }
        if (zzj != i5) {
            throw zzbut.zzg();
        }
        zzbvoVar.put(obj2, obj3);
        return i5;
    }

    private final int zzu(Object obj, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, zzbsl zzbslVar) throws IOException {
        Unsafe unsafe = zzb;
        long j2 = this.zzc[i8 + 2] & 1048575;
        switch (i7) {
            case 51:
                if (i5 == 1) {
                    unsafe.putObject(obj, j, Double.valueOf(Double.longBitsToDouble(zzbsm.zzq(bArr, i))));
                    int i9 = i + 8;
                    unsafe.putInt(obj, j2, i4);
                    return i9;
                }
                break;
            case 52:
                if (i5 == 5) {
                    unsafe.putObject(obj, j, Float.valueOf(Float.intBitsToFloat(zzbsm.zzb(bArr, i))));
                    int i10 = i + 4;
                    unsafe.putInt(obj, j2, i4);
                    return i10;
                }
                break;
            case 53:
            case 54:
                if (i5 == 0) {
                    int zzm = zzbsm.zzm(bArr, i, zzbslVar);
                    unsafe.putObject(obj, j, Long.valueOf(zzbslVar.zzb));
                    unsafe.putInt(obj, j2, i4);
                    return zzm;
                }
                break;
            case 55:
            case 62:
                if (i5 == 0) {
                    int zzj = zzbsm.zzj(bArr, i, zzbslVar);
                    unsafe.putObject(obj, j, Integer.valueOf(zzbslVar.zza));
                    unsafe.putInt(obj, j2, i4);
                    return zzj;
                }
                break;
            case 56:
            case 65:
                if (i5 == 1) {
                    unsafe.putObject(obj, j, Long.valueOf(zzbsm.zzq(bArr, i)));
                    int i11 = i + 8;
                    unsafe.putInt(obj, j2, i4);
                    return i11;
                }
                break;
            case 57:
            case 64:
                if (i5 == 5) {
                    unsafe.putObject(obj, j, Integer.valueOf(zzbsm.zzb(bArr, i)));
                    int i12 = i + 4;
                    unsafe.putInt(obj, j2, i4);
                    return i12;
                }
                break;
            case 58:
                if (i5 == 0) {
                    int zzm2 = zzbsm.zzm(bArr, i, zzbslVar);
                    unsafe.putObject(obj, j, Boolean.valueOf(zzbslVar.zzb != 0));
                    unsafe.putInt(obj, j2, i4);
                    return zzm2;
                }
                break;
            case 59:
                if (i5 == 2) {
                    int zzj2 = zzbsm.zzj(bArr, i, zzbslVar);
                    int i13 = zzbslVar.zza;
                    if (i13 == 0) {
                        unsafe.putObject(obj, j, "");
                    } else {
                        if ((i6 & 536870912) != 0 && !zzbxr.zzf(bArr, zzj2, zzj2 + i13)) {
                            throw zzbut.zzd();
                        }
                        unsafe.putObject(obj, j, new String(bArr, zzj2, i13, zzbur.zzb));
                        zzj2 += i13;
                    }
                    unsafe.putInt(obj, j2, i4);
                    return zzj2;
                }
                break;
            case 60:
                if (i5 == 2) {
                    Object zzJ = zzJ(obj, i4, i8);
                    int zzo = zzbsm.zzo(zzJ, zzF(i8), bArr, i, i2, zzbslVar);
                    zzS(obj, i4, i8, zzJ);
                    return zzo;
                }
                break;
            case 61:
                if (i5 == 2) {
                    int zza2 = zzbsm.zza(bArr, i, zzbslVar);
                    unsafe.putObject(obj, j, zzbslVar.zzc);
                    unsafe.putInt(obj, j2, i4);
                    return zza2;
                }
                break;
            case 63:
                if (i5 == 0) {
                    int zzj3 = zzbsm.zzj(bArr, i, zzbslVar);
                    int i14 = zzbslVar.zza;
                    zzbum zzE = zzE(i8);
                    if (zzE != null && !zzE.zza(i14)) {
                        zzd(obj).zzj(i3, Long.valueOf(i14));
                        return zzj3;
                    }
                    unsafe.putObject(obj, j, Integer.valueOf(i14));
                    unsafe.putInt(obj, j2, i4);
                    return zzj3;
                }
                break;
            case 66:
                if (i5 == 0) {
                    int zzj4 = zzbsm.zzj(bArr, i, zzbslVar);
                    unsafe.putObject(obj, j, Integer.valueOf(zzbtf.zzF(zzbslVar.zza)));
                    unsafe.putInt(obj, j2, i4);
                    return zzj4;
                }
                break;
            case 67:
                if (i5 == 0) {
                    int zzm3 = zzbsm.zzm(bArr, i, zzbslVar);
                    unsafe.putObject(obj, j, Long.valueOf(zzbtf.zzG(zzbslVar.zzb)));
                    unsafe.putInt(obj, j2, i4);
                    return zzm3;
                }
                break;
            case 68:
                if (i5 == 3) {
                    Object zzJ2 = zzJ(obj, i4, i8);
                    int zzn = zzbsm.zzn(zzJ2, zzF(i8), bArr, i, i2, (i3 & (-8)) | 4, zzbslVar);
                    zzS(obj, i4, i8, zzJ2);
                    return zzn;
                }
                break;
        }
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x02e4, code lost:
    
        if (r0 != r24) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x02e6, code lost:
    
        r14 = r31;
        r12 = r32;
        r13 = r34;
        r11 = r35;
        r2 = r15;
        r10 = r18;
        r1 = r23;
        r6 = r25;
        r7 = r26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x02f9, code lost:
    
        r2 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0325, code lost:
    
        if (r0 != r14) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0348, code lost:
    
        if (r0 != r14) goto L100;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:61:0x0091. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v10, types: [int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int zzv(java.lang.Object r31, byte[] r32, int r33, int r34, com.google.android.gms.internal.mlkit_vision_digital_ink.zzbsl r35) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 946
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_vision_digital_ink.zzbvx.zzv(java.lang.Object, byte[], int, int, com.google.android.gms.internal.mlkit_vision_digital_ink.zzbsl):int");
    }

    private final int zzw(Object obj, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, long j, int i7, long j2, zzbsl zzbslVar) throws IOException {
        int i8;
        int zzl;
        Unsafe unsafe = zzb;
        zzbuq zzbuqVar = (zzbuq) unsafe.getObject(obj, j2);
        if (!zzbuqVar.zzc()) {
            int size = zzbuqVar.size();
            zzbuqVar = zzbuqVar.zzd(size == 0 ? 10 : size + size);
            unsafe.putObject(obj, j2, zzbuqVar);
        }
        switch (i7) {
            case 18:
            case 35:
                if (i5 == 2) {
                    zzbto zzbtoVar = (zzbto) zzbuqVar;
                    int zzj = zzbsm.zzj(bArr, i, zzbslVar);
                    int i9 = zzbslVar.zza + zzj;
                    while (zzj < i9) {
                        zzbtoVar.zze(Double.longBitsToDouble(zzbsm.zzq(bArr, zzj)));
                        zzj += 8;
                    }
                    if (zzj == i9) {
                        return zzj;
                    }
                    throw zzbut.zzj();
                }
                if (i5 == 1) {
                    zzbto zzbtoVar2 = (zzbto) zzbuqVar;
                    zzbtoVar2.zze(Double.longBitsToDouble(zzbsm.zzq(bArr, i)));
                    int i10 = i + 8;
                    while (i10 < i2) {
                        int zzj2 = zzbsm.zzj(bArr, i10, zzbslVar);
                        if (i3 != zzbslVar.zza) {
                            return i10;
                        }
                        zzbtoVar2.zze(Double.longBitsToDouble(zzbsm.zzq(bArr, zzj2)));
                        i10 = zzj2 + 8;
                    }
                    return i10;
                }
                break;
            case 19:
            case 36:
                if (i5 == 2) {
                    zzbty zzbtyVar = (zzbty) zzbuqVar;
                    int zzj3 = zzbsm.zzj(bArr, i, zzbslVar);
                    int i11 = zzbslVar.zza + zzj3;
                    while (zzj3 < i11) {
                        zzbtyVar.zze(Float.intBitsToFloat(zzbsm.zzb(bArr, zzj3)));
                        zzj3 += 4;
                    }
                    if (zzj3 == i11) {
                        return zzj3;
                    }
                    throw zzbut.zzj();
                }
                if (i5 == 5) {
                    zzbty zzbtyVar2 = (zzbty) zzbuqVar;
                    zzbtyVar2.zze(Float.intBitsToFloat(zzbsm.zzb(bArr, i)));
                    int i12 = i + 4;
                    while (i12 < i2) {
                        int zzj4 = zzbsm.zzj(bArr, i12, zzbslVar);
                        if (i3 != zzbslVar.zza) {
                            return i12;
                        }
                        zzbtyVar2.zze(Float.intBitsToFloat(zzbsm.zzb(bArr, zzj4)));
                        i12 = zzj4 + 4;
                    }
                    return i12;
                }
                break;
            case 20:
            case 21:
            case 37:
            case 38:
                if (i5 == 2) {
                    zzbvi zzbviVar = (zzbvi) zzbuqVar;
                    int zzj5 = zzbsm.zzj(bArr, i, zzbslVar);
                    int i13 = zzbslVar.zza + zzj5;
                    while (zzj5 < i13) {
                        zzj5 = zzbsm.zzm(bArr, zzj5, zzbslVar);
                        zzbviVar.zzg(zzbslVar.zzb);
                    }
                    if (zzj5 == i13) {
                        return zzj5;
                    }
                    throw zzbut.zzj();
                }
                if (i5 == 0) {
                    zzbvi zzbviVar2 = (zzbvi) zzbuqVar;
                    int zzm = zzbsm.zzm(bArr, i, zzbslVar);
                    zzbviVar2.zzg(zzbslVar.zzb);
                    while (zzm < i2) {
                        int zzj6 = zzbsm.zzj(bArr, zzm, zzbslVar);
                        if (i3 != zzbslVar.zza) {
                            return zzm;
                        }
                        zzm = zzbsm.zzm(bArr, zzj6, zzbslVar);
                        zzbviVar2.zzg(zzbslVar.zzb);
                    }
                    return zzm;
                }
                break;
            case 22:
            case 29:
            case 39:
            case 43:
                if (i5 == 2) {
                    return zzbsm.zzf(bArr, i, zzbuqVar, zzbslVar);
                }
                if (i5 == 0) {
                    return zzbsm.zzl(i3, bArr, i, i2, zzbuqVar, zzbslVar);
                }
                break;
            case 23:
            case 32:
            case 40:
            case 46:
                if (i5 == 2) {
                    zzbvi zzbviVar3 = (zzbvi) zzbuqVar;
                    int zzj7 = zzbsm.zzj(bArr, i, zzbslVar);
                    int i14 = zzbslVar.zza + zzj7;
                    while (zzj7 < i14) {
                        zzbviVar3.zzg(zzbsm.zzq(bArr, zzj7));
                        zzj7 += 8;
                    }
                    if (zzj7 == i14) {
                        return zzj7;
                    }
                    throw zzbut.zzj();
                }
                if (i5 == 1) {
                    zzbvi zzbviVar4 = (zzbvi) zzbuqVar;
                    zzbviVar4.zzg(zzbsm.zzq(bArr, i));
                    int i15 = i + 8;
                    while (i15 < i2) {
                        int zzj8 = zzbsm.zzj(bArr, i15, zzbslVar);
                        if (i3 != zzbslVar.zza) {
                            return i15;
                        }
                        zzbviVar4.zzg(zzbsm.zzq(bArr, zzj8));
                        i15 = zzj8 + 8;
                    }
                    return i15;
                }
                break;
            case 24:
            case 31:
            case 41:
            case 45:
                if (i5 == 2) {
                    zzbuj zzbujVar = (zzbuj) zzbuqVar;
                    int zzj9 = zzbsm.zzj(bArr, i, zzbslVar);
                    int i16 = zzbslVar.zza + zzj9;
                    while (zzj9 < i16) {
                        zzbujVar.zzh(zzbsm.zzb(bArr, zzj9));
                        zzj9 += 4;
                    }
                    if (zzj9 == i16) {
                        return zzj9;
                    }
                    throw zzbut.zzj();
                }
                if (i5 == 5) {
                    zzbuj zzbujVar2 = (zzbuj) zzbuqVar;
                    zzbujVar2.zzh(zzbsm.zzb(bArr, i));
                    int i17 = i + 4;
                    while (i17 < i2) {
                        int zzj10 = zzbsm.zzj(bArr, i17, zzbslVar);
                        if (i3 != zzbslVar.zza) {
                            return i17;
                        }
                        zzbujVar2.zzh(zzbsm.zzb(bArr, zzj10));
                        i17 = zzj10 + 4;
                    }
                    return i17;
                }
                break;
            case 25:
            case 42:
                if (i5 == 2) {
                    zzbsn zzbsnVar = (zzbsn) zzbuqVar;
                    int zzj11 = zzbsm.zzj(bArr, i, zzbslVar);
                    int i18 = zzbslVar.zza + zzj11;
                    while (zzj11 < i18) {
                        zzj11 = zzbsm.zzm(bArr, zzj11, zzbslVar);
                        zzbsnVar.zze(zzbslVar.zzb != 0);
                    }
                    if (zzj11 == i18) {
                        return zzj11;
                    }
                    throw zzbut.zzj();
                }
                if (i5 == 0) {
                    zzbsn zzbsnVar2 = (zzbsn) zzbuqVar;
                    int zzm2 = zzbsm.zzm(bArr, i, zzbslVar);
                    zzbsnVar2.zze(zzbslVar.zzb != 0);
                    while (zzm2 < i2) {
                        int zzj12 = zzbsm.zzj(bArr, zzm2, zzbslVar);
                        if (i3 != zzbslVar.zza) {
                            return zzm2;
                        }
                        zzm2 = zzbsm.zzm(bArr, zzj12, zzbslVar);
                        zzbsnVar2.zze(zzbslVar.zzb != 0);
                    }
                    return zzm2;
                }
                break;
            case 26:
                if (i5 == 2) {
                    if ((j & SVG.f15808P) == 0) {
                        int zzj13 = zzbsm.zzj(bArr, i, zzbslVar);
                        int i19 = zzbslVar.zza;
                        if (i19 < 0) {
                            throw zzbut.zzf();
                        }
                        if (i19 == 0) {
                            zzbuqVar.add("");
                        } else {
                            zzbuqVar.add(new String(bArr, zzj13, i19, zzbur.zzb));
                            zzj13 += i19;
                        }
                        while (zzj13 < i2) {
                            int zzj14 = zzbsm.zzj(bArr, zzj13, zzbslVar);
                            if (i3 != zzbslVar.zza) {
                                return zzj13;
                            }
                            zzj13 = zzbsm.zzj(bArr, zzj14, zzbslVar);
                            int i20 = zzbslVar.zza;
                            if (i20 < 0) {
                                throw zzbut.zzf();
                            }
                            if (i20 == 0) {
                                zzbuqVar.add("");
                            } else {
                                zzbuqVar.add(new String(bArr, zzj13, i20, zzbur.zzb));
                                zzj13 += i20;
                            }
                        }
                        return zzj13;
                    }
                    int zzj15 = zzbsm.zzj(bArr, i, zzbslVar);
                    int i21 = zzbslVar.zza;
                    if (i21 < 0) {
                        throw zzbut.zzf();
                    }
                    if (i21 == 0) {
                        zzbuqVar.add("");
                        i8 = zzj15;
                    } else {
                        i8 = zzj15 + i21;
                        if (!zzbxr.zzf(bArr, zzj15, i8)) {
                            throw zzbut.zzd();
                        }
                        zzbuqVar.add(new String(bArr, zzj15, i21, zzbur.zzb));
                    }
                    while (i8 < i2) {
                        int zzj16 = zzbsm.zzj(bArr, i8, zzbslVar);
                        if (i3 != zzbslVar.zza) {
                            return i8;
                        }
                        i8 = zzbsm.zzj(bArr, zzj16, zzbslVar);
                        int i22 = zzbslVar.zza;
                        if (i22 < 0) {
                            throw zzbut.zzf();
                        }
                        if (i22 == 0) {
                            zzbuqVar.add("");
                        } else {
                            int i23 = i8 + i22;
                            if (!zzbxr.zzf(bArr, i8, i23)) {
                                throw zzbut.zzd();
                            }
                            zzbuqVar.add(new String(bArr, i8, i22, zzbur.zzb));
                            i8 = i23;
                        }
                    }
                    return i8;
                }
                break;
            case 27:
                if (i5 == 2) {
                    return zzbsm.zze(zzF(i6), i3, bArr, i, i2, zzbuqVar, zzbslVar);
                }
                break;
            case 28:
                if (i5 == 2) {
                    int zzj17 = zzbsm.zzj(bArr, i, zzbslVar);
                    int i24 = zzbslVar.zza;
                    if (i24 < 0) {
                        throw zzbut.zzf();
                    }
                    if (i24 > bArr.length - zzj17) {
                        throw zzbut.zzj();
                    }
                    if (i24 == 0) {
                        zzbuqVar.add(zzbsz.zzb);
                    } else {
                        zzbuqVar.add(zzbsz.zzm(bArr, zzj17, i24));
                        zzj17 += i24;
                    }
                    while (zzj17 < i2) {
                        int zzj18 = zzbsm.zzj(bArr, zzj17, zzbslVar);
                        if (i3 != zzbslVar.zza) {
                            return zzj17;
                        }
                        zzj17 = zzbsm.zzj(bArr, zzj18, zzbslVar);
                        int i25 = zzbslVar.zza;
                        if (i25 < 0) {
                            throw zzbut.zzf();
                        }
                        if (i25 > bArr.length - zzj17) {
                            throw zzbut.zzj();
                        }
                        if (i25 == 0) {
                            zzbuqVar.add(zzbsz.zzb);
                        } else {
                            zzbuqVar.add(zzbsz.zzm(bArr, zzj17, i25));
                            zzj17 += i25;
                        }
                    }
                    return zzj17;
                }
                break;
            case 30:
            case 44:
                if (i5 == 2) {
                    zzl = zzbsm.zzf(bArr, i, zzbuqVar, zzbslVar);
                } else if (i5 == 0) {
                    zzl = zzbsm.zzl(i3, bArr, i, i2, zzbuqVar, zzbslVar);
                }
                zzbwk.zzC(obj, i4, zzbuqVar, zzE(i6), null, this.zzo);
                return zzl;
            case 33:
            case 47:
                if (i5 == 2) {
                    zzbuj zzbujVar3 = (zzbuj) zzbuqVar;
                    int zzj19 = zzbsm.zzj(bArr, i, zzbslVar);
                    int i26 = zzbslVar.zza + zzj19;
                    while (zzj19 < i26) {
                        zzj19 = zzbsm.zzj(bArr, zzj19, zzbslVar);
                        zzbujVar3.zzh(zzbtf.zzF(zzbslVar.zza));
                    }
                    if (zzj19 == i26) {
                        return zzj19;
                    }
                    throw zzbut.zzj();
                }
                if (i5 == 0) {
                    zzbuj zzbujVar4 = (zzbuj) zzbuqVar;
                    int zzj20 = zzbsm.zzj(bArr, i, zzbslVar);
                    zzbujVar4.zzh(zzbtf.zzF(zzbslVar.zza));
                    while (zzj20 < i2) {
                        int zzj21 = zzbsm.zzj(bArr, zzj20, zzbslVar);
                        if (i3 != zzbslVar.zza) {
                            return zzj20;
                        }
                        zzj20 = zzbsm.zzj(bArr, zzj21, zzbslVar);
                        zzbujVar4.zzh(zzbtf.zzF(zzbslVar.zza));
                    }
                    return zzj20;
                }
                break;
            case 34:
            case 48:
                if (i5 == 2) {
                    zzbvi zzbviVar5 = (zzbvi) zzbuqVar;
                    int zzj22 = zzbsm.zzj(bArr, i, zzbslVar);
                    int i27 = zzbslVar.zza + zzj22;
                    while (zzj22 < i27) {
                        zzj22 = zzbsm.zzm(bArr, zzj22, zzbslVar);
                        zzbviVar5.zzg(zzbtf.zzG(zzbslVar.zzb));
                    }
                    if (zzj22 == i27) {
                        return zzj22;
                    }
                    throw zzbut.zzj();
                }
                if (i5 == 0) {
                    zzbvi zzbviVar6 = (zzbvi) zzbuqVar;
                    int zzm3 = zzbsm.zzm(bArr, i, zzbslVar);
                    zzbviVar6.zzg(zzbtf.zzG(zzbslVar.zzb));
                    while (zzm3 < i2) {
                        int zzj23 = zzbsm.zzj(bArr, zzm3, zzbslVar);
                        if (i3 != zzbslVar.zza) {
                            return zzm3;
                        }
                        zzm3 = zzbsm.zzm(bArr, zzj23, zzbslVar);
                        zzbviVar6.zzg(zzbtf.zzG(zzbslVar.zzb));
                    }
                    return zzm3;
                }
                break;
            default:
                if (i5 == 3) {
                    zzbwi zzF = zzF(i6);
                    int i28 = (i3 & (-8)) | 4;
                    int zzc = zzbsm.zzc(zzF, bArr, i, i2, i28, zzbslVar);
                    zzbuqVar.add(zzbslVar.zzc);
                    while (zzc < i2) {
                        int zzj24 = zzbsm.zzj(bArr, zzc, zzbslVar);
                        if (i3 != zzbslVar.zza) {
                            return zzc;
                        }
                        zzc = zzbsm.zzc(zzF, bArr, zzj24, i2, i28, zzbslVar);
                        zzbuqVar.add(zzbslVar.zzc);
                    }
                    return zzc;
                }
                break;
        }
        return i;
    }

    private final int zzx(int i) {
        if (i < this.zze || i > this.zzf) {
            return -1;
        }
        return zzA(i, 0);
    }

    private final int zzy(int i, int i2) {
        if (i < this.zze || i > this.zzf) {
            return -1;
        }
        return zzA(i, i2);
    }

    private final int zzz(int i) {
        return this.zzc[i + 2];
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwi
    public final int zza(Object obj) {
        return this.zzj ? zzr(obj) : zzq(obj);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x001a. Please report as an issue. */
    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwi
    public final int zzb(Object obj) {
        int i;
        int zzc;
        int length = this.zzc.length;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3 += 3) {
            int zzC = zzC(i3);
            int i4 = this.zzc[i3];
            long j = 1048575 & zzC;
            int i5 = 37;
            switch (zzB(zzC)) {
                case 0:
                    i = i2 * 53;
                    zzc = zzbur.zzc(Double.doubleToLongBits(zzbxm.zza(obj, j)));
                    i2 = i + zzc;
                    break;
                case 1:
                    i = i2 * 53;
                    zzc = Float.floatToIntBits(zzbxm.zzb(obj, j));
                    i2 = i + zzc;
                    break;
                case 2:
                    i = i2 * 53;
                    zzc = zzbur.zzc(zzbxm.zzd(obj, j));
                    i2 = i + zzc;
                    break;
                case 3:
                    i = i2 * 53;
                    zzc = zzbur.zzc(zzbxm.zzd(obj, j));
                    i2 = i + zzc;
                    break;
                case 4:
                    i = i2 * 53;
                    zzc = zzbxm.zzc(obj, j);
                    i2 = i + zzc;
                    break;
                case 5:
                    i = i2 * 53;
                    zzc = zzbur.zzc(zzbxm.zzd(obj, j));
                    i2 = i + zzc;
                    break;
                case 6:
                    i = i2 * 53;
                    zzc = zzbxm.zzc(obj, j);
                    i2 = i + zzc;
                    break;
                case 7:
                    i = i2 * 53;
                    zzc = zzbur.zza(zzbxm.zzw(obj, j));
                    i2 = i + zzc;
                    break;
                case 8:
                    i = i2 * 53;
                    zzc = ((String) zzbxm.zzf(obj, j)).hashCode();
                    i2 = i + zzc;
                    break;
                case 9:
                    Object zzf = zzbxm.zzf(obj, j);
                    if (zzf != null) {
                        i5 = zzf.hashCode();
                    }
                    i2 = (i2 * 53) + i5;
                    break;
                case 10:
                    i = i2 * 53;
                    zzc = zzbxm.zzf(obj, j).hashCode();
                    i2 = i + zzc;
                    break;
                case 11:
                    i = i2 * 53;
                    zzc = zzbxm.zzc(obj, j);
                    i2 = i + zzc;
                    break;
                case 12:
                    i = i2 * 53;
                    zzc = zzbxm.zzc(obj, j);
                    i2 = i + zzc;
                    break;
                case 13:
                    i = i2 * 53;
                    zzc = zzbxm.zzc(obj, j);
                    i2 = i + zzc;
                    break;
                case 14:
                    i = i2 * 53;
                    zzc = zzbur.zzc(zzbxm.zzd(obj, j));
                    i2 = i + zzc;
                    break;
                case 15:
                    i = i2 * 53;
                    zzc = zzbxm.zzc(obj, j);
                    i2 = i + zzc;
                    break;
                case 16:
                    i = i2 * 53;
                    zzc = zzbur.zzc(zzbxm.zzd(obj, j));
                    i2 = i + zzc;
                    break;
                case 17:
                    Object zzf2 = zzbxm.zzf(obj, j);
                    if (zzf2 != null) {
                        i5 = zzf2.hashCode();
                    }
                    i2 = (i2 * 53) + i5;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    i = i2 * 53;
                    zzc = zzbxm.zzf(obj, j).hashCode();
                    i2 = i + zzc;
                    break;
                case 50:
                    i = i2 * 53;
                    zzc = zzbxm.zzf(obj, j).hashCode();
                    i2 = i + zzc;
                    break;
                case 51:
                    if (zzab(obj, i4, i3)) {
                        i = i2 * 53;
                        zzc = zzbur.zzc(Double.doubleToLongBits(zzo(obj, j)));
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (zzab(obj, i4, i3)) {
                        i = i2 * 53;
                        zzc = Float.floatToIntBits(zzp(obj, j));
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (zzab(obj, i4, i3)) {
                        i = i2 * 53;
                        zzc = zzbur.zzc(zzD(obj, j));
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (zzab(obj, i4, i3)) {
                        i = i2 * 53;
                        zzc = zzbur.zzc(zzD(obj, j));
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (zzab(obj, i4, i3)) {
                        i = i2 * 53;
                        zzc = zzs(obj, j);
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (zzab(obj, i4, i3)) {
                        i = i2 * 53;
                        zzc = zzbur.zzc(zzD(obj, j));
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (zzab(obj, i4, i3)) {
                        i = i2 * 53;
                        zzc = zzs(obj, j);
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (zzab(obj, i4, i3)) {
                        i = i2 * 53;
                        zzc = zzbur.zza(zzac(obj, j));
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (zzab(obj, i4, i3)) {
                        i = i2 * 53;
                        zzc = ((String) zzbxm.zzf(obj, j)).hashCode();
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (zzab(obj, i4, i3)) {
                        i = i2 * 53;
                        zzc = zzbxm.zzf(obj, j).hashCode();
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (zzab(obj, i4, i3)) {
                        i = i2 * 53;
                        zzc = zzbxm.zzf(obj, j).hashCode();
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (zzab(obj, i4, i3)) {
                        i = i2 * 53;
                        zzc = zzs(obj, j);
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (zzab(obj, i4, i3)) {
                        i = i2 * 53;
                        zzc = zzs(obj, j);
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (zzab(obj, i4, i3)) {
                        i = i2 * 53;
                        zzc = zzs(obj, j);
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (zzab(obj, i4, i3)) {
                        i = i2 * 53;
                        zzc = zzbur.zzc(zzD(obj, j));
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (zzab(obj, i4, i3)) {
                        i = i2 * 53;
                        zzc = zzs(obj, j);
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (zzab(obj, i4, i3)) {
                        i = i2 * 53;
                        zzc = zzbur.zzc(zzD(obj, j));
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (zzab(obj, i4, i3)) {
                        i = i2 * 53;
                        zzc = zzbxm.zzf(obj, j).hashCode();
                        i2 = i + zzc;
                        break;
                    } else {
                        break;
                    }
            }
        }
        int hashCode = (i2 * 53) + this.zzo.zzd(obj).hashCode();
        return this.zzh ? (hashCode * 53) + this.zzp.zzb(obj).zza.hashCode() : hashCode;
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0546, code lost:
    
        r0 = r27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x054b, code lost:
    
        if (r0 == 1048575) goto L179;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x054d, code lost:
    
        r32.putInt(r12, r0, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0553, code lost:
    
        r10 = r9.zzl;
        r3 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x055a, code lost:
    
        if (r10 >= r9.zzm) goto L265;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x055c, code lost:
    
        r3 = zzG(r35, r9.zzk[r10], r3, r9.zzo, r35);
        r10 = r10 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x056f, code lost:
    
        if (r3 == null) goto L185;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0571, code lost:
    
        r9.zzo.zzn(r12, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0576, code lost:
    
        if (r7 != 0) goto L191;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x057a, code lost:
    
        if (r6 != r38) goto L189;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0581, code lost:
    
        throw com.google.android.gms.internal.mlkit_vision_digital_ink.zzbut.zzg();
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0588, code lost:
    
        return r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0584, code lost:
    
        if (r6 > r38) goto L195;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0586, code lost:
    
        if (r8 != r7) goto L195;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x058d, code lost:
    
        throw com.google.android.gms.internal.mlkit_vision_digital_ink.zzbut.zzg();
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:137:0x00a0. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:66:0x03ec. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzc(java.lang.Object r35, byte[] r36, int r37, int r38, int r39, com.google.android.gms.internal.mlkit_vision_digital_ink.zzbsl r40) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1500
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_vision_digital_ink.zzbvx.zzc(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.mlkit_vision_digital_ink.zzbsl):int");
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwi
    public final Object zze() {
        return ((zzbui) this.zzg).zzS();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwi
    public final void zzf(Object obj) {
        if (zzaa(obj)) {
            if (obj instanceof zzbui) {
                zzbui zzbuiVar = (zzbui) obj;
                zzbuiVar.zzae(Integer.MAX_VALUE);
                zzbuiVar.zzb = 0;
                zzbuiVar.zzac();
            }
            int length = this.zzc.length;
            for (int i = 0; i < length; i += 3) {
                int zzC = zzC(i);
                int i2 = 1048575 & zzC;
                int zzB = zzB(zzC);
                long j = i2;
                if (zzB != 9) {
                    switch (zzB) {
                        case 18:
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                        case 23:
                        case 24:
                        case 25:
                        case 26:
                        case 27:
                        case 28:
                        case 29:
                        case 30:
                        case 31:
                        case 32:
                        case 33:
                        case 34:
                        case 35:
                        case 36:
                        case 37:
                        case 38:
                        case 39:
                        case 40:
                        case 41:
                        case 42:
                        case 43:
                        case 44:
                        case 45:
                        case 46:
                        case 47:
                        case 48:
                        case 49:
                            this.zzn.zzb(obj, j);
                            break;
                        case 50:
                            Unsafe unsafe = zzb;
                            Object object = unsafe.getObject(obj, j);
                            if (object != null) {
                                ((zzbvo) object).zzc();
                                unsafe.putObject(obj, j, object);
                                break;
                            } else {
                                break;
                            }
                    }
                }
                if (zzX(obj, i)) {
                    zzF(i).zzf(zzb.getObject(obj, j));
                }
            }
            this.zzo.zzm(obj);
            if (this.zzh) {
                this.zzp.zzf(obj);
            }
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwi
    public final void zzg(Object obj, Object obj2) {
        zzL(obj);
        obj2.getClass();
        for (int i = 0; i < this.zzc.length; i += 3) {
            int zzC = zzC(i);
            int i2 = this.zzc[i];
            long j = 1048575 & zzC;
            switch (zzB(zzC)) {
                case 0:
                    if (zzX(obj2, i)) {
                        zzbxm.zzo(obj, j, zzbxm.zza(obj2, j));
                        zzP(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (zzX(obj2, i)) {
                        zzbxm.zzp(obj, j, zzbxm.zzb(obj2, j));
                        zzP(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (zzX(obj2, i)) {
                        zzbxm.zzr(obj, j, zzbxm.zzd(obj2, j));
                        zzP(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (zzX(obj2, i)) {
                        zzbxm.zzr(obj, j, zzbxm.zzd(obj2, j));
                        zzP(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (zzX(obj2, i)) {
                        zzbxm.zzq(obj, j, zzbxm.zzc(obj2, j));
                        zzP(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (zzX(obj2, i)) {
                        zzbxm.zzr(obj, j, zzbxm.zzd(obj2, j));
                        zzP(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (zzX(obj2, i)) {
                        zzbxm.zzq(obj, j, zzbxm.zzc(obj2, j));
                        zzP(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (zzX(obj2, i)) {
                        zzbxm.zzm(obj, j, zzbxm.zzw(obj2, j));
                        zzP(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (zzX(obj2, i)) {
                        zzbxm.zzs(obj, j, zzbxm.zzf(obj2, j));
                        zzP(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    zzM(obj, obj2, i);
                    break;
                case 10:
                    if (zzX(obj2, i)) {
                        zzbxm.zzs(obj, j, zzbxm.zzf(obj2, j));
                        zzP(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (zzX(obj2, i)) {
                        zzbxm.zzq(obj, j, zzbxm.zzc(obj2, j));
                        zzP(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (zzX(obj2, i)) {
                        zzbxm.zzq(obj, j, zzbxm.zzc(obj2, j));
                        zzP(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (zzX(obj2, i)) {
                        zzbxm.zzq(obj, j, zzbxm.zzc(obj2, j));
                        zzP(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (zzX(obj2, i)) {
                        zzbxm.zzr(obj, j, zzbxm.zzd(obj2, j));
                        zzP(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (zzX(obj2, i)) {
                        zzbxm.zzq(obj, j, zzbxm.zzc(obj2, j));
                        zzP(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (zzX(obj2, i)) {
                        zzbxm.zzr(obj, j, zzbxm.zzd(obj2, j));
                        zzP(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 17:
                    zzM(obj, obj2, i);
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    this.zzn.zzc(obj, obj2, j);
                    break;
                case 50:
                    zzbwk.zzaa(this.zzr, obj, obj2, j);
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                    if (zzab(obj2, i2, i)) {
                        zzbxm.zzs(obj, j, zzbxm.zzf(obj2, j));
                        zzQ(obj, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 60:
                    zzN(obj, obj2, i);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (zzab(obj2, i2, i)) {
                        zzbxm.zzs(obj, j, zzbxm.zzf(obj2, j));
                        zzQ(obj, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 68:
                    zzN(obj, obj2, i);
                    break;
            }
        }
        zzbwk.zzF(this.zzo, obj, obj2);
        if (this.zzh) {
            zzbwk.zzE(this.zzp, obj, obj2);
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:12:0x00c2. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0628 A[Catch: all -> 0x061d, TryCatch #8 {all -> 0x061d, blocks: (B:17:0x05f6, B:37:0x0623, B:39:0x0628, B:40:0x062d), top: B:16:0x05f6 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0633 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0660 A[LOOP:3: B:54:0x065c->B:56:0x0660, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0674  */
    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwi
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzh(java.lang.Object r18, com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwh r19, com.google.android.gms.internal.mlkit_vision_digital_ink.zzbtr r20) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1798
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_vision_digital_ink.zzbvx.zzh(java.lang.Object, com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwh, com.google.android.gms.internal.mlkit_vision_digital_ink.zzbtr):void");
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwi
    public final void zzi(Object obj, byte[] bArr, int i, int i2, zzbsl zzbslVar) throws IOException {
        if (this.zzj) {
            zzv(obj, bArr, i, i2, zzbslVar);
        } else {
            zzc(obj, bArr, i, i2, 0, zzbslVar);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0179  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x018a  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x01a6  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x01bb  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x01cc  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x01dd  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x01ee  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x01ff  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0210  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0221  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0232  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0243  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0254  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0265  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0276  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0287  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0298  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x02a9  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x02ba  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x02cb  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x02dc  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x02ed  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x02fe  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x030f  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0320  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0335  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0346  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x0357  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x0368  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x0379  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x038a  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x039b  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x03ac  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x03bd  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x03ce  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x03e3  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x03f4  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x0405  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x0416  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x0427  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x0438  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x0449  */
    /* JADX WARN: Removed duplicated region for block: B:223:0x045c  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x0471  */
    /* JADX WARN: Removed duplicated region for block: B:233:0x0482  */
    /* JADX WARN: Removed duplicated region for block: B:238:0x0493  */
    /* JADX WARN: Removed duplicated region for block: B:243:0x04a3  */
    /* JADX WARN: Removed duplicated region for block: B:248:0x04b3  */
    /* JADX WARN: Removed duplicated region for block: B:253:0x04c3  */
    /* JADX WARN: Removed duplicated region for block: B:258:0x04d3  */
    /* JADX WARN: Removed duplicated region for block: B:263:0x04e3  */
    /* JADX WARN: Removed duplicated region for block: B:268:0x04f3  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:273:0x0502 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:277:0x0508  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0135  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0157  */
    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwi
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzj(java.lang.Object r13, com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxu r14) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1464
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_vision_digital_ink.zzbvx.zzj(java.lang.Object, com.google.android.gms.internal.mlkit_vision_digital_ink.zzbxu):void");
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x0015. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:17:0x01c2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x01c3 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwi
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzk(java.lang.Object r9, java.lang.Object r10) {
        /*
            Method dump skipped, instructions count: 640
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_vision_digital_ink.zzbvx.zzk(java.lang.Object, java.lang.Object):boolean");
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbwi
    public final boolean zzl(Object obj) {
        int i;
        int i2;
        int i3 = 0;
        int i4 = 0;
        int i5 = 1048575;
        while (i4 < this.zzl) {
            int i6 = this.zzk[i4];
            int i7 = this.zzc[i6];
            int zzC = zzC(i6);
            int i8 = this.zzc[i6 + 2];
            int i9 = i8 & 1048575;
            int i10 = 1 << (i8 >>> 20);
            if (i9 != i5) {
                if (i9 != 1048575) {
                    i3 = zzb.getInt(obj, i9);
                }
                i2 = i3;
                i = i9;
            } else {
                i = i5;
                i2 = i3;
            }
            if ((268435456 & zzC) != 0 && !zzY(obj, i6, i, i2, i10)) {
                return false;
            }
            int zzB = zzB(zzC);
            if (zzB != 9 && zzB != 17) {
                if (zzB != 27) {
                    if (zzB == 60 || zzB == 68) {
                        if (zzab(obj, i7, i6) && !zzZ(obj, zzC, zzF(i6))) {
                            return false;
                        }
                    } else if (zzB != 49) {
                        if (zzB != 50) {
                            continue;
                        } else {
                            zzbvo zzbvoVar = (zzbvo) zzbxm.zzf(obj, zzC & 1048575);
                            if (!zzbvoVar.isEmpty() && ((zzbvn) zzH(i6)).zzc().zzc.zzb() == zzbxt.MESSAGE) {
                                zzbwi zzbwiVar = null;
                                for (Object obj2 : zzbvoVar.values()) {
                                    if (zzbwiVar == null) {
                                        zzbwiVar = zzbwe.zza().zzb(obj2.getClass());
                                    }
                                    if (!zzbwiVar.zzl(obj2)) {
                                        return false;
                                    }
                                }
                            }
                        }
                    }
                }
                List list = (List) zzbxm.zzf(obj, zzC & 1048575);
                if (list.isEmpty()) {
                    continue;
                } else {
                    zzbwi zzF = zzF(i6);
                    for (int i11 = 0; i11 < list.size(); i11++) {
                        if (!zzF.zzl(list.get(i11))) {
                            return false;
                        }
                    }
                }
            } else if (zzY(obj, i6, i, i2, i10) && !zzZ(obj, zzC, zzF(i6))) {
                return false;
            }
            i4++;
            i5 = i;
            i3 = i2;
        }
        return !this.zzh || this.zzp.zzb(obj).zzm();
    }
}
