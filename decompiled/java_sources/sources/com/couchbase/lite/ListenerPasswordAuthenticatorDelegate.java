package com.couchbase.lite;

import androidx.annotation.NonNull;

@FunctionalInterface
/* loaded from: classes4.dex */
public interface ListenerPasswordAuthenticatorDelegate {
    boolean authenticate(@NonNull String str, @NonNull char[] cArr);
}
