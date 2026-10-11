package com.couchbase.lite;

@FunctionalInterface
/* loaded from: classes4.dex */
public interface MessagingCompletion {
    void complete(boolean z, MessagingError messagingError);
}
