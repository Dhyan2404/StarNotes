package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.Arrays;
import javax.annotation.CheckForNull;

/* loaded from: classes5.dex */
final class zzaiy {
    public static int zza(int i) {
        return (i < 32 ? 4 : 2) * (i + 1);
    }

    public static int zzb(@CheckForNull Object obj, @CheckForNull Object obj2, int i, Object obj3, int[] iArr, Object[] objArr, @CheckForNull Object[] objArr2) {
        int i2;
        int i3;
        int zzb = zzajd.zzb(obj);
        int i4 = zzb & i;
        int zzc = zzc(obj3, i4);
        if (zzc != 0) {
            int i5 = ~i;
            int i6 = zzb & i5;
            int i7 = -1;
            while (true) {
                i2 = zzc - 1;
                i3 = iArr[i2];
                if ((i3 & i5) != i6 || !zzaga.zza(obj, objArr[i2]) || (objArr2 != null && !zzaga.zza(obj2, objArr2[i2]))) {
                    int i8 = i3 & i;
                    if (i8 == 0) {
                        break;
                    }
                    i7 = i2;
                    zzc = i8;
                }
            }
            int i9 = i3 & i;
            if (i7 == -1) {
                zzg(obj3, i4, i9);
            } else {
                iArr[i7] = (i9 & i) | (iArr[i7] & i5);
            }
            return i2;
        }
        return -1;
    }

    public static int zzc(Object obj, int i) {
        return obj instanceof byte[] ? ((byte[]) obj)[i] & 255 : obj instanceof short[] ? (char) ((short[]) obj)[i] : ((int[]) obj)[i];
    }

    public static int zzd(int i) {
        int max = Math.max(i + 1, 2);
        int highestOneBit = Integer.highestOneBit(max);
        if (max > highestOneBit && (highestOneBit = highestOneBit + highestOneBit) <= 0) {
            highestOneBit = 1073741824;
        }
        return Math.max(4, highestOneBit);
    }

    public static Object zze(int i) {
        if (i >= 2 && i <= 1073741824 && Integer.highestOneBit(i) == i) {
            return i <= 256 ? new byte[i] : i <= 65536 ? new short[i] : new int[i];
        }
        throw new IllegalArgumentException("must be power of 2 between 2^1 and 2^30: " + i);
    }

    public static void zzf(Object obj) {
        if (obj instanceof byte[]) {
            Arrays.fill((byte[]) obj, (byte) 0);
        } else if (obj instanceof short[]) {
            Arrays.fill((short[]) obj, (short) 0);
        } else {
            Arrays.fill((int[]) obj, 0);
        }
    }

    public static void zzg(Object obj, int i, int i2) {
        if (obj instanceof byte[]) {
            ((byte[]) obj)[i] = (byte) i2;
        } else if (obj instanceof short[]) {
            ((short[]) obj)[i] = (short) i2;
        } else {
            ((int[]) obj)[i] = i2;
        }
    }
}
