package com.couchbase.lite.internal.sockets;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.net.URI;
import java.util.Map;

/* loaded from: classes4.dex */
public interface SocketToRemote extends AutoCloseable {
    void cancelRemote();

    boolean closeRemote(@NonNull CloseStatus closeStatus);

    void init(@NonNull SocketFromRemote socketFromRemote);

    boolean openRemote(@NonNull URI uri, @Nullable Map<String, Object> map);

    boolean writeToRemote(@NonNull byte[] bArr);
}
