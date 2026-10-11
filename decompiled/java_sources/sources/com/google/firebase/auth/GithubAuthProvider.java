package com.google.firebase.auth;

import androidx.annotation.NonNull;

/* loaded from: classes6.dex */
public class GithubAuthProvider {

    @NonNull
    public static final String GITHUB_SIGN_IN_METHOD = "github.com";

    @NonNull
    public static final String PROVIDER_ID = "github.com";

    @NonNull
    public static AuthCredential getCredential(@NonNull String str) {
        return new GithubAuthCredential(str);
    }
}
