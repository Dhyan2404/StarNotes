package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.android.gms.common.api.Status;
import com.google.firebase.auth.PhoneAuthProvider;

/* loaded from: classes5.dex */
final class zzadf implements zzadh {
    private final /* synthetic */ Status zza;

    public zzadf(zzadb zzadbVar, Status status) {
        this.zza = status;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzadh
    public final void zza(PhoneAuthProvider.OnVerificationStateChangedCallbacks onVerificationStateChangedCallbacks, Object... objArr) {
        onVerificationStateChangedCallbacks.onVerificationFailed(zzach.zza(this.zza));
    }
}
