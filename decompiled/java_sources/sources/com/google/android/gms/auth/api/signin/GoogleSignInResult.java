package com.google.android.gms.auth.api.signin;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

/* loaded from: classes5.dex */
public class GoogleSignInResult implements Result {

    /* renamed from: e */
    public final Status f28956e;

    /* renamed from: f */
    @Nullable
    public final GoogleSignInAccount f28957f;

    public GoogleSignInResult(@Nullable GoogleSignInAccount googleSignInAccount, @NonNull Status status) {
        this.f28957f = googleSignInAccount;
        this.f28956e = status;
    }

    @Nullable
    public GoogleSignInAccount getSignInAccount() {
        return this.f28957f;
    }

    @Override // com.google.android.gms.common.api.Result
    @NonNull
    public Status getStatus() {
        return this.f28956e;
    }

    public boolean isSuccess() {
        return this.f28956e.isSuccess();
    }
}
