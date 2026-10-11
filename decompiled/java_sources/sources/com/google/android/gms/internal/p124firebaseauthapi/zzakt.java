package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.protobuf.C6884u;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzakt<T> implements zzalh<T> {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzamm.zzb();
    private final int[] zzc;
    private final Object[] zzd;
    private final int zze;
    private final int zzf;
    private final zzakp zzg;
    private final boolean zzh;
    private final boolean zzi;
    private final zzala zzj;
    private final boolean zzk;
    private final int[] zzl;
    private final int zzm;
    private final int zzn;
    private final zzakx zzo;
    private final zzaju zzp;
    private final zzamg<?, ?> zzq;
    private final zzais<?> zzr;
    private final zzaki zzs;

    private zzakt(int[] iArr, Object[] objArr, int i, int i2, zzakp zzakpVar, zzala zzalaVar, boolean z, int[] iArr2, int i3, int i4, zzakx zzakxVar, zzaju zzajuVar, zzamg<?, ?> zzamgVar, zzais<?> zzaisVar, zzaki zzakiVar) {
        this.zzc = iArr;
        this.zzd = objArr;
        this.zze = i;
        this.zzf = i2;
        this.zzi = zzakpVar instanceof zzaje;
        this.zzj = zzalaVar;
        this.zzh = zzaisVar != null && zzaisVar.zza(zzakpVar);
        this.zzk = false;
        this.zzl = iArr2;
        this.zzm = i3;
        this.zzn = i4;
        this.zzo = zzakxVar;
        this.zzp = zzajuVar;
        this.zzq = zzamgVar;
        this.zzr = zzaisVar;
        this.zzg = zzakpVar;
        this.zzs = zzakiVar;
    }

    private static <T> double zza(T t, long j) {
        return ((Double) zzamm.zze(t, j)).doubleValue();
    }

    private static <T> float zzb(T t, long j) {
        return ((Float) zzamm.zze(t, j)).floatValue();
    }

    private static <T> int zzc(T t, long j) {
        return ((Integer) zzamm.zze(t, j)).intValue();
    }

    private static <T> long zzd(T t, long j) {
        return ((Long) zzamm.zze(t, j)).longValue();
    }

    private final zzalh zze(int i) {
        int i2 = (i / 3) << 1;
        zzalh zzalhVar = (zzalh) this.zzd[i2];
        if (zzalhVar != null) {
            return zzalhVar;
        }
        zzalh<T> zza2 = zzald.zza().zza((Class) this.zzd[i2 + 1]);
        this.zzd[i2] = zza2;
        return zza2;
    }

    private final Object zzf(int i) {
        return this.zzd[(i / 3) << 1];
    }

    private static boolean zzg(int i) {
        return (i & 536870912) != 0;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0008. Please report as an issue. */
    private static int zza(byte[] bArr, int i, int i2, zzamt zzamtVar, Class<?> cls, zzahn zzahnVar) throws IOException {
        switch (zzaks.zza[zzamtVar.ordinal()]) {
            case 1:
                int zzd = zzahk.zzd(bArr, i, zzahnVar);
                zzahnVar.zzc = Boolean.valueOf(zzahnVar.zzb != 0);
                return zzd;
            case 2:
                return zzahk.zza(bArr, i, zzahnVar);
            case 3:
                zzahnVar.zzc = Double.valueOf(zzahk.zza(bArr, i));
                return i + 8;
            case 4:
            case 5:
                zzahnVar.zzc = Integer.valueOf(zzahk.zzc(bArr, i));
                return i + 4;
            case 6:
            case 7:
                zzahnVar.zzc = Long.valueOf(zzahk.zzd(bArr, i));
                return i + 8;
            case 8:
                zzahnVar.zzc = Float.valueOf(zzahk.zzb(bArr, i));
                return i + 4;
            case 9:
            case 10:
            case 11:
                int zzc = zzahk.zzc(bArr, i, zzahnVar);
                zzahnVar.zzc = Integer.valueOf(zzahnVar.zza);
                return zzc;
            case 12:
            case 13:
                int zzd2 = zzahk.zzd(bArr, i, zzahnVar);
                zzahnVar.zzc = Long.valueOf(zzahnVar.zzb);
                return zzd2;
            case 14:
                return zzahk.zza(zzald.zza().zza((Class) cls), bArr, i, i2, zzahnVar);
            case 15:
                int zzc2 = zzahk.zzc(bArr, i, zzahnVar);
                zzahnVar.zzc = Integer.valueOf(zzaic.zza(zzahnVar.zza));
                return zzc2;
            case 16:
                int zzd3 = zzahk.zzd(bArr, i, zzahnVar);
                zzahnVar.zzc = Long.valueOf(zzaic.zza(zzahnVar.zzb));
                return zzd3;
            case 17:
                return zzahk.zzb(bArr, i, zzahnVar);
            default:
                throw new RuntimeException("unsupported field type.");
        }
    }

    private final int zzc(int i) {
        return this.zzc[i + 1];
    }

    private final zzaji zzd(int i) {
        return (zzaji) this.zzd[((i / 3) << 1) + 1];
    }

    private static void zzf(Object obj) {
        if (zzg(obj)) {
            return;
        }
        throw new IllegalArgumentException("Mutating immutable message: " + String.valueOf(obj));
    }

    private static boolean zzg(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof zzaje) {
            return ((zzaje) obj).zzu();
        }
        return true;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x001b. Please report as an issue. */
    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzalh
    public final int zzb(T t) {
        int i;
        int zza2;
        int length = this.zzc.length;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3 += 3) {
            int zzc = zzc(i3);
            int i4 = this.zzc[i3];
            long j = 1048575 & zzc;
            int i5 = 37;
            switch ((zzc & C6884u.f38162u) >>> 20) {
                case 0:
                    i = i2 * 53;
                    zza2 = zzajh.zza(Double.doubleToLongBits(zzamm.zza(t, j)));
                    i2 = i + zza2;
                    break;
                case 1:
                    i = i2 * 53;
                    zza2 = Float.floatToIntBits(zzamm.zzb(t, j));
                    i2 = i + zza2;
                    break;
                case 2:
                    i = i2 * 53;
                    zza2 = zzajh.zza(zzamm.zzd(t, j));
                    i2 = i + zza2;
                    break;
                case 3:
                    i = i2 * 53;
                    zza2 = zzajh.zza(zzamm.zzd(t, j));
                    i2 = i + zza2;
                    break;
                case 4:
                    i = i2 * 53;
                    zza2 = zzamm.zzc(t, j);
                    i2 = i + zza2;
                    break;
                case 5:
                    i = i2 * 53;
                    zza2 = zzajh.zza(zzamm.zzd(t, j));
                    i2 = i + zza2;
                    break;
                case 6:
                    i = i2 * 53;
                    zza2 = zzamm.zzc(t, j);
                    i2 = i + zza2;
                    break;
                case 7:
                    i = i2 * 53;
                    zza2 = zzajh.zza(zzamm.zzh(t, j));
                    i2 = i + zza2;
                    break;
                case 8:
                    i = i2 * 53;
                    zza2 = ((String) zzamm.zze(t, j)).hashCode();
                    i2 = i + zza2;
                    break;
                case 9:
                    Object zze = zzamm.zze(t, j);
                    if (zze != null) {
                        i5 = zze.hashCode();
                    }
                    i2 = (i2 * 53) + i5;
                    break;
                case 10:
                    i = i2 * 53;
                    zza2 = zzamm.zze(t, j).hashCode();
                    i2 = i + zza2;
                    break;
                case 11:
                    i = i2 * 53;
                    zza2 = zzamm.zzc(t, j);
                    i2 = i + zza2;
                    break;
                case 12:
                    i = i2 * 53;
                    zza2 = zzamm.zzc(t, j);
                    i2 = i + zza2;
                    break;
                case 13:
                    i = i2 * 53;
                    zza2 = zzamm.zzc(t, j);
                    i2 = i + zza2;
                    break;
                case 14:
                    i = i2 * 53;
                    zza2 = zzajh.zza(zzamm.zzd(t, j));
                    i2 = i + zza2;
                    break;
                case 15:
                    i = i2 * 53;
                    zza2 = zzamm.zzc(t, j);
                    i2 = i + zza2;
                    break;
                case 16:
                    i = i2 * 53;
                    zza2 = zzajh.zza(zzamm.zzd(t, j));
                    i2 = i + zza2;
                    break;
                case 17:
                    Object zze2 = zzamm.zze(t, j);
                    if (zze2 != null) {
                        i5 = zze2.hashCode();
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
                    zza2 = zzamm.zze(t, j).hashCode();
                    i2 = i + zza2;
                    break;
                case 50:
                    i = i2 * 53;
                    zza2 = zzamm.zze(t, j).hashCode();
                    i2 = i + zza2;
                    break;
                case 51:
                    if (zzc((zzakt<T>) t, i4, i3)) {
                        i = i2 * 53;
                        zza2 = zzajh.zza(Double.doubleToLongBits(zza(t, j)));
                        i2 = i + zza2;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (zzc((zzakt<T>) t, i4, i3)) {
                        i = i2 * 53;
                        zza2 = Float.floatToIntBits(zzb(t, j));
                        i2 = i + zza2;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (zzc((zzakt<T>) t, i4, i3)) {
                        i = i2 * 53;
                        zza2 = zzajh.zza(zzd(t, j));
                        i2 = i + zza2;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (zzc((zzakt<T>) t, i4, i3)) {
                        i = i2 * 53;
                        zza2 = zzajh.zza(zzd(t, j));
                        i2 = i + zza2;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (zzc((zzakt<T>) t, i4, i3)) {
                        i = i2 * 53;
                        zza2 = zzc(t, j);
                        i2 = i + zza2;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (zzc((zzakt<T>) t, i4, i3)) {
                        i = i2 * 53;
                        zza2 = zzajh.zza(zzd(t, j));
                        i2 = i + zza2;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (zzc((zzakt<T>) t, i4, i3)) {
                        i = i2 * 53;
                        zza2 = zzc(t, j);
                        i2 = i + zza2;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (zzc((zzakt<T>) t, i4, i3)) {
                        i = i2 * 53;
                        zza2 = zzajh.zza(zze(t, j));
                        i2 = i + zza2;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (zzc((zzakt<T>) t, i4, i3)) {
                        i = i2 * 53;
                        zza2 = ((String) zzamm.zze(t, j)).hashCode();
                        i2 = i + zza2;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    if (zzc((zzakt<T>) t, i4, i3)) {
                        i = i2 * 53;
                        zza2 = zzamm.zze(t, j).hashCode();
                        i2 = i + zza2;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (zzc((zzakt<T>) t, i4, i3)) {
                        i = i2 * 53;
                        zza2 = zzamm.zze(t, j).hashCode();
                        i2 = i + zza2;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (zzc((zzakt<T>) t, i4, i3)) {
                        i = i2 * 53;
                        zza2 = zzc(t, j);
                        i2 = i + zza2;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (zzc((zzakt<T>) t, i4, i3)) {
                        i = i2 * 53;
                        zza2 = zzc(t, j);
                        i2 = i + zza2;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (zzc((zzakt<T>) t, i4, i3)) {
                        i = i2 * 53;
                        zza2 = zzc(t, j);
                        i2 = i + zza2;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (zzc((zzakt<T>) t, i4, i3)) {
                        i = i2 * 53;
                        zza2 = zzajh.zza(zzd(t, j));
                        i2 = i + zza2;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (zzc((zzakt<T>) t, i4, i3)) {
                        i = i2 * 53;
                        zza2 = zzc(t, j);
                        i2 = i + zza2;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (zzc((zzakt<T>) t, i4, i3)) {
                        i = i2 * 53;
                        zza2 = zzajh.zza(zzd(t, j));
                        i2 = i + zza2;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (zzc((zzakt<T>) t, i4, i3)) {
                        i = i2 * 53;
                        zza2 = zzamm.zze(t, j).hashCode();
                        i2 = i + zza2;
                        break;
                    } else {
                        break;
                    }
            }
        }
        int hashCode = (i2 * 53) + this.zzq.zzd(t).hashCode();
        return this.zzh ? (hashCode * 53) + this.zzr.zza(t).hashCode() : hashCode;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzalh
    public final void zzc(T t) {
        if (zzg(t)) {
            if (t instanceof zzaje) {
                zzaje zzajeVar = (zzaje) t;
                zzajeVar.zzb(Integer.MAX_VALUE);
                zzajeVar.zza = 0;
                zzajeVar.zzt();
            }
            int length = this.zzc.length;
            for (int i = 0; i < length; i += 3) {
                int zzc = zzc(i);
                long j = 1048575 & zzc;
                int i2 = (zzc & C6884u.f38162u) >>> 20;
                if (i2 != 9) {
                    if (i2 != 60 && i2 != 68) {
                        switch (i2) {
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
                                this.zzp.zzb(t, j);
                                break;
                            case 50:
                                Unsafe unsafe = zzb;
                                Object object = unsafe.getObject(t, j);
                                if (object != null) {
                                    unsafe.putObject(t, j, this.zzs.zzc(object));
                                    break;
                                } else {
                                    break;
                                }
                        }
                    } else if (zzc((zzakt<T>) t, this.zzc[i], i)) {
                        zze(i).zzc(zzb.getObject(t, j));
                    }
                }
                if (zzc((zzakt<T>) t, i)) {
                    zze(i).zzc(zzb.getObject(t, j));
                }
            }
            this.zzq.zzf(t);
            if (this.zzh) {
                this.zzr.zzc(t);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v22 */
    /* JADX WARN: Type inference failed for: r1v23, types: [com.google.android.gms.internal.firebase-auth-api.zzalh] */
    /* JADX WARN: Type inference failed for: r1v30 */
    /* JADX WARN: Type inference failed for: r1v31 */
    /* JADX WARN: Type inference failed for: r1v8, types: [com.google.android.gms.internal.firebase-auth-api.zzalh] */
    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzalh
    public final boolean zzd(T t) {
        int i;
        int i2;
        int i3 = 1048575;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            boolean z = true;
            if (i5 >= this.zzm) {
                return !this.zzh || this.zzr.zza(t).zzg();
            }
            int i6 = this.zzl[i5];
            int i7 = this.zzc[i6];
            int zzc = zzc(i6);
            int i8 = this.zzc[i6 + 2];
            int i9 = i8 & 1048575;
            int i10 = 1 << (i8 >>> 20);
            if (i9 != i3) {
                if (i9 != 1048575) {
                    i4 = zzb.getInt(t, i9);
                }
                i2 = i4;
                i = i9;
            } else {
                i = i3;
                i2 = i4;
            }
            if (((268435456 & zzc) != 0) && !zza((zzakt<T>) t, i6, i, i2, i10)) {
                return false;
            }
            int i11 = (267386880 & zzc) >>> 20;
            if (i11 != 9 && i11 != 17) {
                if (i11 != 27) {
                    if (i11 == 60 || i11 == 68) {
                        if (zzc((zzakt<T>) t, i7, i6) && !zza((Object) t, zzc, zze(i6))) {
                            return false;
                        }
                    } else if (i11 != 49) {
                        if (i11 != 50) {
                            continue;
                        } else {
                            Map<?, ?> zzd = this.zzs.zzd(zzamm.zze(t, zzc & 1048575));
                            if (!zzd.isEmpty()) {
                                if (this.zzs.zza(zzf(i6)).zzc.zzb() == zzand.MESSAGE) {
                                    Iterator<?> it2 = zzd.values().iterator();
                                    ?? r1 = 0;
                                    while (true) {
                                        if (!it2.hasNext()) {
                                            break;
                                        }
                                        Object next = it2.next();
                                        r1 = r1;
                                        if (r1 == 0) {
                                            r1 = zzald.zza().zza((Class) next.getClass());
                                        }
                                        if (!r1.zzd(next)) {
                                            z = false;
                                            break;
                                        }
                                    }
                                }
                            }
                            if (!z) {
                                return false;
                            }
                        }
                    }
                }
                List list = (List) zzamm.zze(t, zzc & 1048575);
                if (!list.isEmpty()) {
                    ?? zze = zze(i6);
                    int i12 = 0;
                    while (true) {
                        if (i12 >= list.size()) {
                            break;
                        }
                        if (!zze.zzd(list.get(i12))) {
                            z = false;
                            break;
                        }
                        i12++;
                    }
                }
                if (!z) {
                    return false;
                }
            } else if (zza((zzakt<T>) t, i6, i, i2, i10) && !zza((Object) t, zzc, zze(i6))) {
                return false;
            }
            i5++;
            i3 = i;
            i4 = i2;
        }
    }

    private static zzamf zze(Object obj) {
        zzaje zzajeVar = (zzaje) obj;
        zzamf zzamfVar = zzajeVar.zzb;
        if (zzamfVar != zzamf.zzc()) {
            return zzamfVar;
        }
        zzamf zzd = zzamf.zzd();
        zzajeVar.zzb = zzd;
        return zzd;
    }

    private static <T> boolean zze(T t, long j) {
        return ((Boolean) zzamm.zze(t, j)).booleanValue();
    }

    private final boolean zzc(T t, T t2, int i) {
        return zzc((zzakt<T>) t, i) == zzc((zzakt<T>) t2, i);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:16:0x005a. Please report as an issue. */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r9v19 */
    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzalh
    public final int zza(T t) {
        int i;
        int i2;
        int i3;
        boolean z;
        int zza2;
        int zza3;
        int zzd;
        int zzd2;
        int zzi;
        int zzj;
        Unsafe unsafe = zzb;
        ?? r9 = 0;
        int i4 = 1048575;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 1048575;
        while (i6 < this.zzc.length) {
            int zzc = zzc(i6);
            int i9 = (267386880 & zzc) >>> 20;
            int[] iArr = this.zzc;
            int i10 = iArr[i6];
            int i11 = iArr[i6 + 2];
            int i12 = i11 & i4;
            if (i9 <= 17) {
                if (i12 != i8) {
                    i5 = i12 == i4 ? r9 : unsafe.getInt(t, i12);
                    i8 = i12;
                }
                i = i8;
                i2 = i5;
                i3 = 1 << (i11 >>> 20);
            } else {
                i = i8;
                i2 = i5;
                i3 = r9;
            }
            long j = zzc & i4;
            if (i9 >= zzaiy.zza.zza()) {
                zzaiy.zzb.zza();
            }
            int i13 = i3;
            switch (i9) {
                case 0:
                    z = r9;
                    if (zza((zzakt<T>) t, i6, i, i2, i13)) {
                        zza2 = zzaim.zza(i10, 0.0d);
                        i7 += zza2;
                        break;
                    } else {
                        break;
                    }
                case 1:
                    z = r9;
                    if (zza((zzakt<T>) t, i6, i, i2, i13)) {
                        zza2 = zzaim.zza(i10, 0.0f);
                        i7 += zza2;
                        break;
                    } else {
                        break;
                    }
                case 2:
                    z = r9;
                    if (zza((zzakt<T>) t, i6, i, i2, i13)) {
                        zza2 = zzaim.zzb(i10, unsafe.getLong(t, j));
                        i7 += zza2;
                        break;
                    } else {
                        break;
                    }
                case 3:
                    z = r9;
                    if (zza((zzakt<T>) t, i6, i, i2, i13)) {
                        zza2 = zzaim.zze(i10, unsafe.getLong(t, j));
                        i7 += zza2;
                        break;
                    } else {
                        break;
                    }
                case 4:
                    z = r9;
                    if (zza((zzakt<T>) t, i6, i, i2, i13)) {
                        zza2 = zzaim.zzd(i10, unsafe.getInt(t, j));
                        i7 += zza2;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    z = r9;
                    if (zza((zzakt<T>) t, i6, i, i2, i13)) {
                        zza2 = zzaim.zza(i10, 0L);
                        i7 += zza2;
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (zza((zzakt<T>) t, i6, i, i2, i13)) {
                        z = false;
                        zza2 = zzaim.zzc(i10, 0);
                        i7 += zza2;
                        break;
                    }
                    z = false;
                    break;
                case 7:
                    if (zza((zzakt<T>) t, i6, i, i2, i13)) {
                        zza3 = zzaim.zza(i10, true);
                        i7 += zza3;
                    }
                    z = false;
                    break;
                case 8:
                    if (zza((zzakt<T>) t, i6, i, i2, i13)) {
                        Object object = unsafe.getObject(t, j);
                        if (object instanceof zzaho) {
                            zza3 = zzaim.zza(i10, (zzaho) object);
                        } else {
                            zza3 = zzaim.zza(i10, (String) object);
                        }
                        i7 += zza3;
                    }
                    z = false;
                    break;
                case 9:
                    if (zza((zzakt<T>) t, i6, i, i2, i13)) {
                        zza3 = zzalj.zza(i10, unsafe.getObject(t, j), zze(i6));
                        i7 += zza3;
                    }
                    z = false;
                    break;
                case 10:
                    if (zza((zzakt<T>) t, i6, i, i2, i13)) {
                        zza3 = zzaim.zza(i10, (zzaho) unsafe.getObject(t, j));
                        i7 += zza3;
                    }
                    z = false;
                    break;
                case 11:
                    if (zza((zzakt<T>) t, i6, i, i2, i13)) {
                        zza3 = zzaim.zzg(i10, unsafe.getInt(t, j));
                        i7 += zza3;
                    }
                    z = false;
                    break;
                case 12:
                    if (zza((zzakt<T>) t, i6, i, i2, i13)) {
                        zza3 = zzaim.zzb(i10, unsafe.getInt(t, j));
                        i7 += zza3;
                    }
                    z = false;
                    break;
                case 13:
                    if (zza((zzakt<T>) t, i6, i, i2, i13)) {
                        i7 += zzaim.zze(i10, 0);
                    }
                    z = false;
                    break;
                case 14:
                    if (zza((zzakt<T>) t, i6, i, i2, i13)) {
                        zza3 = zzaim.zzc(i10, 0L);
                        i7 += zza3;
                    }
                    z = false;
                    break;
                case 15:
                    if (zza((zzakt<T>) t, i6, i, i2, i13)) {
                        zza3 = zzaim.zzf(i10, unsafe.getInt(t, j));
                        i7 += zza3;
                    }
                    z = false;
                    break;
                case 16:
                    if (zza((zzakt<T>) t, i6, i, i2, i13)) {
                        zza3 = zzaim.zzd(i10, unsafe.getLong(t, j));
                        i7 += zza3;
                    }
                    z = false;
                    break;
                case 17:
                    if (zza((zzakt<T>) t, i6, i, i2, i13)) {
                        zza3 = zzaim.zza(i10, (zzakp) unsafe.getObject(t, j), zze(i6));
                        i7 += zza3;
                    }
                    z = false;
                    break;
                case 18:
                    zzd = zzalj.zzd(i10, (List) unsafe.getObject(t, j), r9);
                    i7 += zzd;
                    z = r9;
                    break;
                case 19:
                    zzd = zzalj.zzc(i10, (List) unsafe.getObject(t, j), r9);
                    i7 += zzd;
                    z = r9;
                    break;
                case 20:
                    zzd = zzalj.zzf(i10, (List) unsafe.getObject(t, j), r9);
                    i7 += zzd;
                    z = r9;
                    break;
                case 21:
                    zzd = zzalj.zzj(i10, (List) unsafe.getObject(t, j), r9);
                    i7 += zzd;
                    z = r9;
                    break;
                case 22:
                    zzd = zzalj.zze(i10, (List) unsafe.getObject(t, j), r9);
                    i7 += zzd;
                    z = r9;
                    break;
                case 23:
                    zzd = zzalj.zzd(i10, (List) unsafe.getObject(t, j), r9);
                    i7 += zzd;
                    z = r9;
                    break;
                case 24:
                    zzd = zzalj.zzc(i10, (List) unsafe.getObject(t, j), r9);
                    i7 += zzd;
                    z = r9;
                    break;
                case 25:
                    zzd = zzalj.zza(i10, (List<?>) unsafe.getObject(t, j), (boolean) r9);
                    i7 += zzd;
                    z = r9;
                    break;
                case 26:
                    zzd = zzalj.zzb(i10, (List) unsafe.getObject(t, j));
                    i7 += zzd;
                    z = r9;
                    break;
                case 27:
                    zzd = zzalj.zzb(i10, (List<?>) unsafe.getObject(t, j), zze(i6));
                    i7 += zzd;
                    z = r9;
                    break;
                case 28:
                    zzd = zzalj.zza(i10, (List<zzaho>) unsafe.getObject(t, j));
                    i7 += zzd;
                    z = r9;
                    break;
                case 29:
                    zzd = zzalj.zzi(i10, (List) unsafe.getObject(t, j), r9);
                    i7 += zzd;
                    z = r9;
                    break;
                case 30:
                    zzd = zzalj.zzb(i10, (List<Integer>) unsafe.getObject(t, j), (boolean) r9);
                    i7 += zzd;
                    z = r9;
                    break;
                case 31:
                    zzd = zzalj.zzc(i10, (List) unsafe.getObject(t, j), r9);
                    i7 += zzd;
                    z = r9;
                    break;
                case 32:
                    zzd = zzalj.zzd(i10, (List) unsafe.getObject(t, j), r9);
                    i7 += zzd;
                    z = r9;
                    break;
                case 33:
                    zzd = zzalj.zzg(i10, (List) unsafe.getObject(t, j), r9);
                    i7 += zzd;
                    z = r9;
                    break;
                case 34:
                    zzd = zzalj.zzh(i10, (List) unsafe.getObject(t, j), r9);
                    i7 += zzd;
                    z = r9;
                    break;
                case 35:
                    zzd2 = zzalj.zzd((List) unsafe.getObject(t, j));
                    if (zzd2 > 0) {
                        zzi = zzaim.zzi(i10);
                        zzj = zzaim.zzj(zzd2);
                        i7 += zzi + zzj + zzd2;
                    }
                    z = r9;
                    break;
                case 36:
                    zzd2 = zzalj.zzc((List) unsafe.getObject(t, j));
                    if (zzd2 > 0) {
                        zzi = zzaim.zzi(i10);
                        zzj = zzaim.zzj(zzd2);
                        i7 += zzi + zzj + zzd2;
                    }
                    z = r9;
                    break;
                case 37:
                    zzd2 = zzalj.zzf((List) unsafe.getObject(t, j));
                    if (zzd2 > 0) {
                        zzi = zzaim.zzi(i10);
                        zzj = zzaim.zzj(zzd2);
                        i7 += zzi + zzj + zzd2;
                    }
                    z = r9;
                    break;
                case 38:
                    zzd2 = zzalj.zzj((List) unsafe.getObject(t, j));
                    if (zzd2 > 0) {
                        zzi = zzaim.zzi(i10);
                        zzj = zzaim.zzj(zzd2);
                        i7 += zzi + zzj + zzd2;
                    }
                    z = r9;
                    break;
                case 39:
                    zzd2 = zzalj.zze((List) unsafe.getObject(t, j));
                    if (zzd2 > 0) {
                        zzi = zzaim.zzi(i10);
                        zzj = zzaim.zzj(zzd2);
                        i7 += zzi + zzj + zzd2;
                    }
                    z = r9;
                    break;
                case 40:
                    zzd2 = zzalj.zzd((List) unsafe.getObject(t, j));
                    if (zzd2 > 0) {
                        zzi = zzaim.zzi(i10);
                        zzj = zzaim.zzj(zzd2);
                        i7 += zzi + zzj + zzd2;
                    }
                    z = r9;
                    break;
                case 41:
                    zzd2 = zzalj.zzc((List) unsafe.getObject(t, j));
                    if (zzd2 > 0) {
                        zzi = zzaim.zzi(i10);
                        zzj = zzaim.zzj(zzd2);
                        i7 += zzi + zzj + zzd2;
                    }
                    z = r9;
                    break;
                case 42:
                    zzd2 = zzalj.zza((List<?>) unsafe.getObject(t, j));
                    if (zzd2 > 0) {
                        zzi = zzaim.zzi(i10);
                        zzj = zzaim.zzj(zzd2);
                        i7 += zzi + zzj + zzd2;
                    }
                    z = r9;
                    break;
                case 43:
                    zzd2 = zzalj.zzi((List) unsafe.getObject(t, j));
                    if (zzd2 > 0) {
                        zzi = zzaim.zzi(i10);
                        zzj = zzaim.zzj(zzd2);
                        i7 += zzi + zzj + zzd2;
                    }
                    z = r9;
                    break;
                case 44:
                    zzd2 = zzalj.zzb((List) unsafe.getObject(t, j));
                    if (zzd2 > 0) {
                        zzi = zzaim.zzi(i10);
                        zzj = zzaim.zzj(zzd2);
                        i7 += zzi + zzj + zzd2;
                    }
                    z = r9;
                    break;
                case 45:
                    zzd2 = zzalj.zzc((List) unsafe.getObject(t, j));
                    if (zzd2 > 0) {
                        zzi = zzaim.zzi(i10);
                        zzj = zzaim.zzj(zzd2);
                        i7 += zzi + zzj + zzd2;
                    }
                    z = r9;
                    break;
                case 46:
                    zzd2 = zzalj.zzd((List) unsafe.getObject(t, j));
                    if (zzd2 > 0) {
                        zzi = zzaim.zzi(i10);
                        zzj = zzaim.zzj(zzd2);
                        i7 += zzi + zzj + zzd2;
                    }
                    z = r9;
                    break;
                case 47:
                    zzd2 = zzalj.zzg((List) unsafe.getObject(t, j));
                    if (zzd2 > 0) {
                        zzi = zzaim.zzi(i10);
                        zzj = zzaim.zzj(zzd2);
                        i7 += zzi + zzj + zzd2;
                    }
                    z = r9;
                    break;
                case 48:
                    zzd2 = zzalj.zzh((List) unsafe.getObject(t, j));
                    if (zzd2 > 0) {
                        zzi = zzaim.zzi(i10);
                        zzj = zzaim.zzj(zzd2);
                        i7 += zzi + zzj + zzd2;
                    }
                    z = r9;
                    break;
                case 49:
                    zzd = zzalj.zza(i10, (List<zzakp>) unsafe.getObject(t, j), zze(i6));
                    i7 += zzd;
                    z = r9;
                    break;
                case 50:
                    zzd = this.zzs.zza(i10, unsafe.getObject(t, j), zzf(i6));
                    i7 += zzd;
                    z = r9;
                    break;
                case 51:
                    if (zzc((zzakt<T>) t, i10, i6)) {
                        zzd = zzaim.zza(i10, 0.0d);
                        i7 += zzd;
                    }
                    z = r9;
                    break;
                case 52:
                    if (zzc((zzakt<T>) t, i10, i6)) {
                        zzd = zzaim.zza(i10, 0.0f);
                        i7 += zzd;
                    }
                    z = r9;
                    break;
                case 53:
                    if (zzc((zzakt<T>) t, i10, i6)) {
                        zzd = zzaim.zzb(i10, zzd(t, j));
                        i7 += zzd;
                    }
                    z = r9;
                    break;
                case 54:
                    if (zzc((zzakt<T>) t, i10, i6)) {
                        zzd = zzaim.zze(i10, zzd(t, j));
                        i7 += zzd;
                    }
                    z = r9;
                    break;
                case 55:
                    if (zzc((zzakt<T>) t, i10, i6)) {
                        zzd = zzaim.zzd(i10, zzc(t, j));
                        i7 += zzd;
                    }
                    z = r9;
                    break;
                case 56:
                    if (zzc((zzakt<T>) t, i10, i6)) {
                        zzd = zzaim.zza(i10, 0L);
                        i7 += zzd;
                    }
                    z = r9;
                    break;
                case 57:
                    if (zzc((zzakt<T>) t, i10, i6)) {
                        zzd = zzaim.zzc(i10, (int) r9);
                        i7 += zzd;
                    }
                    z = r9;
                    break;
                case 58:
                    if (zzc((zzakt<T>) t, i10, i6)) {
                        zzd = zzaim.zza(i10, true);
                        i7 += zzd;
                    }
                    z = r9;
                    break;
                case 59:
                    if (zzc((zzakt<T>) t, i10, i6)) {
                        Object object2 = unsafe.getObject(t, j);
                        if (object2 instanceof zzaho) {
                            zzd = zzaim.zza(i10, (zzaho) object2);
                        } else {
                            zzd = zzaim.zza(i10, (String) object2);
                        }
                        i7 += zzd;
                    }
                    z = r9;
                    break;
                case 60:
                    if (zzc((zzakt<T>) t, i10, i6)) {
                        zzd = zzalj.zza(i10, unsafe.getObject(t, j), zze(i6));
                        i7 += zzd;
                    }
                    z = r9;
                    break;
                case 61:
                    if (zzc((zzakt<T>) t, i10, i6)) {
                        zzd = zzaim.zza(i10, (zzaho) unsafe.getObject(t, j));
                        i7 += zzd;
                    }
                    z = r9;
                    break;
                case 62:
                    if (zzc((zzakt<T>) t, i10, i6)) {
                        zzd = zzaim.zzg(i10, zzc(t, j));
                        i7 += zzd;
                    }
                    z = r9;
                    break;
                case 63:
                    if (zzc((zzakt<T>) t, i10, i6)) {
                        zzd = zzaim.zzb(i10, zzc(t, j));
                        i7 += zzd;
                    }
                    z = r9;
                    break;
                case 64:
                    if (zzc((zzakt<T>) t, i10, i6)) {
                        zzd = zzaim.zze(i10, (int) r9);
                        i7 += zzd;
                    }
                    z = r9;
                    break;
                case 65:
                    if (zzc((zzakt<T>) t, i10, i6)) {
                        zzd = zzaim.zzc(i10, 0L);
                        i7 += zzd;
                    }
                    z = r9;
                    break;
                case 66:
                    if (zzc((zzakt<T>) t, i10, i6)) {
                        zzd = zzaim.zzf(i10, zzc(t, j));
                        i7 += zzd;
                    }
                    z = r9;
                    break;
                case 67:
                    if (zzc((zzakt<T>) t, i10, i6)) {
                        zzd = zzaim.zzd(i10, zzd(t, j));
                        i7 += zzd;
                    }
                    z = r9;
                    break;
                case 68:
                    if (zzc((zzakt<T>) t, i10, i6)) {
                        zzd = zzaim.zza(i10, (zzakp) unsafe.getObject(t, j), zze(i6));
                        i7 += zzd;
                    }
                    z = r9;
                    break;
                default:
                    z = r9;
                    break;
            }
            i6 += 3;
            i8 = i;
            r9 = z;
            i5 = i2;
            i4 = 1048575;
        }
        int i14 = r9;
        zzamg<?, ?> zzamgVar = this.zzq;
        int zza4 = i7 + zzamgVar.zza((zzamg<?, ?>) zzamgVar.zzd(t));
        if (!this.zzh) {
            return zza4;
        }
        zzaix<?> zza5 = this.zzr.zza(t);
        for (int i15 = i14; i15 < zza5.zza.zza(); i15++) {
            Map.Entry<?, Object> zzb2 = zza5.zza.zzb(i15);
            i14 += zzaix.zza((zzaiz<?>) zzb2.getKey(), zzb2.getValue());
        }
        for (Map.Entry<?, Object> entry : zza5.zza.zzb()) {
            i14 += zzaix.zza((zzaiz<?>) entry.getKey(), entry.getValue());
        }
        return zza4 + i14;
    }

    private final boolean zzc(T t, int i) {
        int zzb2 = zzb(i);
        long j = zzb2 & 1048575;
        if (j != 1048575) {
            return ((1 << (zzb2 >>> 20)) & zzamm.zzc(t, j)) != 0;
        }
        int zzc = zzc(i);
        long j2 = zzc & 1048575;
        switch ((zzc & C6884u.f38162u) >>> 20) {
            case 0:
                return Double.doubleToRawLongBits(zzamm.zza(t, j2)) != 0;
            case 1:
                return Float.floatToRawIntBits(zzamm.zzb(t, j2)) != 0;
            case 2:
                return zzamm.zzd(t, j2) != 0;
            case 3:
                return zzamm.zzd(t, j2) != 0;
            case 4:
                return zzamm.zzc(t, j2) != 0;
            case 5:
                return zzamm.zzd(t, j2) != 0;
            case 6:
                return zzamm.zzc(t, j2) != 0;
            case 7:
                return zzamm.zzh(t, j2);
            case 8:
                Object zze = zzamm.zze(t, j2);
                if (zze instanceof String) {
                    return !((String) zze).isEmpty();
                }
                if (zze instanceof zzaho) {
                    return !zzaho.zza.equals(zze);
                }
                throw new IllegalArgumentException();
            case 9:
                return zzamm.zze(t, j2) != null;
            case 10:
                return !zzaho.zza.equals(zzamm.zze(t, j2));
            case 11:
                return zzamm.zzc(t, j2) != 0;
            case 12:
                return zzamm.zzc(t, j2) != 0;
            case 13:
                return zzamm.zzc(t, j2) != 0;
            case 14:
                return zzamm.zzd(t, j2) != 0;
            case 15:
                return zzamm.zzc(t, j2) != 0;
            case 16:
                return zzamm.zzd(t, j2) != 0;
            case 17:
                return zzamm.zze(t, j2) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final boolean zzc(T t, int i, int i2) {
        return zzamm.zzc(t, (long) (zzb(i2) & 1048575)) == i;
    }

    private final int zzb(int i) {
        return this.zzc[i + 2];
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void zzb(T t, T t2, int i) {
        int i2 = this.zzc[i];
        if (zzc((zzakt<T>) t2, i2, i)) {
            long zzc = zzc(i) & 1048575;
            Unsafe unsafe = zzb;
            Object object = unsafe.getObject(t2, zzc);
            if (object != null) {
                zzalh zze = zze(i);
                if (!zzc((zzakt<T>) t, i2, i)) {
                    if (!zzg(object)) {
                        unsafe.putObject(t, zzc, object);
                    } else {
                        Object zza2 = zze.zza();
                        zze.zza(zza2, object);
                        unsafe.putObject(t, zzc, zza2);
                    }
                    zzb((zzakt<T>) t, i2, i);
                    return;
                }
                Object object2 = unsafe.getObject(t, zzc);
                if (!zzg(object2)) {
                    Object zza3 = zze.zza();
                    zze.zza(zza3, object2);
                    unsafe.putObject(t, zzc, zza3);
                    object2 = zza3;
                }
                zze.zza(object2, object);
                return;
            }
            throw new IllegalStateException("Source subfield " + this.zzc[i] + " is present but null: " + String.valueOf(t2));
        }
    }

    private final void zzb(T t, int i) {
        int zzb2 = zzb(i);
        long j = 1048575 & zzb2;
        if (j == 1048575) {
            return;
        }
        zzamm.zza((Object) t, j, (1 << (zzb2 >>> 20)) | zzamm.zzc(t, j));
    }

    private final void zzb(T t, int i, int i2) {
        zzamm.zza((Object) t, zzb(i2) & 1048575, i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x006a, code lost:
    
        if (com.google.android.gms.internal.p124firebaseauthapi.zzalj.zza(com.google.android.gms.internal.p124firebaseauthapi.zzamm.zze(r10, r6), com.google.android.gms.internal.p124firebaseauthapi.zzamm.zze(r11, r6)) != false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x007e, code lost:
    
        if (com.google.android.gms.internal.p124firebaseauthapi.zzamm.zzd(r10, r6) == com.google.android.gms.internal.p124firebaseauthapi.zzamm.zzd(r11, r6)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0090, code lost:
    
        if (com.google.android.gms.internal.p124firebaseauthapi.zzamm.zzc(r10, r6) == com.google.android.gms.internal.p124firebaseauthapi.zzamm.zzc(r11, r6)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a4, code lost:
    
        if (com.google.android.gms.internal.p124firebaseauthapi.zzamm.zzd(r10, r6) == com.google.android.gms.internal.p124firebaseauthapi.zzamm.zzd(r11, r6)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00b6, code lost:
    
        if (com.google.android.gms.internal.p124firebaseauthapi.zzamm.zzc(r10, r6) == com.google.android.gms.internal.p124firebaseauthapi.zzamm.zzc(r11, r6)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00c8, code lost:
    
        if (com.google.android.gms.internal.p124firebaseauthapi.zzamm.zzc(r10, r6) == com.google.android.gms.internal.p124firebaseauthapi.zzamm.zzc(r11, r6)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00da, code lost:
    
        if (com.google.android.gms.internal.p124firebaseauthapi.zzamm.zzc(r10, r6) == com.google.android.gms.internal.p124firebaseauthapi.zzamm.zzc(r11, r6)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00f0, code lost:
    
        if (com.google.android.gms.internal.p124firebaseauthapi.zzalj.zza(com.google.android.gms.internal.p124firebaseauthapi.zzamm.zze(r10, r6), com.google.android.gms.internal.p124firebaseauthapi.zzamm.zze(r11, r6)) != false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0106, code lost:
    
        if (com.google.android.gms.internal.p124firebaseauthapi.zzalj.zza(com.google.android.gms.internal.p124firebaseauthapi.zzamm.zze(r10, r6), com.google.android.gms.internal.p124firebaseauthapi.zzamm.zze(r11, r6)) != false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x011c, code lost:
    
        if (com.google.android.gms.internal.p124firebaseauthapi.zzalj.zza(com.google.android.gms.internal.p124firebaseauthapi.zzamm.zze(r10, r6), com.google.android.gms.internal.p124firebaseauthapi.zzamm.zze(r11, r6)) != false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x012e, code lost:
    
        if (com.google.android.gms.internal.p124firebaseauthapi.zzamm.zzh(r10, r6) == com.google.android.gms.internal.p124firebaseauthapi.zzamm.zzh(r11, r6)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0140, code lost:
    
        if (com.google.android.gms.internal.p124firebaseauthapi.zzamm.zzc(r10, r6) == com.google.android.gms.internal.p124firebaseauthapi.zzamm.zzc(r11, r6)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0154, code lost:
    
        if (com.google.android.gms.internal.p124firebaseauthapi.zzamm.zzd(r10, r6) == com.google.android.gms.internal.p124firebaseauthapi.zzamm.zzd(r11, r6)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0165, code lost:
    
        if (com.google.android.gms.internal.p124firebaseauthapi.zzamm.zzc(r10, r6) == com.google.android.gms.internal.p124firebaseauthapi.zzamm.zzc(r11, r6)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0178, code lost:
    
        if (com.google.android.gms.internal.p124firebaseauthapi.zzamm.zzd(r10, r6) == com.google.android.gms.internal.p124firebaseauthapi.zzamm.zzd(r11, r6)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x018b, code lost:
    
        if (com.google.android.gms.internal.p124firebaseauthapi.zzamm.zzd(r10, r6) == com.google.android.gms.internal.p124firebaseauthapi.zzamm.zzd(r11, r6)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01a4, code lost:
    
        if (java.lang.Float.floatToIntBits(com.google.android.gms.internal.p124firebaseauthapi.zzamm.zzb(r10, r6)) == java.lang.Float.floatToIntBits(com.google.android.gms.internal.p124firebaseauthapi.zzamm.zzb(r11, r6))) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x01bf, code lost:
    
        if (java.lang.Double.doubleToLongBits(com.google.android.gms.internal.p124firebaseauthapi.zzamm.zza(r10, r6)) == java.lang.Double.doubleToLongBits(com.google.android.gms.internal.p124firebaseauthapi.zzamm.zza(r11, r6))) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0038, code lost:
    
        if (com.google.android.gms.internal.p124firebaseauthapi.zzalj.zza(com.google.android.gms.internal.p124firebaseauthapi.zzamm.zze(r10, r6), com.google.android.gms.internal.p124firebaseauthapi.zzamm.zze(r11, r6)) != false) goto L105;
     */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01c5 A[LOOP:0: B:2:0x0005->B:86:0x01c5, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01c4 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzalh
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzb(T r10, T r11) {
        /*
            Method dump skipped, instructions count: 640
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.p124firebaseauthapi.zzakt.zzb(java.lang.Object, java.lang.Object):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:114:0x09dc, code lost:
    
        throw com.google.android.gms.internal.p124firebaseauthapi.zzajk.zzi();
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0ce7, code lost:
    
        if (r14 == r0) goto L527;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0ce9, code lost:
    
        r28.putInt(r7, r14, r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0cef, code lost:
    
        r10 = r9.zzm;
        r3 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0cf6, code lost:
    
        if (r10 >= r9.zzn) goto L644;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0cf8, code lost:
    
        r3 = (com.google.android.gms.internal.p124firebaseauthapi.zzamf) zza((java.lang.Object) r32, r9.zzl[r10], (int) r3, (com.google.android.gms.internal.p124firebaseauthapi.zzamg<UT, int>) r9.zzq, (java.lang.Object) r32);
        r10 = r10 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0d0e, code lost:
    
        if (r3 == null) goto L533;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0d10, code lost:
    
        r9.zzq.zzb((java.lang.Object) r7, (T) r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0d15, code lost:
    
        if (r6 != 0) goto L539;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0d19, code lost:
    
        if (r8 != r35) goto L537;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0d20, code lost:
    
        throw com.google.android.gms.internal.p124firebaseauthapi.zzajk.zzg();
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0d27, code lost:
    
        return r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0d23, code lost:
    
        if (r8 > r35) goto L543;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0d25, code lost:
    
        if (r11 != r6) goto L543;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0d2c, code lost:
    
        throw com.google.android.gms.internal.p124firebaseauthapi.zzajk.zzg();
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:121:0x0a02. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:204:0x0426. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:546:0x00b3. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0c5f  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0cca  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x08c1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:211:0x08b3 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v135, types: [int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zza(T r32, byte[] r33, int r34, int r35, int r36, com.google.android.gms.internal.p124firebaseauthapi.zzahn r37) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 3522
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.p124firebaseauthapi.zzakt.zza(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.firebase-auth-api.zzahn):int");
    }

    private final int zza(int i) {
        if (i < this.zze || i > this.zzf) {
            return -1;
        }
        return zza(i, 0);
    }

    private final int zza(int i, int i2) {
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

    /* JADX WARN: Removed duplicated region for block: B:65:0x0259  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0273  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0276  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x025c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T> com.google.android.gms.internal.p124firebaseauthapi.zzakt<T> zza(java.lang.Class<T> r32, com.google.android.gms.internal.p124firebaseauthapi.zzakn r33, com.google.android.gms.internal.p124firebaseauthapi.zzakx r34, com.google.android.gms.internal.p124firebaseauthapi.zzaju r35, com.google.android.gms.internal.p124firebaseauthapi.zzamg<?, ?> r36, com.google.android.gms.internal.p124firebaseauthapi.zzais<?> r37, com.google.android.gms.internal.p124firebaseauthapi.zzaki r38) {
        /*
            Method dump skipped, instructions count: 1021
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.p124firebaseauthapi.zzakt.zza(java.lang.Class, com.google.android.gms.internal.firebase-auth-api.zzakn, com.google.android.gms.internal.firebase-auth-api.zzakx, com.google.android.gms.internal.firebase-auth-api.zzaju, com.google.android.gms.internal.firebase-auth-api.zzamg, com.google.android.gms.internal.firebase-auth-api.zzais, com.google.android.gms.internal.firebase-auth-api.zzaki):com.google.android.gms.internal.firebase-auth-api.zzakt");
    }

    private final <UT, UB> UB zza(Object obj, int i, UB ub, zzamg<UT, UB> zzamgVar, Object obj2) {
        zzaji zzd;
        int i2 = this.zzc[i];
        Object zze = zzamm.zze(obj, zzc(i) & 1048575);
        return (zze == null || (zzd = zzd(i)) == null) ? ub : (UB) zza(i, i2, this.zzs.zze(zze), zzd, (zzaji) ub, (zzamg<UT, zzaji>) zzamgVar, obj2);
    }

    private final <K, V, UT, UB> UB zza(int i, int i2, Map<K, V> map, zzaji zzajiVar, UB ub, zzamg<UT, UB> zzamgVar, Object obj) {
        zzakg<?, ?> zza2 = this.zzs.zza(zzf(i));
        Iterator<Map.Entry<K, V>> it2 = map.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry<K, V> next = it2.next();
            if (!zzajiVar.zza(((Integer) next.getValue()).intValue())) {
                if (ub == null) {
                    ub = zzamgVar.zzc(obj);
                }
                zzahx zzc = zzaho.zzc(zzakh.zza(zza2, next.getKey(), next.getValue()));
                try {
                    zzakh.zza(zzc.zzb(), zza2, next.getKey(), next.getValue());
                    zzamgVar.zza((zzamg<UT, UB>) ub, i2, zzc.zza());
                    it2.remove();
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }
        return ub;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final Object zza(T t, int i) {
        zzalh zze = zze(i);
        long zzc = zzc(i) & 1048575;
        if (!zzc((zzakt<T>) t, i)) {
            return zze.zza();
        }
        Object object = zzb.getObject(t, zzc);
        if (zzg(object)) {
            return object;
        }
        Object zza2 = zze.zza();
        if (object != null) {
            zze.zza(zza2, object);
        }
        return zza2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final Object zza(T t, int i, int i2) {
        zzalh zze = zze(i2);
        if (!zzc((zzakt<T>) t, i, i2)) {
            return zze.zza();
        }
        Object object = zzb.getObject(t, zzc(i2) & 1048575);
        if (zzg(object)) {
            return object;
        }
        Object zza2 = zze.zza();
        if (object != null) {
            zze.zza(zza2, object);
        }
        return zza2;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzalh
    public final T zza() {
        return (T) this.zzo.zza(this.zzg);
    }

    private static Field zza(Class<?> cls, String str) {
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

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzalh
    public final void zza(T t, T t2) {
        zzf(t);
        t2.getClass();
        for (int i = 0; i < this.zzc.length; i += 3) {
            int zzc = zzc(i);
            long j = 1048575 & zzc;
            int i2 = this.zzc[i];
            switch ((zzc & C6884u.f38162u) >>> 20) {
                case 0:
                    if (zzc((zzakt<T>) t2, i)) {
                        zzamm.zza(t, j, zzamm.zza(t2, j));
                        zzb((zzakt<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (zzc((zzakt<T>) t2, i)) {
                        zzamm.zza((Object) t, j, zzamm.zzb(t2, j));
                        zzb((zzakt<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (zzc((zzakt<T>) t2, i)) {
                        zzamm.zza((Object) t, j, zzamm.zzd(t2, j));
                        zzb((zzakt<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (zzc((zzakt<T>) t2, i)) {
                        zzamm.zza((Object) t, j, zzamm.zzd(t2, j));
                        zzb((zzakt<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (zzc((zzakt<T>) t2, i)) {
                        zzamm.zza((Object) t, j, zzamm.zzc(t2, j));
                        zzb((zzakt<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (zzc((zzakt<T>) t2, i)) {
                        zzamm.zza((Object) t, j, zzamm.zzd(t2, j));
                        zzb((zzakt<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (zzc((zzakt<T>) t2, i)) {
                        zzamm.zza((Object) t, j, zzamm.zzc(t2, j));
                        zzb((zzakt<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (zzc((zzakt<T>) t2, i)) {
                        zzamm.zzc(t, j, zzamm.zzh(t2, j));
                        zzb((zzakt<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (zzc((zzakt<T>) t2, i)) {
                        zzamm.zza(t, j, zzamm.zze(t2, j));
                        zzb((zzakt<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    zza(t, t2, i);
                    break;
                case 10:
                    if (zzc((zzakt<T>) t2, i)) {
                        zzamm.zza(t, j, zzamm.zze(t2, j));
                        zzb((zzakt<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (zzc((zzakt<T>) t2, i)) {
                        zzamm.zza((Object) t, j, zzamm.zzc(t2, j));
                        zzb((zzakt<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (zzc((zzakt<T>) t2, i)) {
                        zzamm.zza((Object) t, j, zzamm.zzc(t2, j));
                        zzb((zzakt<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (zzc((zzakt<T>) t2, i)) {
                        zzamm.zza((Object) t, j, zzamm.zzc(t2, j));
                        zzb((zzakt<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (zzc((zzakt<T>) t2, i)) {
                        zzamm.zza((Object) t, j, zzamm.zzd(t2, j));
                        zzb((zzakt<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (zzc((zzakt<T>) t2, i)) {
                        zzamm.zza((Object) t, j, zzamm.zzc(t2, j));
                        zzb((zzakt<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (zzc((zzakt<T>) t2, i)) {
                        zzamm.zza((Object) t, j, zzamm.zzd(t2, j));
                        zzb((zzakt<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 17:
                    zza(t, t2, i);
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
                    this.zzp.zza(t, t2, j);
                    break;
                case 50:
                    zzalj.zza(this.zzs, t, t2, j);
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
                    if (zzc((zzakt<T>) t2, i2, i)) {
                        zzamm.zza(t, j, zzamm.zze(t2, j));
                        zzb((zzakt<T>) t, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 60:
                    zzb(t, t2, i);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (zzc((zzakt<T>) t2, i2, i)) {
                        zzamm.zza(t, j, zzamm.zze(t2, j));
                        zzb((zzakt<T>) t, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 68:
                    zzb(t, t2, i);
                    break;
            }
        }
        zzalj.zza(this.zzq, t, t2);
        if (this.zzh) {
            zzalj.zza(this.zzr, t, t2);
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:10:0x00bd. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:38:0x065b A[LOOP:2: B:36:0x0657->B:38:0x065b, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x066f  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0624 A[Catch: all -> 0x0297, TryCatch #2 {all -> 0x0297, blocks: (B:15:0x05f8, B:44:0x061f, B:46:0x0624, B:47:0x0629, B:161:0x00cb, B:67:0x00dd, B:70:0x00ef, B:71:0x0101, B:72:0x0112, B:73:0x0123, B:75:0x012d, B:78:0x0134, B:79:0x013b, B:80:0x0148, B:81:0x0159, B:82:0x0166, B:83:0x0177, B:84:0x0182, B:85:0x0193, B:86:0x01a4, B:87:0x01b5, B:88:0x01c6, B:89:0x01d7, B:90:0x01e8, B:91:0x01f9, B:92:0x020b, B:94:0x021b, B:95:0x023c, B:96:0x0225, B:98:0x022d, B:99:0x024d, B:100:0x025f, B:101:0x026d, B:102:0x027b, B:103:0x0289), top: B:14:0x05f8 }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x062f A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r19v0, types: [com.google.android.gms.internal.firebase-auth-api.zzale] */
    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzalh
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(T r18, com.google.android.gms.internal.p124firebaseauthapi.zzale r19, com.google.android.gms.internal.p124firebaseauthapi.zzaiq r20) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1794
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.p124firebaseauthapi.zzakt.zza(java.lang.Object, com.google.android.gms.internal.firebase-auth-api.zzale, com.google.android.gms.internal.firebase-auth-api.zzaiq):void");
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzalh
    public final void zza(T t, byte[] bArr, int i, int i2, zzahn zzahnVar) throws IOException {
        zza((zzakt<T>) t, bArr, i, i2, 0, zzahnVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void zza(T t, T t2, int i) {
        if (zzc((zzakt<T>) t2, i)) {
            long zzc = zzc(i) & 1048575;
            Unsafe unsafe = zzb;
            Object object = unsafe.getObject(t2, zzc);
            if (object != null) {
                zzalh zze = zze(i);
                if (!zzc((zzakt<T>) t, i)) {
                    if (!zzg(object)) {
                        unsafe.putObject(t, zzc, object);
                    } else {
                        Object zza2 = zze.zza();
                        zze.zza(zza2, object);
                        unsafe.putObject(t, zzc, zza2);
                    }
                    zzb((zzakt<T>) t, i);
                    return;
                }
                Object object2 = unsafe.getObject(t, zzc);
                if (!zzg(object2)) {
                    Object zza3 = zze.zza();
                    zze.zza(zza3, object2);
                    unsafe.putObject(t, zzc, zza3);
                    object2 = zza3;
                }
                zze.zza(object2, object);
                return;
            }
            throw new IllegalStateException("Source subfield " + this.zzc[i] + " is present but null: " + String.valueOf(t2));
        }
    }

    private final void zza(Object obj, int i, zzale zzaleVar) throws IOException {
        if (zzg(i)) {
            zzamm.zza(obj, i & 1048575, zzaleVar.zzr());
        } else if (this.zzi) {
            zzamm.zza(obj, i & 1048575, zzaleVar.zzq());
        } else {
            zzamm.zza(obj, i & 1048575, zzaleVar.zzp());
        }
    }

    private final void zza(T t, int i, Object obj) {
        zzb.putObject(t, zzc(i) & 1048575, obj);
        zzb((zzakt<T>) t, i);
    }

    private final void zza(T t, int i, int i2, Object obj) {
        zzb.putObject(t, zzc(i2) & 1048575, obj);
        zzb((zzakt<T>) t, i, i2);
    }

    private final <K, V> void zza(zzanc zzancVar, int i, Object obj, int i2) throws IOException {
        if (obj != null) {
            zzancVar.zza(i, this.zzs.zza(zzf(i2)), this.zzs.zzd(obj));
        }
    }

    private static void zza(int i, Object obj, zzanc zzancVar) throws IOException {
        if (obj instanceof String) {
            zzancVar.zza(i, (String) obj);
        } else {
            zzancVar.zza(i, (zzaho) obj);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:320:0x05b6. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:277:0x0518  */
    /* JADX WARN: Removed duplicated region for block: B:297:0x0557  */
    /* JADX WARN: Removed duplicated region for block: B:511:0x0b8f  */
    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzalh
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(T r24, com.google.android.gms.internal.p124firebaseauthapi.zzanc r25) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 3270
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.p124firebaseauthapi.zzakt.zza(java.lang.Object, com.google.android.gms.internal.firebase-auth-api.zzanc):void");
    }

    private static <UT, UB> void zza(zzamg<UT, UB> zzamgVar, T t, zzanc zzancVar) throws IOException {
        zzamgVar.zzb((zzamg<UT, UB>) zzamgVar.zzd(t), zzancVar);
    }

    private final boolean zza(T t, int i, int i2, int i3, int i4) {
        if (i2 == 1048575) {
            return zzc((zzakt<T>) t, i);
        }
        return (i3 & i4) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean zza(Object obj, int i, zzalh zzalhVar) {
        return zzalhVar.zzd(zzamm.zze(obj, i & 1048575));
    }
}
