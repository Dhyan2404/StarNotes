package com.couchbase.lite.internal.core;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.couchbase.lite.CouchbaseLiteException;
import com.couchbase.lite.LiteCoreException;
import com.couchbase.lite.LogDomain;
import com.couchbase.lite.internal.KeyStoreManager;
import com.couchbase.lite.internal.core.C4KeyPair;
import com.couchbase.lite.internal.core.impl.NativeC4KeyPair;
import com.couchbase.lite.internal.core.peers.TaggedWeakPeerBinding;
import com.couchbase.lite.internal.logging.Log;
import com.couchbase.lite.internal.security.Signature;
import com.couchbase.lite.internal.utils.ClassUtils;
import com.couchbase.lite.internal.utils.InterfaceC2217Fn;
import com.couchbase.lite.internal.utils.Preconditions;
import com.sunia.HTREnginev2.cyi;
import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.security.KeyPair;
import java.security.KeyStore;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes4.dex */
public final class C4KeyPair implements AutoCloseable {

    @NonNull
    private static final Map<Integer, Signature.SignatureDigestAlgorithm> C4_TO_DIGEST_ALGORITHM;

    @NonNull
    private static final Map<KeyStoreManager.KeyAlgorithm, Byte> KEY_ALGORITHM_TO_C4;

    @NonNull
    private final NativeImpl impl;

    @NonNull
    private final String keyAlias;
    private final int keyByteSize;

    @Nullable
    private final char[] keyPassword;

    @Nullable
    @SuppressFBWarnings({"SE_BAD_FIELD"})
    private final KeyStore keyStore;

    @Nullable
    private final KeyPair keys;

    @NonNull
    private final AtomicReference<Peer> peer = new AtomicReference<>();
    private final long token;
    private static final LogDomain LOG_DOMAIN = LogDomain.LISTENER;

    @NonNull
    private static final NativeImpl NATIVE_IMPL = new NativeC4KeyPair();

    @NonNull
    @VisibleForTesting
    static final TaggedWeakPeerBinding<C4KeyPair> KEY_PAIR_CONTEXT = new TaggedWeakPeerBinding<>();

    /* loaded from: classes4.dex */
    public interface NativeImpl {
        void nFree(long j);

        long nFromExternal(byte b, int i, long j) throws LiteCoreException;

        @NonNull
        byte[] nGenerateSelfSignedCertificate(long j, byte b, int i, @Nullable String[][] strArr, byte b2, long j2) throws LiteCoreException;
    }

    /* loaded from: classes4.dex */
    public static class Peer extends C4NativePeer {

        @NonNull
        private final NativeImpl impl;

        public Peer(long j, @NonNull NativeImpl nativeImpl) {
            super(j);
            this.impl = nativeImpl;
        }

