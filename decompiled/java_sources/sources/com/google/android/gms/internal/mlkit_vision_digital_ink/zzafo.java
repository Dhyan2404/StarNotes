package com.google.android.gms.internal.mlkit_vision_digital_ink;

import com.google.firebase.analytics.FirebaseAnalytics;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzafo extends zzafl {
    static final zzafo zza = new zzafo();

    private zzafo() {
        super("CharMatcher.none()");
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzafq
    public final boolean zzc(char c) {
        return false;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzafq
    public final boolean zzd(CharSequence charSequence) {
        return charSequence.length() == 0;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzafq
    public final int zze(CharSequence charSequence) {
        charSequence.getClass();
        return -1;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzafq
    public final int zzf(CharSequence charSequence, int i) {
        zzagg.zzb(0, charSequence.length(), FirebaseAnalytics.Param.INDEX);
        return -1;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzafq
    public final boolean zzg(CharSequence charSequence) {
        charSequence.getClass();
        return true;
    }
}
