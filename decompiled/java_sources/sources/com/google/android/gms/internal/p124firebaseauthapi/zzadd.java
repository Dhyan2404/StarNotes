package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.firebase.auth.PhoneAuthCredential;
import com.google.firebase.auth.PhoneAuthProvider;

/* loaded from: classes5.dex */
final class zzadd implements zzadh {
    private final /* synthetic */ PhoneAuthCredential zza;

    public zzadd(zzadb zzadbVar, PhoneAuthCredential phoneAuthCredential) {
        this.zza = phoneAuthCredential;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzadh
    public final void zza(PhoneAuthProvider.OnVerificationStateChangedCallbacks onVerificationStateChangedCallbacks, Object... objArr) {
        onVerificationStateChangedCallbacks.onVerificationCompleted(this.zza);
    }
}
