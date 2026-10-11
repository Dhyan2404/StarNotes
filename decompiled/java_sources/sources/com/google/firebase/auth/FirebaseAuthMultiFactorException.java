package com.google.firebase.auth;

import androidx.annotation.NonNull;

/* loaded from: classes6.dex */
public class FirebaseAuthMultiFactorException extends FirebaseAuthException {
    private MultiFactorResolver zza;

    public FirebaseAuthMultiFactorException(@NonNull String str, @NonNull String str2, @NonNull MultiFactorResolver multiFactorResolver) {
        super(str, str2);
        this.zza = multiFactorResolver;
    }

    @NonNull
    public MultiFactorResolver getResolver() {
        return this.zza;
    }
}
