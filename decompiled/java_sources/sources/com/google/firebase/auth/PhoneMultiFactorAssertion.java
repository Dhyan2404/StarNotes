package com.google.firebase.auth;

import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes6.dex */
public class PhoneMultiFactorAssertion extends MultiFactorAssertion {

    /* renamed from: a */
    public final PhoneAuthCredential f35656a;

    public PhoneMultiFactorAssertion(@NonNull PhoneAuthCredential phoneAuthCredential) {
        Preconditions.checkNotNull(phoneAuthCredential);
        this.f35656a = phoneAuthCredential;
    }

    @Override // com.google.firebase.auth.MultiFactorAssertion
    @NonNull
    public String getFactorId() {
        return "phone";
    }

    @NonNull
    public final PhoneAuthCredential zza() {
        return this.f35656a;
    }
}
