package com.couchbase.lite.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.Endpoint;
import com.couchbase.lite.MessageEndpoint;
import com.couchbase.lite.ReplicatorConfiguration;
import com.couchbase.lite.internal.replicator.CBLCookieStore;
import com.couchbase.lite.internal.replicator.MessageSocket;
import com.couchbase.lite.internal.sockets.SocketFromCore;
import com.couchbase.lite.internal.sockets.SocketToCore;
import com.couchbase.lite.internal.utils.InterfaceC2217Fn;
import java.security.cert.Certificate;
import java.util.List;

/* loaded from: classes4.dex */
public class SocketFactory extends AbstractSocketFactory {
    public SocketFactory(@NonNull ReplicatorConfiguration replicatorConfiguration, @NonNull CBLCookieStore cBLCookieStore, @NonNull InterfaceC2217Fn.Consumer<List<Certificate>> consumer) {
        super(replicatorConfiguration, cBLCookieStore, consumer);
    }

    @Override // com.couchbase.lite.internal.AbstractSocketFactory
    @Nullable
    public SocketFromCore createPlatformSocket(@NonNull SocketToCore socketToCore) {
        Endpoint endpoint = this.endpoint;
        if (!(endpoint instanceof MessageEndpoint)) {
            return null;
        }
        MessageEndpoint messageEndpoint = (MessageEndpoint) endpoint;
        return MessageSocket.create(socketToCore, messageEndpoint.getDelegate().createConnection(messageEndpoint), messageEndpoint.getMessageFraming());
    }
}
