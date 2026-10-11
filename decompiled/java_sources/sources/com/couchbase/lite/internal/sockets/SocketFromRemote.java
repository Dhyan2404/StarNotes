package com.couchbase.lite.internal.sockets;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Map;
import okhttp3.OkHttpClient;

/* loaded from: classes4.dex */
public interface SocketFromRemote {

    /* loaded from: classes4.dex */
    public enum Constants implements SocketFromRemote {
        NULL;

        @Override // com.couchbase.lite.internal.sockets.SocketFromRemote
        @NonNull
        public Object getLock() {
            throw new UnsupportedOperationException();
        }

        @Override // com.couchbase.lite.internal.sockets.SocketFromRemote
        public void remoteClosed(@NonNull CloseStatus closeStatus) {
        }

        @Override // com.couchbase.lite.internal.sockets.SocketFromRemote
        public void remoteFailed(@NonNull Throwable th) {
        }

        @Override // com.couchbase.lite.internal.sockets.SocketFromRemote
        public void remoteOpened(int i, @Nullable Map<String, Object> map) {
        }

        @Override // com.couchbase.lite.internal.sockets.SocketFromRemote
        public void remoteRequestsClose(@NonNull CloseStatus closeStatus) {
        }

        @Override // com.couchbase.lite.internal.sockets.SocketFromRemote
        public void remoteWrites(@NonNull byte[] bArr) {
        }

        @Override // com.couchbase.lite.internal.sockets.SocketFromRemote
        public void setupRemoteSocketFactory(@NonNull OkHttpClient.Builder builder) {
        }
    }

    @NonNull
    Object getLock();

    void remoteClosed(@NonNull CloseStatus closeStatus);

    void remoteFailed(@NonNull Throwable th);

    void remoteOpened(int i, @Nullable Map<String, Object> map);

    void remoteRequestsClose(@NonNull CloseStatus closeStatus);

    void remoteWrites(@NonNull byte[] bArr);

    void setupRemoteSocketFactory(@NonNull OkHttpClient.Builder builder);
}
