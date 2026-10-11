package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.protobuf.C6868e0;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzalj {
    private static final Class<?> zza = zzd();
    private static final zzamg<?, ?> zzb = zzc();
    private static final zzamg<?, ?> zzc = new zzami();

    public static int zza(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzaim.zza(i, true);
    }

    public static int zzb(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzb(list) + (size * zzaim.zzi(i));
    }

    public static int zzc(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzaim.zzc(i, 0);
    }

    public static int zzd(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzaim.zza(i, 0L);
    }

    public static int zze(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zze(list) + (size * zzaim.zzi(i));
    }

    public static int zzf(int i, List<Long> list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        return zzf(list) + (list.size() * zzaim.zzi(i));
    }

    public static int zzg(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzg(list) + (size * zzaim.zzi(i));
    }

    public static int zzh(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzh(list) + (size * zzaim.zzi(i));
    }

    public static int zzi(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzi(list) + (size * zzaim.zzi(i));
    }

    public static int zzj(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzj(list) + (size * zzaim.zzi(i));
    }

    public static void zzk(int i, List<Integer> list, zzanc zzancVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzancVar.zzk(i, list, z);
    }

    public static void zzl(int i, List<Long> list, zzanc zzancVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzancVar.zzl(i, list, z);
    }

    public static void zzm(int i, List<Integer> list, zzanc zzancVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzancVar.zzm(i, list, z);
    }

    public static void zzn(int i, List<Long> list, zzanc zzancVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzancVar.zzn(i, list, z);
    }

    public static int zza(List<?> list) {
        return list.size();
    }

    public static int zzc(List<?> list) {
        return list.size() << 2;
    }

    public static int zzd(List<?> list) {
        return list.size() << 3;
    }

    public static int zza(int i, List<zzaho> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int zzi = size * zzaim.zzi(i);
        for (int i2 = 0; i2 < list.size(); i2++) {
            zzi += zzaim.zza(list.get(i2));
        }
        return zzi;
    }

    public static int zzb(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzajf) {
            zzajf zzajfVar = (zzajf) list;
            i = 0;
            while (i2 < size) {
                i += zzaim.zzc(zzajfVar.zzb(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += zzaim.zzc(list.get(i2).intValue());
                i2++;
            }
        }
        return i;
    }

    private static zzamg<?, ?> zzc() {
        try {
            Class<?> zze = zze();
            if (zze == null) {
                return null;
            }
            return (zzamg) zze.getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Class<?> zzd() {
        try {
            return Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            return null;
        }
    }

    public static int zze(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzajf) {
            zzajf zzajfVar = (zzajf) list;
            i = 0;
            while (i2 < size) {
                i += zzaim.zze(zzajfVar.zzb(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += zzaim.zze(list.get(i2).intValue());
                i2++;
            }
        }
        return i;
    }

    public static int zzf(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzaka) {
            zzaka zzakaVar = (zzaka) list;
            i = 0;
            while (i2 < size) {
                i += zzaim.zzd(zzakaVar.zzb(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += zzaim.zzd(list.get(i2).longValue());
                i2++;
            }
        }
        return i;
    }

    public static int zzg(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzajf) {
            zzajf zzajfVar = (zzajf) list;
            i = 0;
            while (i2 < size) {
                i += zzaim.zzh(zzajfVar.zzb(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += zzaim.zzh(list.get(i2).intValue());
                i2++;
            }
        }
        return i;
    }

    public static int zzh(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzaka) {
            zzaka zzakaVar = (zzaka) list;
            i = 0;
            while (i2 < size) {
                i += zzaim.zzf(zzakaVar.zzb(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += zzaim.zzf(list.get(i2).longValue());
                i2++;
            }
        }
        return i;
    }

    public static int zzi(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzajf) {
            zzajf zzajfVar = (zzajf) list;
            i = 0;
            while (i2 < size) {
                i += zzaim.zzj(zzajfVar.zzb(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += zzaim.zzj(list.get(i2).intValue());
                i2++;
            }
        }
        return i;
    }

    public static int zzj(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzaka) {
            zzaka zzakaVar = (zzaka) list;
            i = 0;
            while (i2 < size) {
                i += zzaim.zzg(zzakaVar.zzb(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += zzaim.zzg(list.get(i2).longValue());
                i2++;
            }
        }
        return i;
    }

    public static void zzd(int i, List<Integer> list, zzanc zzancVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzancVar.zzd(i, list, z);
    }

    public static void zzc(int i, List<Integer> list, zzanc zzancVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzancVar.zzc(i, list, z);
    }

    public static int zza(int i, List<zzakp> list, zzalh zzalhVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            i2 += zzaim.zza(i, list.get(i3), zzalhVar);
        }
        return i2;
    }

    public static int zzb(int i, List<?> list, zzalh zzalhVar) {
        int zza2;
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int zzi = zzaim.zzi(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            if (obj instanceof zzajt) {
                zza2 = zzaim.zza((zzajt) obj);
            } else {
                zza2 = zzaim.zza((zzakp) obj, zzalhVar);
            }
            zzi += zza2;
        }
        return zzi;
    }

    private static Class<?> zze() {
        return C6868e0.class;
    }

    public static void zzf(int i, List<Float> list, zzanc zzancVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzancVar.zzf(i, list, z);
    }

    public static void zzg(int i, List<Integer> list, zzanc zzancVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzancVar.zzg(i, list, z);
    }

    public static void zzh(int i, List<Long> list, zzanc zzancVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzancVar.zzh(i, list, z);
    }

    public static void zzi(int i, List<Integer> list, zzanc zzancVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzancVar.zzi(i, list, z);
    }

    public static void zzj(int i, List<Long> list, zzanc zzancVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzancVar.zzj(i, list, z);
    }

    public static int zza(int i, Object obj, zzalh zzalhVar) {
        if (obj instanceof zzajt) {
            return zzaim.zzb(i, (zzajt) obj);
        }
        return zzaim.zzb(i, (zzakp) obj, zzalhVar);
    }

    public static void zze(int i, List<Long> list, zzanc zzancVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzancVar.zze(i, list, z);
    }

    public static zzamg<?, ?> zza() {
        return zzb;
    }

    public static <UT, UB> UB zza(Object obj, int i, List<Integer> list, zzaji zzajiVar, UB ub, zzamg<UT, UB> zzamgVar) {
        if (zzajiVar == null) {
            return ub;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int intValue = list.get(i3).intValue();
                if (zzajiVar.zza(intValue)) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(intValue));
                    }
                    i2++;
                } else {
                    ub = (UB) zza(obj, i, intValue, ub, zzamgVar);
                }
            }
            if (i2 != size) {
                list.subList(i2, size).clear();
            }
        } else {
            Iterator<Integer> it2 = list.iterator();
            while (it2.hasNext()) {
                int intValue2 = it2.next().intValue();
                if (!zzajiVar.zza(intValue2)) {
                    ub = (UB) zza(obj, i, intValue2, ub, zzamgVar);
                    it2.remove();
                }
            }
        }
        return ub;
    }

    public static int zzb(int i, List<?> list) {
        int zza2;
        int zza3;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        int zzi = zzaim.zzi(i) * size;
        if (list instanceof zzajv) {
            zzajv zzajvVar = (zzajv) list;
            while (i2 < size) {
                Object zzb2 = zzajvVar.zzb(i2);
                if (zzb2 instanceof zzaho) {
                    zza3 = zzaim.zza((zzaho) zzb2);
                } else {
                    zza3 = zzaim.zza((String) zzb2);
                }
                zzi += zza3;
                i2++;
            }
        } else {
            while (i2 < size) {
                Object obj = list.get(i2);
                if (obj instanceof zzaho) {
                    zza2 = zzaim.zza((zzaho) obj);
                } else {
                    zza2 = zzaim.zza((String) obj);
                }
                zzi += zza2;
                i2++;
            }
        }
        return zzi;
    }

    public static <UT, UB> UB zza(Object obj, int i, int i2, UB ub, zzamg<UT, UB> zzamgVar) {
        if (ub == null) {
            ub = zzamgVar.zzc(obj);
        }
        zzamgVar.zzb(ub, i, i2);
        return ub;
    }

    public static zzamg<?, ?> zzb() {
        return zzc;
    }

    public static <T, FT extends zzaiz<FT>> void zza(zzais<FT> zzaisVar, T t, T t2) {
        zzaix<FT> zza2 = zzaisVar.zza(t2);
        if (zza2.zza.isEmpty()) {
            return;
        }
        zzaisVar.zzb(t).zza(zza2);
    }

    public static void zzb(int i, List<Double> list, zzanc zzancVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzancVar.zzb(i, list, z);
    }

    public static void zzb(int i, List<?> list, zzanc zzancVar, zzalh zzalhVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzancVar.zzb(i, list, zzalhVar);
    }

    public static <T> void zza(zzaki zzakiVar, T t, T t2, long j) {
        zzamm.zza(t, j, zzakiVar.zza(zzamm.zze(t, j), zzamm.zze(t2, j)));
    }

    public static void zzb(int i, List<String> list, zzanc zzancVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzancVar.zzb(i, list);
    }

    public static <T, UT, UB> void zza(zzamg<UT, UB> zzamgVar, T t, T t2) {
        zzamgVar.zzc(t, zzamgVar.zza(zzamgVar.zzd(t), zzamgVar.zzd(t2)));
    }

    public static void zza(Class<?> cls) {
        Class<?> cls2;
        if (!zzaje.class.isAssignableFrom(cls) && (cls2 = zza) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    public static void zza(int i, List<Boolean> list, zzanc zzancVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzancVar.zza(i, list, z);
    }

    public static void zza(int i, List<zzaho> list, zzanc zzancVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzancVar.zza(i, list);
    }

    public static void zza(int i, List<?> list, zzanc zzancVar, zzalh zzalhVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzancVar.zza(i, list, zzalhVar);
    }

    public static boolean zza(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }
}
