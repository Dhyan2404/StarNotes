package com.couchbase.lite.internal.sockets;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes4.dex */
public interface SocketToCore extends AutoCloseable {
    void ackOpenToCore(int i, @Nullable byte[] bArr);

    void ackWriteToCore(long j);

    void closeCore(@NonNull CloseStatus closeStatus);

    @NonNull
    Object getLock();

    void init(@NonNull SocketFromCore socketFromCore);

    void requestCoreClose(@NonNull CloseStatus closeStatus);

    void writeToCore(@NonNull byte[] bArr);
}
