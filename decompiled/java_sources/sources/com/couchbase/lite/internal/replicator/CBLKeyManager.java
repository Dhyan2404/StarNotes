package com.couchbase.lite.internal.replicator;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.couchbase.lite.TLSIdentity;
import com.couchbase.lite.internal.KeyStoreManager;
import com.couchbase.lite.internal.core.C4KeyPair;
import java.net.Socket;
import java.security.Principal;
import java.security.PrivateKey;
import java.security.cert.X509Certificate;
import javax.net.ssl.X509KeyManager;

/* loaded from: classes4.dex */
public class CBLKeyManager implements X509KeyManager {

    @NonNull
    private final TLSIdentity identity;

    public CBLKeyManager(@NonNull TLSIdentity tLSIdentity) {
        this.identity = tLSIdentity;
    }

    @Override // javax.net.ssl.X509KeyManager
    @NonNull
    public String chooseClientAlias(@NonNull String[] strArr, @NonNull Principal[] principalArr, @NonNull Socket socket) {
        return this.identity.getKeyPair().getKeyAlias();
    }

    @Override // javax.net.ssl.X509KeyManager
    @NonNull
    public String chooseServerAlias(@NonNull String str, @NonNull Principal[] principalArr, @NonNull Socket socket) {
        throw new UnsupportedOperationException("chooseServerAlias(String, Principal[]) not supported for client");
    }

    @Override // javax.net.ssl.X509KeyManager
    @NonNull
    public X509Certificate[] getCertificateChain(@NonNull String str) {
        return (X509Certificate[]) this.identity.getCerts().toArray(new X509Certificate[0]);
    }

    @Override // javax.net.ssl.X509KeyManager
    @NonNull
    public String[] getClientAliases(@NonNull String str, @NonNull Principal[] principalArr) {
        return new String[]{this.identity.getKeyPair().getKeyAlias()};
    }

    @Override // javax.net.ssl.X509KeyManager
    @Nullable
    public PrivateKey getPrivateKey(@NonNull String str) {
        C4KeyPair keyPair = this.identity.getKeyPair();
        return KeyStoreManager.getInstance().getKey(keyPair.getKeyStore(), keyPair.getKeyAlias(), keyPair.getKeyPassword());
    }

    @Override // javax.net.ssl.X509KeyManager
    @NonNull
    public String[] getServerAliases(@NonNull String str, @NonNull Principal[] principalArr) {
        throw new UnsupportedOperationException("getServerAliases(String, Principal[]) not supported for client");
    }
}
