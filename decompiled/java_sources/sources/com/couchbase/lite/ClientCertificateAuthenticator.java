package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.internal.BaseAuthenticator;
import com.couchbase.lite.internal.core.C4Replicator;
import com.couchbase.lite.internal.replicator.AbstractCBLWebSocket;
import com.couchbase.lite.internal.replicator.CBLKeyManager;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes4.dex */
public final class ClientCertificateAuthenticator extends BaseAuthenticator implements Authenticator {

    @NonNull
    private final TLSIdentity identity;

    @Nullable
    private CBLKeyManager keyManager;

    public ClientCertificateAuthenticator(@NonNull TLSIdentity tLSIdentity) {
        this.identity = tLSIdentity;
    }

    @Override // com.couchbase.lite.internal.BaseAuthenticator
    public void authenticate(@NonNull Map<String, Object> map) {
        this.keyManager = new CBLKeyManager(this.identity);
        Map map2 = (Map) map.get(C4Replicator.REPLICATOR_OPTION_AUTHENTICATION);
        if (map2 == null) {
            map2 = new HashMap();
            map.put(C4Replicator.REPLICATOR_OPTION_AUTHENTICATION, map2);
        }
        map2.put("type", C4Replicator.AUTH_TYPE_CLIENT_CERT);
        map2.put(C4Replicator.REPLICATOR_AUTH_CLIENT_CERT_KEY, Long.valueOf(AbstractCBLWebSocket.addKeyManager(this.keyManager)));
    }

    @NonNull
    public TLSIdentity getIdentity() {
        return this.identity;
    }

    @Nullable
    public CBLKeyManager getKeyManager() {
        return this.keyManager;
    }
}
