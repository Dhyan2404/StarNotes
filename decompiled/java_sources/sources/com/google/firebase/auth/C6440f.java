package com.google.firebase.auth;

import android.util.Log;
import com.google.android.gms.internal.p124firebaseauthapi.zzach;
import com.google.firebase.FirebaseException;
import com.google.firebase.auth.PhoneAuthProvider;

/* renamed from: com.google.firebase.auth.f */
/* loaded from: classes6.dex */
public final class C6440f extends PhoneAuthProvider.OnVerificationStateChangedCallbacks {

    /* renamed from: a */
    public final /* synthetic */ PhoneAuthOptions f35683a;

    /* renamed from: b */
    public final /* synthetic */ PhoneAuthProvider.OnVerificationStateChangedCallbacks f35684b;

    /* renamed from: c */
    public final /* synthetic */ FirebaseAuth f35685c;

    public C6440f(FirebaseAuth firebaseAuth, PhoneAuthOptions phoneAuthOptions, PhoneAuthProvider.OnVerificationStateChangedCallbacks onVerificationStateChangedCallbacks) {
        this.f35683a = phoneAuthOptions;
        this.f35684b = onVerificationStateChangedCallbacks;
        this.f35685c = firebaseAuth;
    }

    @Override // com.google.firebase.auth.PhoneAuthProvider.OnVerificationStateChangedCallbacks
    public final void onCodeAutoRetrievalTimeOut(String str) {
        this.f35684b.onCodeAutoRetrievalTimeOut(str);
    }

    @Override // com.google.firebase.auth.PhoneAuthProvider.OnVerificationStateChangedCallbacks
    public final void onCodeSent(String str, PhoneAuthProvider.ForceResendingToken forceResendingToken) {
        this.f35684b.onCodeSent(str, forceResendingToken);
    }

    @Override // com.google.firebase.auth.PhoneAuthProvider.OnVerificationStateChangedCallbacks
    public final void onVerificationCompleted(PhoneAuthCredential phoneAuthCredential) {
        this.f35684b.onVerificationCompleted(phoneAuthCredential);
    }

    @Override // com.google.firebase.auth.PhoneAuthProvider.OnVerificationStateChangedCallbacks
    public final void onVerificationFailed(FirebaseException firebaseException) {
        if (zzach.zza(firebaseException)) {
            this.f35683a.zza(true);
            Log.d("FirebaseAuth", "Re-triggering phone verification with Recaptcha flow forced for phone number " + this.f35683a.zzh());
            FirebaseAuth.zza(this.f35683a);
            return;
        }
        Log.d("FirebaseAuth", "Invoking original failure callbacks after phone verification failure for " + this.f35683a.zzh() + ", error - " + firebaseException.getMessage());
        this.f35684b.onVerificationFailed(firebaseException);
    }
}
