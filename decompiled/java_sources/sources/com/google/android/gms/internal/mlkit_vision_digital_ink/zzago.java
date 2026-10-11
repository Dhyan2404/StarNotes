package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.BitSet;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzago extends zzafl {
    private final char[] zza;
    private final boolean zzb;
    private final long zzc;

    private zzago(char[] cArr, long j, boolean z, String str) {
        super(str);
        this.zza = cArr;
        this.zzc = j;
        this.zzb = z;
    }

    public static int zzo(int i) {
        return Integer.rotateLeft(i * (-862048943), 15) * 461845907;
    }

    public static zzafq zzp(BitSet bitSet, String str) {
        int i;
        int i2;
        int cardinality = bitSet.cardinality();
        boolean z = bitSet.get(0);
        if (cardinality == 1) {
            i = 2;
        } else {
            int highestOneBit = Integer.highestOneBit(cardinality - 1);
            do {
                highestOneBit += highestOneBit;
            } while (highestOneBit * 0.5d < cardinality);
            i = highestOneBit;
        }
        char[] cArr = new char[i];
        int nextSetBit = bitSet.nextSetBit(0);
        long j = 0;
        while (nextSetBit != -1) {
            int i3 = (-1) + i;
            long j2 = (1 << nextSetBit) | j;
            int zzo = zzo(nextSetBit);
            while (true) {
                i2 = zzo & i3;
                if (cArr[i2] == 0) {
                    break;
                }
                zzo = i2 + 1;
            }
            cArr[i2] = (char) nextSetBit;
            nextSetBit = bitSet.nextSetBit(nextSetBit + 1);
            j = j2;
        }
        return new zzago(cArr, j, z, str);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzafq
    public final void zzb(BitSet bitSet) {
        if (this.zzb) {
            bitSet.set(0);
        }
        for (char c : this.zza) {
            if (c != 0) {
                bitSet.set(c);
            }
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzafq
    public final boolean zzc(char c) {
        if (c == 0) {
            return this.zzb;
        }
        if (((this.zzc >> c) & 1) == 1) {
            int length = this.zza.length - 1;
            int zzo = zzo(c) & length;
            int i = zzo;
            do {
                char c2 = this.zza[i];
                if (c2 == 0) {
                    return false;
                }
                if (c2 == c) {
                    return true;
                }
                i = (i + 1) & length;
            } while (i != zzo);
        }
        return false;
    }
}
