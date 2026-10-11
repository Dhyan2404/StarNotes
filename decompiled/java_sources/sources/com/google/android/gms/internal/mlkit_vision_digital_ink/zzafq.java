package com.google.android.gms.internal.mlkit_vision_digital_ink;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.BitSet;

/* loaded from: classes5.dex */
public abstract class zzafq implements zzagh {
    public static zzafq zzh(CharSequence charSequence) {
        int length = "-_@=,;".length();
        return length != 0 ? length != 1 ? length != 2 ? new zzaff("-_@=,;") : new zzafk("-_@=,;".charAt(0), "-_@=,;".charAt(1)) : new zzafj("-_@=,;".charAt(0)) : zzafo.zza;
    }

    public static zzafq zzi(char c, char c2) {
        return new zzafi(c, c2);
    }

    public static zzafq zzj(char c) {
        return new zzafj(c);
    }

    public static /* synthetic */ String zzn(char c) {
        char[] cArr = {'\\', 'u', 0, 0, 0, 0};
        int i = 0;
        int i2 = c;
        while (i < 4) {
            cArr[5 - i] = "0123456789ABCDEF".charAt(i2 & 15);
            i++;
            i2 >>= 4;
        }
        return String.copyValueOf(cArr);
    }

    private static zzafq zzo(int i, BitSet bitSet, String str) {
        if (i == 0) {
            return zzafo.zza;
        }
        if (i == 1) {
            return new zzafj((char) bitSet.nextSetBit(0));
        }
        if (i != 2) {
            return (i > 1023 || bitSet.length() <= i * 64) ? new zzafg(bitSet, str, null) : zzago.zzp(bitSet, str);
        }
        char nextSetBit = (char) bitSet.nextSetBit(0);
        return new zzafk(nextSetBit, (char) bitSet.nextSetBit(nextSetBit + 1));
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzagh
    @Deprecated
    public final /* synthetic */ boolean zza(Object obj) {
        return zzc(((Character) obj).charValue());
    }

    public void zzb(BitSet bitSet) {
        for (int i = 65535; i >= 0; i--) {
            if (zzc((char) i)) {
                bitSet.set(i);
            }
        }
    }

    public abstract boolean zzc(char c);

    public boolean zzd(CharSequence charSequence) {
        int length = charSequence.length();
        do {
            length--;
            if (length < 0) {
                return true;
            }
        } while (zzc(charSequence.charAt(length)));
        return false;
    }

    public int zze(CharSequence charSequence) {
        return zzf(charSequence, 0);
    }

    public int zzf(CharSequence charSequence, int i) {
        int length = charSequence.length();
        zzagg.zzb(i, length, FirebaseAnalytics.Param.INDEX);
        while (i < length) {
            if (zzc(charSequence.charAt(i))) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public boolean zzg(CharSequence charSequence) {
        return zze(charSequence) == -1;
    }

    public final zzafq zzk(zzafq zzafqVar) {
        return new zzafp(this, zzafqVar);
    }

    public zzafq zzl() {
        return zzagf.zzb(this);
    }

    public final zzafq zzm() {
        BitSet bitSet = new BitSet();
        zzb(bitSet);
        int cardinality = bitSet.cardinality();
        if (cardinality + cardinality <= 65536) {
            return zzo(cardinality, bitSet, toString());
        }
        bitSet.flip(0, 65536);
        int i = 65536 - cardinality;
        String obj = toString();
        return new zzafe(this, zzo(i, bitSet, obj.endsWith(".negate()") ? obj.substring(0, obj.length() - 9) : obj.concat(".negate()")), obj);
    }
}
