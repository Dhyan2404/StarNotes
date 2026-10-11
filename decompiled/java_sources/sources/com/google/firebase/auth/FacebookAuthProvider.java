package com.google.firebase.auth;

import androidx.annotation.NonNull;

/* loaded from: classes6.dex */
public class FacebookAuthProvider {

    @NonNull
    public static final String FACEBOOK_SIGN_IN_METHOD = "facebook.com";

    @NonNull
    public static final String PROVIDER_ID = "facebook.com";

    @NonNull
    public static AuthCredential getCredential(@NonNull String str) {
        return new FacebookAuthCredential(str);
    }
}
