package com.couchbase.lite.internal.core;

import androidx.annotation.NonNull;
import com.couchbase.lite.ListenerAuthenticator;
import com.couchbase.lite.ListenerPasswordAuthenticatorDelegate;

/* loaded from: classes4.dex */
public class InternalPwdAuthenticator implements ListenerAuthenticator {

    @NonNull
    private final ListenerPasswordAuthenticatorDelegate delegate;

    public InternalPwdAuthenticator(@NonNull ListenerPasswordAuthenticatorDelegate listenerPasswordAuthenticatorDelegate) {
        this.delegate = listenerPasswordAuthenticatorDelegate;
    }

    public boolean authenticate(@NonNull String str, @NonNull char[] cArr) {
        return this.delegate.authenticate(str, cArr);
    }
}
