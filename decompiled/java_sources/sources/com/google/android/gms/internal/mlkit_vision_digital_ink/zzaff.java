package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.Arrays;
import java.util.BitSet;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzaff extends zzafq {
    private final char[] zza;

    public zzaff(CharSequence charSequence) {
        char[] charArray = "-_@=,;".toString().toCharArray();
        this.zza = charArray;
        Arrays.sort(charArray);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CharMatcher.anyOf(\"");
        for (char c : this.zza) {
            sb.append(zzafq.zzn(c));
        }
        sb.append("\")");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzafq
    public final void zzb(BitSet bitSet) {
        for (char c : this.zza) {
            bitSet.set(c);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzafq
    public final boolean zzc(char c) {
        return Arrays.binarySearch(this.zza, c) >= 0;
    }
}
