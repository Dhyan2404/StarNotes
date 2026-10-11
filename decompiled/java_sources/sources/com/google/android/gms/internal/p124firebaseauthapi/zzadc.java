package com.google.android.gms.internal.p124firebaseauthapi;

import com.google.firebase.auth.PhoneAuthProvider;

/* loaded from: classes5.dex */
final class zzadc implements zzadh {
    private final /* synthetic */ String zza;

    public zzadc(zzadb zzadbVar, String str) {
        this.zza = str;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzadh
    public final void zza(PhoneAuthProvider.OnVerificationStateChangedCallbacks onVerificationStateChangedCallbacks, Object... objArr) {
        onVerificationStateChangedCallbacks.onCodeAutoRetrievalTimeOut(this.zza);
    }
}
