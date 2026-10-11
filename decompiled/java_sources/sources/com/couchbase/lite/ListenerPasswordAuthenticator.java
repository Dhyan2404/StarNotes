package com.couchbase.lite;

import androidx.annotation.NonNull;
import com.couchbase.lite.internal.core.InternalPwdAuthenticator;

/* loaded from: classes4.dex */
public final class ListenerPasswordAuthenticator extends InternalPwdAuthenticator {
    public ListenerPasswordAuthenticator(@NonNull ListenerPasswordAuthenticatorDelegate listenerPasswordAuthenticatorDelegate) {
        super(listenerPasswordAuthenticatorDelegate);
    }
}
