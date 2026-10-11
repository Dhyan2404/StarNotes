package com.couchbase.lite;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.couchbase.lite.CBLError;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.couchbase.lite.internal.KeyStoreManager;
import com.couchbase.lite.internal.core.C4KeyPair;
import com.couchbase.lite.internal.utils.InterfaceC2217Fn;
import com.couchbase.lite.internal.utils.Preconditions;
import java.security.PrivateKey;
import java.security.cert.Certificate;
import java.security.interfaces.RSAKey;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes4.dex */
public final class TLSIdentity extends BaseTLSIdentity {
    private TLSIdentity(@NonNull String str, @NonNull C4KeyPair c4KeyPair, @NonNull List<Certificate> list) {
        super(str, c4KeyPair, list);
    }

    @NonNull
    public static TLSIdentity createIdentity(boolean z, @NonNull Map<String, String> map, @Nullable Date date, @NonNull String str) throws CouchbaseLiteException {
        Preconditions.assertNotNull(map, "attributes");
        Preconditions.assertNotNull(str, "alias");
        KeyStoreManager.checkAlias(str);
        BaseTLSIdentity.getManager().createSelfSignedCertEntry(null, str, null, z, map, date);
        TLSIdentity identity = getIdentity(str);
        if (identity != null) {
            return identity;
        }
        throw new CouchbaseLiteException("Could not find new identity in the KeyStore", CBLError.Domain.CBLITE, 22);
    }

    @VisibleForTesting
    public static void deleteIdentity(@NonNull final String str) throws CouchbaseLiteException {
        KeyStoreManager manager = BaseTLSIdentity.getManager();
        Objects.requireNonNull(str);
        manager.deleteEntries(null, new InterfaceC2217Fn.Predicate() { // from class: com.sunia.HTREnginev2.e7n
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.Predicate
            public final boolean test(Object obj) {
                return str.equals((String) obj);
            }
        });
    }

    @Nullable
    public static TLSIdentity getAnonymousIdentity(@NonNull String str) throws CouchbaseLiteException {
        String str2 = KeyStoreManager.ANON_IDENTITY_ALIAS + str;
        KeyStoreManager keyStoreManager = KeyStoreManager.getInstance();
        if (keyStoreManager.findAlias(null, str2)) {
            return getIdentity(str2);
        }
        HashMap hashMap = new HashMap();
        hashMap.put(BaseTLSIdentity.CERT_ATTRIBUTE_COMMON_NAME, KeyStoreManager.ANON_COMMON_NAME);
        keyStoreManager.createSelfSignedCertEntry(null, str2, null, true, hashMap, null);
        return getIdentity(str2);
    }

    @Nullable
    public static TLSIdentity getIdentity(@NonNull String str) throws CouchbaseLiteException {
        Preconditions.assertNotNull(str, "alias");
        List<Certificate> certificateChain = BaseTLSIdentity.getManager().getCertificateChain(null, str);
        if (certificateChain == null) {
            com.couchbase.lite.internal.logging.Log.m9904i(LogDomain.LISTENER, "No cert chain for: " + str);
            return null;
        }
        PrivateKey key = BaseTLSIdentity.getManager().getKey(null, str, null);
        if (key != null) {
            return new TLSIdentity(str, C4KeyPair.createKeyPair(null, str, null, KeyStoreManager.KeyAlgorithm.RSA, KeyStoreManager.KeySize.getKeySize(((RSAKey) key).getModulus().bitLength()), null), certificateChain);
        }
        com.couchbase.lite.internal.logging.Log.m9904i(LogDomain.LISTENER, "No private key for: " + str);
        return null;
    }
}