        private void closePeer(@Nullable LogDomain logDomain) {
            releasePeer(logDomain, new InterfaceC2217Fn.ConsumerThrows() { // from class: com.couchbase.lite.internal.core.a
                @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.ConsumerThrows
                public final void accept(Object obj) {
                    C4KeyPair.Peer.this.lambda$closePeer$1((Long) obj);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$closePeer$1(Long l) throws RuntimeException {
            NativeImpl nativeImpl = this.impl;
            if (nativeImpl != null) {
                nativeImpl.nFree(l.longValue());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ byte[] lambda$generateCert$0(NativeImpl nativeImpl, byte b, int i, String[][] strArr, byte b2, long j, Long l) throws LiteCoreException {
            return nativeImpl.nGenerateSelfSignedCertificate(l.longValue(), b, i, strArr, b2, j);
        }

        @Override // java.lang.AutoCloseable
        public void close() {
            closePeer(null);
        }

        public void finalize() throws Throwable {
            try {
                closePeer(C4KeyPair.LOG_DOMAIN);
            } finally {
                super.finalize();
            }
        }

        @NonNull
        public byte[] generateCert(@NonNull final NativeImpl nativeImpl, final byte b, final int i, @Nullable final String[][] strArr, final byte b2, final long j) throws CouchbaseLiteException {
            try {
                return (byte[]) withPeerOrThrow(new InterfaceC2217Fn.NonNullFunctionThrows() { // from class: com.couchbase.lite.internal.core.b
                    @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NonNullFunctionThrows
                    public final Object apply(Object obj) {
                        byte[] lambda$generateCert$0;
                        lambda$generateCert$0 = C4KeyPair.Peer.lambda$generateCert$0(C4KeyPair.NativeImpl.this, b, i, strArr, b2, j, (Long) obj);
                        return lambda$generateCert$0;
                    }
                });
            } catch (LiteCoreException e) {
                throw CouchbaseLiteException.convertException(e);
            }
        }
    }

    static {
        EnumMap enumMap = new EnumMap(KeyStoreManager.KeyAlgorithm.class);
        enumMap.put((EnumMap) KeyStoreManager.KeyAlgorithm.RSA, (KeyStoreManager.KeyAlgorithm) (byte) 0);
        KEY_ALGORITHM_TO_C4 = Collections.unmodifiableMap(enumMap);
        HashMap hashMap = new HashMap();
        hashMap.put(0, Signature.SignatureDigestAlgorithm.NONE);
        hashMap.put(4, Signature.SignatureDigestAlgorithm.SHA1);
        hashMap.put(5, Signature.SignatureDigestAlgorithm.SHA224);
        hashMap.put(6, Signature.SignatureDigestAlgorithm.SHA256);
        hashMap.put(7, Signature.SignatureDigestAlgorithm.SHA384);
        hashMap.put(8, Signature.SignatureDigestAlgorithm.SHA512);
        C4_TO_DIGEST_ALGORITHM = Collections.unmodifiableMap(hashMap);
    }

    private C4KeyPair(@NonNull NativeImpl nativeImpl, long j, @Nullable KeyStore keyStore, @NonNull String str, @Nullable char[] cArr, int i, @Nullable KeyPair keyPair) {
        this.impl = (NativeImpl) Preconditions.assertNotNull(nativeImpl, "native impl");
        this.token = Preconditions.assertNotZero(j, "token");
        this.keyStore = keyStore;
        this.keyAlias = (String) Preconditions.assertNotNull(str, "alias");
        this.keyPassword = cArr;
        this.keyByteSize = i;
        this.keys = keyPair;
    }

    @NonNull
    public static C4KeyPair createKeyPair(@Nullable KeyStore keyStore, @NonNull String str, @Nullable char[] cArr, @NonNull KeyStoreManager.KeyAlgorithm keyAlgorithm, @NonNull KeyStoreManager.KeySize keySize) throws CouchbaseLiteException {
        return createKeyPair(NATIVE_IMPL, keyStore, str, cArr, keyAlgorithm, keySize, null);
    }

    @Nullable
    public static byte[] decryptCallback(long j, @NonNull byte[] bArr) {
        C4KeyPair keyPair = getKeyPair(j);
        Log.m9899d(LOG_DOMAIN, "^C4KeyPair.decrypt(%d): %s@%x", Integer.valueOf(bArr.length), keyPair, Long.valueOf(j));
        if (keyPair == null) {
            return null;
        }
        return KeyStoreManager.getInstance().decrypt(keyPair, bArr);
    }

    public static void freeCallback(long j) {
        C4KeyPair keyPair = getKeyPair(j);
        Log.m9899d(LOG_DOMAIN, "^C4KeyPair.free: %s@%x", keyPair, Long.valueOf(j));
        if (keyPair == null) {
            return;
        }
        KeyStoreManager.getInstance().free(keyPair);
    }

    private static byte getC4KeyAlgorithm(KeyStoreManager.KeyAlgorithm keyAlgorithm) {
        Byte b = KEY_ALGORITHM_TO_C4.get(keyAlgorithm);
        if (b != null) {
            return b.byteValue();
        }
        throw new IllegalArgumentException("Unrecognized encryption algorithm");
    }

    @NonNull
    private static Signature.SignatureDigestAlgorithm getDigestAlgorithm(int i) {
        Signature.SignatureDigestAlgorithm signatureDigestAlgorithm = C4_TO_DIGEST_ALGORITHM.get(Integer.valueOf(i));
        if (signatureDigestAlgorithm != null) {
            return signatureDigestAlgorithm;
        }
        throw new IllegalArgumentException("Unrecognized algorithm algorithm: " + i);
    }

    @Nullable
    public static byte[] getKeyDataCallback(long j) {
        C4KeyPair keyPair = getKeyPair(j);
        Log.m9899d(LOG_DOMAIN, "^C4KeyPair.getData: %s@%x", keyPair, Long.valueOf(j));
        if (keyPair == null) {
            return null;
        }
        return KeyStoreManager.getInstance().getKeyData(keyPair);
    }

    @Nullable
    private static C4KeyPair getKeyPair(long j) {
        C4KeyPair c4KeyPair = (C4KeyPair) KEY_PAIR_CONTEXT.getBinding(j);
        if (c4KeyPair != null) {
            return c4KeyPair;
        }
        Log.m9908w(LOG_DOMAIN, "Could not find the key pair @" + j);
        return null;
    }

    @Nullable
    public static byte[] signCallback(long j, int i, @NonNull byte[] bArr) {
        C4KeyPair keyPair = getKeyPair(j);
        Log.m9899d(LOG_DOMAIN, "^C4KeyPair.sign(%d: %d): %s@%x", Integer.valueOf(i), Integer.valueOf(bArr.length), keyPair, Long.valueOf(j));
        if (keyPair == null) {
            return null;
        }
        byte[] sign = KeyStoreManager.getInstance().sign(keyPair, getDigestAlgorithm(i), bArr);
        if (sign == null || sign.length != keyPair.keyByteSize) {
            return null;
        }
        return sign;
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        KEY_PAIR_CONTEXT.unbind(this.token);
        Peer andSet = this.peer.getAndSet(null);
        if (andSet != null) {
            andSet.close();
        }
    }

    @NonNull
    public byte[] generateSelfSignedCertificate(@NonNull KeyStoreManager.KeyAlgorithm keyAlgorithm, @NonNull KeyStoreManager.KeySize keySize, @NonNull Map<String, String> map, @NonNull KeyStoreManager.CertUsage certUsage, long j) throws CouchbaseLiteException {
        Peer peer = (Peer) Preconditions.assertNotNull(this.peer.get(), "peer");
        String[][] strArr = new String[map.size()];
        int i = 0;
        for (Map.Entry<String, String> entry : map.entrySet()) {
            strArr[i] = new String[]{entry.getKey(), entry.getValue()};
            i++;
        }
        return peer.generateCert(this.impl, getC4KeyAlgorithm(keyAlgorithm), keySize.getBitLength(), strArr, certUsage.getCode(), j);
    }

    @NonNull
    public String getKeyAlias() {
        return this.keyAlias;
    }

    @Nullable
    public char[] getKeyPassword() {
        char[] cArr = this.keyPassword;
        if (cArr == null) {
            return null;
        }
        return Arrays.copyOf(cArr, cArr.length);
    }

    @Nullable
    public KeyStore getKeyStore() {
        return this.keyStore;
    }

    @Nullable
    public KeyPair getKeys() {
        return this.keys;
    }

    public long getPeer() {
        return ((Peer) Preconditions.assertNotNull(this.peer.get(), "peer")).getPeer();
    }

    public void setPeer(long j) {
        cyi.m53538a(this.peer, null, new Peer(j, this.impl));
    }

    @NonNull
    public String toString() {
        return "C4KeyPair{" + ClassUtils.objId(this) + "/" + super.toString() + ": " + this.token + "}";
    }

    @NonNull
    public static C4KeyPair createKeyPair(@Nullable KeyStore keyStore, @NonNull String str, @Nullable char[] cArr, @NonNull KeyStoreManager.KeyAlgorithm keyAlgorithm, @NonNull KeyStoreManager.KeySize keySize, @Nullable KeyPair keyPair) throws CouchbaseLiteException {
        return createKeyPair(NATIVE_IMPL, keyStore, str, cArr, keyAlgorithm, keySize, keyPair);
    }

    @NonNull
    public static C4KeyPair createKeyPair(@NonNull String str, @NonNull KeyStoreManager.KeyAlgorithm keyAlgorithm, @NonNull KeyStoreManager.KeySize keySize) throws CouchbaseLiteException {
        return createKeyPair(NATIVE_IMPL, null, str, null, keyAlgorithm, keySize, null);
    }

    @NonNull
    @VisibleForTesting
    public static C4KeyPair createKeyPair(@NonNull NativeImpl nativeImpl, @Nullable KeyStore keyStore, @NonNull String str, @Nullable char[] cArr, @NonNull KeyStoreManager.KeyAlgorithm keyAlgorithm, @NonNull KeyStoreManager.KeySize keySize, @Nullable KeyPair keyPair) throws CouchbaseLiteException {
        char[] cArr2;
        if (cArr != null) {
            int length = cArr.length;
            cArr2 = new char[length];
            System.arraycopy(cArr, 0, cArr2, 0, length);
        } else {
            cArr2 = null;
        }
        TaggedWeakPeerBinding<C4KeyPair> taggedWeakPeerBinding = KEY_PAIR_CONTEXT;
        long reserveKey = taggedWeakPeerBinding.reserveKey();
        C4KeyPair c4KeyPair = new C4KeyPair(nativeImpl, reserveKey, keyStore, str, cArr2, keySize.getByteLength(), keyPair);
        taggedWeakPeerBinding.bind(reserveKey, c4KeyPair);
        try {
            c4KeyPair.setPeer(nativeImpl.nFromExternal(getC4KeyAlgorithm(keyAlgorithm), keySize.getBitLength(), reserveKey));
            return c4KeyPair;
        } catch (LiteCoreException e) {
            throw CouchbaseLiteException.convertException(e);
        }
    }
}
