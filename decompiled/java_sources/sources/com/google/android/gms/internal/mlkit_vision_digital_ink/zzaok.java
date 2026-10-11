package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
abstract class zzaok implements zzaoo {
    public zzaoo zza(char c) {
        throw null;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaoo
    public zzaoo zzb(long j) {
        throw null;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaoo
    public final zzaoo zzd(CharSequence charSequence) {
        int length = charSequence.length();
        for (int i = 0; i < length; i++) {
            zza(charSequence.charAt(i));
        }
        return this;
    }
}
