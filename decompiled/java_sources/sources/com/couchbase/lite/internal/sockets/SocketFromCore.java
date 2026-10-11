package com.couchbase.lite.internal.sockets;

import androidx.annotation.NonNull;

/* loaded from: classes4.dex */
public interface SocketFromCore {
    void coreAcksWrite(long j);

    void coreClosed();

    void coreRequestsClose(@NonNull CloseStatus closeStatus);

    void coreRequestsOpen();

    void coreWrites(@NonNull byte[] bArr);
}
