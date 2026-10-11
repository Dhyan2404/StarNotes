package org.apache.http.auth;

import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.util.Args;

@Contract(threading = ThreadingBehavior.IMMUTABLE)
/* loaded from: classes12.dex */
public final class AuthOption {

    /* renamed from: a */
    public final AuthScheme f110099a;

    /* renamed from: b */
    public final Credentials f110100b;

    public AuthOption(AuthScheme authScheme, Credentials credentials) {
        Args.notNull(authScheme, "Auth scheme");
        Args.notNull(credentials, "User credentials");
        this.f110099a = authScheme;
        this.f110100b = credentials;
    }

    public AuthScheme getAuthScheme() {
        return this.f110099a;
    }

    public Credentials getCredentials() {
        return this.f110100b;
    }

    public String toString() {
        return this.f110099a.toString();
    }
}
