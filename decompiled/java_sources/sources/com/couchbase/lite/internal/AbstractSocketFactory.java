package com.couchbase.lite.internal;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.couchbase.lite.Endpoint;
import com.couchbase.lite.ReplicatorConfiguration;
import com.couchbase.lite.URLEndpoint;
import com.couchbase.lite.internal.core.C4Replicator;
import com.couchbase.lite.internal.replicator.CBLCookieStore;
import com.couchbase.lite.internal.replicator.CBLWebSocket;
import com.couchbase.lite.internal.sockets.CBLSocketException;
import com.couchbase.lite.internal.sockets.OkHttpSocket;
import com.couchbase.lite.internal.sockets.SocketFromCore;
import com.couchbase.lite.internal.sockets.SocketToCore;
import com.couchbase.lite.internal.utils.InterfaceC2217Fn;
import com.couchbase.lite.internal.utils.Preconditions;
import java.net.URI;
import java.net.URISyntaxException;
import java.security.cert.Certificate;
import java.util.List;

/* loaded from: classes4.dex */
public abstract class AbstractSocketFactory implements BaseSocketFactory {

    @NonNull
    private final CBLCookieStore cookieStore;

    @NonNull
    protected final Endpoint endpoint;

    @NonNull
    private final InterfaceC2217Fn.Consumer<List<Certificate>> serverCertsListener;

    @Nullable
    @GuardedBy("endpoint")
    private InterfaceC2217Fn.Consumer<SocketFromCore> testListener;

    public AbstractSocketFactory(@NonNull ReplicatorConfiguration replicatorConfiguration, @NonNull CBLCookieStore cBLCookieStore, @NonNull InterfaceC2217Fn.Consumer<List<Certificate>> consumer) {
        this.endpoint = replicatorConfiguration.getTarget();
        this.cookieStore = cBLCookieStore;
        this.serverCertsListener = consumer;
    }

    @NonNull
    private SocketFromCore createCBLWebSocket(@NonNull SocketToCore socketToCore, @NonNull String str, @NonNull String str2, int i, @NonNull String str3, @NonNull byte[] bArr) {
        try {
            URI uri = new URI(translateScheme(str), null, str2, i, str3, null, null);
            OkHttpSocket okHttpSocket = new OkHttpSocket();
            CBLWebSocket cBLWebSocket = new CBLWebSocket(okHttpSocket, socketToCore, uri, bArr, this.cookieStore, this.serverCertsListener);
            okHttpSocket.init(cBLWebSocket);
            return cBLWebSocket;
        } catch (URISyntaxException e) {
            throw new CBLSocketException(5, 4, String.format("Bad URI for socket: %s//%s:%d/%s", str, str2, Integer.valueOf(i), str3), e);
        }
    }

    @Nullable
    private InterfaceC2217Fn.Consumer<SocketFromCore> getTestListener() {
        InterfaceC2217Fn.Consumer<SocketFromCore> consumer;
        synchronized (this.endpoint) {
            consumer = this.testListener;
        }
        return consumer;
    }

    @NonNull
    private String translateScheme(@NonNull String str) {
        Preconditions.assertNotNull(str, "scheme");
        return C4Replicator.C4_REPLICATOR_SCHEME_2.equalsIgnoreCase(str) ? C4Replicator.WEBSOCKET_SCHEME : C4Replicator.C4_REPLICATOR_TLS_SCHEME_2.equalsIgnoreCase(str) ? C4Replicator.WEBSOCKET_SECURE_CONNECTION_SCHEME : str;
    }

    @Nullable
    public abstract SocketFromCore createPlatformSocket(@NonNull SocketToCore socketToCore);

    @Override // com.couchbase.lite.internal.BaseSocketFactory
    @NonNull
    public final SocketFromCore createSocket(@NonNull SocketToCore socketToCore, @NonNull String str, @NonNull String str2, int i, @NonNull String str3, @NonNull byte[] bArr) {
        SocketFromCore createCBLWebSocket = this.endpoint instanceof URLEndpoint ? createCBLWebSocket(socketToCore, str, str2, i, str3, bArr) : createPlatformSocket(socketToCore);
        if (createCBLWebSocket != null) {
            InterfaceC2217Fn.Consumer<SocketFromCore> testListener = getTestListener();
            if (testListener != null) {
                testListener.accept(createCBLWebSocket);
            }
            return createCBLWebSocket;
        }
        throw new CBLSocketException(6, 1011, "Can't create endpoint: " + this.endpoint);
    }

    @VisibleForTesting
    public final void setTestListener(@Nullable InterfaceC2217Fn.Consumer<SocketFromCore> consumer) {
        synchronized (this.endpoint) {
            this.testListener = consumer;
        }
    }

    @NonNull
    public String toString() {
        return "SocketFactory{@" + this.endpoint + '}';
    }
}
