package com.google.android.gms.internal.mlkit_vision_digital_ink;

import com.google.protobuf.C6868e0;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzbwk {
    private static final Class zza;
    private static final zzbxc zzb;
    private static final zzbxc zzc;
    private static final zzbxc zzd;

    static {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            cls = null;
        }
        zza = cls;
        zzb = zzab(false);
        zzc = zzab(true);
        zzd = new zzbxe();
    }

    public static zzbxc zzA() {
        return zzc;
    }

    public static zzbxc zzB() {
        return zzd;
    }

    public static Object zzC(Object obj, int i, List list, zzbum zzbumVar, Object obj2, zzbxc zzbxcVar) {
        if (zzbumVar == null) {
            return obj2;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int intValue = ((Integer) list.get(i3)).intValue();
                if (zzbumVar.zza(intValue)) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(intValue));
                    }
                    i2++;
                } else {
                    obj2 = zzD(obj, i, intValue, obj2, zzbxcVar);
                }
            }
            if (i2 != size) {
                list.subList(i2, size).clear();
                return obj2;
            }
        } else {
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                int intValue2 = ((Integer) it2.next()).intValue();
                if (!zzbumVar.zza(intValue2)) {
                    obj2 = zzD(obj, i, intValue2, obj2, zzbxcVar);
                    it2.remove();
                }
            }
        }
        return obj2;
    }

    public static Object zzD(Object obj, int i, int i2, Object obj2, zzbxc zzbxcVar) {
        if (obj2 == null) {
            obj2 = zzbxcVar.zzc(obj);
        }
        zzbxcVar.zzl(obj2, i, i2);
        return obj2;
    }

    public static void zzE(zzbts zzbtsVar, Object obj, Object obj2) {
        zzbtw zzb2 = zzbtsVar.zzb(obj2);
        if (zzb2.zza.isEmpty()) {
            return;
        }
        zzbtsVar.zzc(obj).zzi(zzb2);
    }

    public static void zzF(zzbxc zzbxcVar, Object obj, Object obj2) {
        zzbxcVar.zzo(obj, zzbxcVar.zze(zzbxcVar.zzd(obj), zzbxcVar.zzd(obj2)));
    }

    public static void zzG(Class cls) {
        Class cls2;
        if (!zzbui.class.isAssignableFrom(cls) && (cls2 = zza) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    public static void zzH(int i, List list, zzbxu zzbxuVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzbxuVar.zzc(i, list, z);
    }

    public static void zzI(int i, List list, zzbxu zzbxuVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzbxuVar.zze(i, list);
    }

    public static void zzJ(int i, List list, zzbxu zzbxuVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzbxuVar.zzg(i, list, z);
    }

    public static void zzK(int i, List list, zzbxu zzbxuVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzbxuVar.zzj(i, list, z);
    }

    public static void zzL(int i, List list, zzbxu zzbxuVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzbxuVar.zzl(i, list, z);
    }

    public static void zzM(int i, List list, zzbxu zzbxuVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzbxuVar.zzn(i, list, z);
    }

    public static void zzN(int i, List list, zzbxu zzbxuVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzbxuVar.zzp(i, list, z);
    }

    public static void zzO(int i, List list, zzbxu zzbxuVar, zzbwi zzbwiVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            ((zzbtn) zzbxuVar).zzq(i, list.get(i2), zzbwiVar);
        }
    }

    public static void zzP(int i, List list, zzbxu zzbxuVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzbxuVar.zzs(i, list, z);
    }

    public static void zzQ(int i, List list, zzbxu zzbxuVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzbxuVar.zzu(i, list, z);
    }

    public static void zzR(int i, List list, zzbxu zzbxuVar, zzbwi zzbwiVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            ((zzbtn) zzbxuVar).zzw(i, list.get(i2), zzbwiVar);
        }
    }

    public static void zzS(int i, List list, zzbxu zzbxuVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzbxuVar.zzz(i, list, z);
    }

    public static void zzT(int i, List list, zzbxu zzbxuVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzbxuVar.zzB(i, list, z);
    }

    public static void zzU(int i, List list, zzbxu zzbxuVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzbxuVar.zzD(i, list, z);
    }

    public static void zzV(int i, List list, zzbxu zzbxuVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzbxuVar.zzF(i, list, z);
    }

    public static void zzW(int i, List list, zzbxu zzbxuVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzbxuVar.zzI(i, list);
    }

    public static void zzX(int i, List list, zzbxu zzbxuVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzbxuVar.zzK(i, list, z);
    }

    public static void zzY(int i, List list, zzbxu zzbxuVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzbxuVar.zzM(i, list, z);
    }

    public static boolean zzZ(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static int zza(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (zzbtm.zzM(i << 3) + 1);
    }

    public static void zzaa(zzbvp zzbvpVar, Object obj, Object obj2, long j) {
        zzbxm.zzs(obj, j, zzbvp.zzc(zzbxm.zzf(obj, j), zzbxm.zzf(obj2, j)));
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    private static zzbxc zzab(boolean z) {
        if (C6868e0.class == 0) {
            return null;
        }
        try {
            return (zzbxc) C6868e0.class.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
        } catch (Throwable unused) {
            return null;
        }
    }

    public static int zzb(List list) {
        return list.size();
    }

    public static int zzc(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int zzL = size * zzbtm.zzL(i);
        for (int i2 = 0; i2 < list.size(); i2++) {
            zzL += zzbtm.zzC((zzbsz) list.get(i2));
        }
        return zzL;
    }

    public static int zzd(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zze(list) + (size * zzbtm.zzL(i));
    }

    public static int zze(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzbuj) {
            zzbuj zzbujVar = (zzbuj) list;
            i = 0;
            while (i2 < size) {
                i += zzbtm.zzF(zzbujVar.zze(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += zzbtm.zzF(((Integer) list.get(i2)).intValue());
                i2++;
            }
        }
        return i;
    }

    public static int zzf(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (zzbtm.zzM(i << 3) + 4);
    }

    public static int zzg(List list) {
        return list.size() * 4;
    }

    public static int zzh(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (zzbtm.zzM(i << 3) + 8);
    }

    public static int zzi(List list) {
        return list.size() * 8;
    }

    public static int zzj(int i, List list, zzbwi zzbwiVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            i2 += zzbtm.zzD(i, (zzbvu) list.get(i3), zzbwiVar);
        }
        return i2;
    }

    public static int zzk(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzl(list) + (size * zzbtm.zzL(i));
    }

    public static int zzl(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzbuj) {
            zzbuj zzbujVar = (zzbuj) list;
            i = 0;
            while (i2 < size) {
                i += zzbtm.zzF(zzbujVar.zze(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += zzbtm.zzF(((Integer) list.get(i2)).intValue());
                i2++;
            }
        }
        return i;
    }

    public static int zzm(int i, List list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        return zzn(list) + (list.size() * zzbtm.zzL(i));
    }

    public static int zzn(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzbvi) {
            zzbvi zzbviVar = (zzbvi) list;
            i = 0;
            while (i2 < size) {
                i += zzbtm.zzN(zzbviVar.zze(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += zzbtm.zzN(((Long) list.get(i2)).longValue());
                i2++;
            }
        }
        return i;
    }

    public static int zzo(int i, Object obj, zzbwi zzbwiVar) {
        if (!(obj instanceof zzbuz)) {
            return zzbtm.zzM(i << 3) + zzbtm.zzI((zzbvu) obj, zzbwiVar);
        }
        int i2 = zzbtm.zzf;
        int zza2 = ((zzbuz) obj).zza();
        return zzbtm.zzM(i << 3) + zzbtm.zzM(zza2) + zza2;
    }

    public static int zzp(int i, List list, zzbwi zzbwiVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int zzL = zzbtm.zzL(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            zzL += obj instanceof zzbuz ? zzbtm.zzG((zzbuz) obj) : zzbtm.zzI((zzbvu) obj, zzbwiVar);
        }
        return zzL;
    }

    public static int zzq(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzr(list) + (size * zzbtm.zzL(i));
    }

    public static int zzr(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzbuj) {
            zzbuj zzbujVar = (zzbuj) list;
            i = 0;
            while (i2 < size) {
                int zze = zzbujVar.zze(i2);
                i += zzbtm.zzM((zze >> 31) ^ (zze + zze));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                int intValue = ((Integer) list.get(i2)).intValue();
                i += zzbtm.zzM((intValue >> 31) ^ (intValue + intValue));
                i2++;
            }
        }
        return i;
    }

    public static int zzs(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzt(list) + (size * zzbtm.zzL(i));
    }

    public static int zzt(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzbvi) {
            zzbvi zzbviVar = (zzbvi) list;
            i = 0;
            while (i2 < size) {
                long zze = zzbviVar.zze(i2);
                i += zzbtm.zzN((zze >> 63) ^ (zze + zze));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                long longValue = ((Long) list.get(i2)).longValue();
                i += zzbtm.zzN((longValue >> 63) ^ (longValue + longValue));
                i2++;
            }
        }
        return i;
    }

    public static int zzu(int i, List list) {
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        boolean z = list instanceof zzbvb;
        int zzL = zzbtm.zzL(i) * size;
        if (z) {
            zzbvb zzbvbVar = (zzbvb) list;
            while (i2 < size) {
                Object zzf = zzbvbVar.zzf(i2);
                zzL += zzf instanceof zzbsz ? zzbtm.zzC((zzbsz) zzf) : zzbtm.zzK((String) zzf);
                i2++;
            }
        } else {
            while (i2 < size) {
                Object obj = list.get(i2);
                zzL += obj instanceof zzbsz ? zzbtm.zzC((zzbsz) obj) : zzbtm.zzK((String) obj);
                i2++;
            }
        }
        return zzL;
    }

    public static int zzv(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzw(list) + (size * zzbtm.zzL(i));
    }

    public static int zzw(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzbuj) {
            zzbuj zzbujVar = (zzbuj) list;
            i = 0;
            while (i2 < size) {
                i += zzbtm.zzM(zzbujVar.zze(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += zzbtm.zzM(((Integer) list.get(i2)).intValue());
                i2++;
            }
        }
        return i;
    }

    public static int zzx(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzy(list) + (size * zzbtm.zzL(i));
    }

    public static int zzy(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzbvi) {
            zzbvi zzbviVar = (zzbvi) list;
            i = 0;
            while (i2 < size) {
                i += zzbtm.zzN(zzbviVar.zze(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += zzbtm.zzN(((Long) list.get(i2)).longValue());
                i2++;
            }
        }
        return i;
    }

    public static zzbxc zzz() {
        return zzb;
    }
}
