package com.couchbase.lite;

import androidx.annotation.NonNull;

/* loaded from: classes4.dex */
public interface ReplicatorConnection {
    void close(MessagingError messagingError);

    void receive(@NonNull Message message);
}
