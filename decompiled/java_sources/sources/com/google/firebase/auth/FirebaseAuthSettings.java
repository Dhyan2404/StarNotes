package com.google.firebase.auth;

import androidx.annotation.Nullable;

/* loaded from: classes6.dex */
public abstract class FirebaseAuthSettings {
    public abstract void forceRecaptchaFlowForTesting(boolean z);

    public abstract void setAppVerificationDisabledForTesting(boolean z);

    public abstract void setAutoRetrievedSmsCodeForPhoneNumber(@Nullable String str, @Nullable String str2);
}
