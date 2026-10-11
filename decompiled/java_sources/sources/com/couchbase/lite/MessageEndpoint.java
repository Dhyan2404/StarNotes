package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.internal.sockets.MessageFraming;
import com.couchbase.lite.internal.utils.Preconditions;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;

/* loaded from: classes4.dex */
public class MessageEndpoint implements Endpoint {

    @NonNull
    private final MessageEndpointDelegate delegate;

    @NonNull
    private final ProtocolType protocolType;

    @Nullable
    private final Object target;

    @NonNull
    private final String uid;

    public MessageEndpoint(@NonNull String str, @Nullable Object obj, @NonNull ProtocolType protocolType, @NonNull MessageEndpointDelegate messageEndpointDelegate) {
        Preconditions.assertNotNull(str, CouchFieldKey.KEY_UID);
        Preconditions.assertNotNull(protocolType, "protocolType");
        Preconditions.assertNotNull(messageEndpointDelegate, "delegate");
        this.uid = str;
        this.target = obj;
        this.protocolType = protocolType;
        this.delegate = messageEndpointDelegate;
    }

    @NonNull
    public MessageEndpointDelegate getDelegate() {
        return this.delegate;
    }

    @NonNull
    public MessageFraming getMessageFraming() {
        return ProtocolType.getFramingForProtocol(this.protocolType);
    }

    @NonNull
    public ProtocolType getProtocolType() {
        return this.protocolType;
    }

    @Nullable
    public Object getTarget() {
        return this.target;
    }

    @NonNull
    public String getUid() {
        return this.uid;
    }

    @NonNull
    public String toString() {
        return "MessageEndpoint{" + this.uid + ", " + this.protocolType + ", " + this.target + "}";
    }
}
