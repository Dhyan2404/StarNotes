package com.couchbase.lite;

import androidx.annotation.NonNull;

@FunctionalInterface
/* loaded from: classes4.dex */
public interface MessageEndpointDelegate {
    @NonNull
    MessageEndpointConnection createConnection(@NonNull MessageEndpoint messageEndpoint);
}
