package com.couchbase.lite;

import androidx.annotation.NonNull;
import javax.annotation.Nullable;

/* loaded from: classes4.dex */
public interface MessageEndpointConnection {
    void close(@Nullable Exception exc, @NonNull MessagingCloseCompletion messagingCloseCompletion);

    void open(@NonNull ReplicatorConnection replicatorConnection, @NonNull MessagingCompletion messagingCompletion);

    void send(@NonNull Message message, @NonNull MessagingCompletion messagingCompletion);
}
