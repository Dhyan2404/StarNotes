package com.couchbase.lite;

import androidx.annotation.NonNull;

@FunctionalInterface
/* loaded from: classes4.dex */
public interface MessageEndpointListenerChangeListener extends ChangeListener<MessageEndpointListenerChange> {
    @Override // com.couchbase.lite.ChangeListener
    void changed(@NonNull MessageEndpointListenerChange messageEndpointListenerChange);
}
