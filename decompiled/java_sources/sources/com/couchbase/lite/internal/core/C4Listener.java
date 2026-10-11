package com.couchbase.lite.internal.core;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.couchbase.lite.ConnectionStatus;
import com.couchbase.lite.CouchbaseLiteError;
import com.couchbase.lite.CouchbaseLiteException;
import com.couchbase.lite.ListenerAuthenticator;
import com.couchbase.lite.ListenerCertificateAuthenticator;
import com.couchbase.lite.ListenerPasswordAuthenticator;
import com.couchbase.lite.LiteCoreException;
import com.couchbase.lite.LogDomain;
import com.couchbase.lite.internal.core.C4Constants;
import com.couchbase.lite.internal.core.C4Listener;
import com.couchbase.lite.internal.core.impl.NativeC4Listener;
import com.couchbase.lite.internal.core.peers.TaggedWeakPeerBinding;
import com.couchbase.lite.internal.logging.Log;
import com.couchbase.lite.internal.utils.ClassUtils;
import com.couchbase.lite.internal.utils.InterfaceC2217Fn;
import com.couchbase.lite.internal.utils.PlatformUtils;
import com.couchbase.lite.internal.utils.Preconditions;
import com.couchbase.lite.internal.utils.StringUtils;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;

/* loaded from: classes4.dex */
public final class C4Listener implements AutoCloseable {
    public static final String AUTH_MODE_BASIC = "Basic";

    @Nullable
    private final ListenerAuthenticator authenticator;

    @NonNull
    private final NativeImpl impl;

    @Nullable
    private C4ListenerPeer peer;
    private final long token;

    @NonNull
    @VisibleForTesting
    private static final NativeImpl NATIVE_IMPL = new NativeC4Listener();

    @NonNull
    @VisibleForTesting
    static final TaggedWeakPeerBinding<C4Listener> LISTENER_CONTEXT = new TaggedWeakPeerBinding<>();

    /* loaded from: classes4.dex */
    public class C4ListenerPeer extends C4NativePeer {
        public C4ListenerPeer(long j) {
            super(j);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$closePeer$0(Long l) throws RuntimeException {
            NativeImpl nativeImpl = C4Listener.this.impl;
            if (nativeImpl != null) {
                nativeImpl.nFree(l.longValue());
            }
        }

        @Override // java.lang.AutoCloseable
        public void close() {
            closePeer(null);
        }

        public void closePeer(@Nullable LogDomain logDomain) {
            releasePeer(logDomain, new InterfaceC2217Fn.ConsumerThrows() { // from class: com.couchbase.lite.internal.core.e
                @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.ConsumerThrows
                public final void accept(Object obj) {
                    C4Listener.C4ListenerPeer.this.lambda$closePeer$0((Long) obj);
                }
            });
        }
    }

    /* loaded from: classes4.dex */
    public interface NativeImpl {
        public static final int SYNC_API = 2;

        void nFree(long j);

        @NonNull
        ConnectionStatus nGetConnectionStatus(long j);

        int nGetPort(long j);

        @Nullable
        String nGetUriFromPath(@NonNull String str);

        @NonNull
        List<String> nGetUrls(long j, long j2) throws LiteCoreException;

        void nShareDbCollections(long j, @NonNull String str, long j2, long[] jArr) throws LiteCoreException;

        long nStartHttp(long j, int i, @Nullable String str, int i2, @NonNull String str2, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) throws LiteCoreException;

        long nStartTls(long j, int i, @Nullable String str, int i2, @NonNull String str2, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, long j2, @NonNull byte[] bArr, boolean z6, @Nullable byte[] bArr2, boolean z7) throws LiteCoreException;
    }

    public C4Listener(long j, @NonNull NativeImpl nativeImpl, @Nullable ListenerAuthenticator listenerAuthenticator) {
        this.token = Preconditions.assertNotZero(j, "token");
        this.impl = (NativeImpl) Preconditions.assertNotNull(nativeImpl, "native impl");
        this.authenticator = listenerAuthenticator;
    }

    public static boolean certAuthCallback(long j, @Nullable byte[] bArr) {
        C4Listener c4Listener = (C4Listener) LISTENER_CONTEXT.getBinding(j);
        if (c4Listener != null) {
            return c4Listener.authenticateCert(bArr);
        }
        Log.m9908w(LogDomain.LISTENER, "No listener for token: " + j);
        return false;
    }

    @NonNull
    public static C4Listener createHttpListener(int i, @Nullable String str, @NonNull String str2, @Nullable ListenerPasswordAuthenticator listenerPasswordAuthenticator, boolean z, boolean z2, boolean z3) throws CouchbaseLiteException {
        return createHttpListener(NATIVE_IMPL, i, str, str2, listenerPasswordAuthenticator, z, z2, z3);
    }

    @NonNull
    public static C4Listener createTlsListenerCertAuth(int i, @Nullable String str, @NonNull String str2, @Nullable ListenerCertificateAuthenticator listenerCertificateAuthenticator, boolean z, boolean z2, boolean z3, @NonNull Certificate certificate, @Nullable C4KeyPair c4KeyPair) throws CouchbaseLiteException {
        return createTlsListenerCertAuth(NATIVE_IMPL, i, str, str2, listenerCertificateAuthenticator, z, z2, z3, certificate, c4KeyPair);
    }

    @NonNull
    public static C4Listener createTlsListenerPasswordAuth(int i, @Nullable String str, @NonNull String str2, @Nullable ListenerPasswordAuthenticator listenerPasswordAuthenticator, boolean z, boolean z2, boolean z3, @NonNull Certificate certificate, @Nullable C4KeyPair c4KeyPair) throws CouchbaseLiteException {
        return createTlsListenerPasswordAuth(NATIVE_IMPL, i, str, str2, listenerPasswordAuthenticator, z, z2, z3, certificate, c4KeyPair);
    }

    public static boolean httpAuthCallback(long j, @Nullable String str) {
        C4Listener c4Listener = (C4Listener) LISTENER_CONTEXT.getBinding(j);
        if (c4Listener != null) {
            return c4Listener.authenticateBasic(str);
        }
        Log.m9908w(LogDomain.LISTENER, "No listener for token: " + j);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List lambda$getUrls$3(Long l, Long l2) throws LiteCoreException {
        return this.impl.nGetUrls(l2.longValue(), l.longValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ List lambda$getUrls$4(C4ListenerPeer c4ListenerPeer, final Long l) throws LiteCoreException {
        return (List) c4ListenerPeer.withPeerOrNull(new InterfaceC2217Fn.NullableFunctionThrows() { // from class: com.sunia.HTREnginev2.kz
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NullableFunctionThrows
            public final Object apply(Object obj) {
                List lambda$getUrls$3;
                lambda$getUrls$3 = C4Listener.this.lambda$getUrls$3(l, (Long) obj);
                return lambda$getUrls$3;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Long lambda$shareDbCollections$0(long[] jArr, int i, Long l) throws RuntimeException {
        long longValue = l.longValue();
        jArr[i] = longValue;
        return Long.valueOf(longValue);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$shareDbCollections$1(String str, Long l, long[] jArr, Long l2) throws LiteCoreException {
        this.impl.nShareDbCollections(l2.longValue(), str, l.longValue(), jArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$shareDbCollections$2(C4ListenerPeer c4ListenerPeer, final String str, final long[] jArr, final Long l) throws LiteCoreException {
        c4ListenerPeer.withPeer(new InterfaceC2217Fn.ConsumerThrows() { // from class: com.sunia.HTREnginev2.iz
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.ConsumerThrows
            public final void accept(Object obj) {
                C4Listener.this.lambda$shareDbCollections$1(str, l, jArr, (Long) obj);
            }
        });
    }

    public boolean authenticateBasic(@Nullable String str) {
        String[] strArr;
        ListenerAuthenticator listenerAuthenticator = this.authenticator;
        if (!(listenerAuthenticator instanceof InternalPwdAuthenticator)) {
            throw new IllegalArgumentException("authenticator must be a password authenticator");
        }
        InternalPwdAuthenticator internalPwdAuthenticator = (InternalPwdAuthenticator) listenerAuthenticator;
        if (str == null) {
            return false;
        }
        String[] split = str.split("\\s+");
        if (!"Basic".equals(split[0])) {
            Log.m9907i(LogDomain.LISTENER, "Unrecognized authentication mode: %s", split[0]);
            return false;
        }
        if (split.length > 2) {
            Log.m9904i(LogDomain.LISTENER, "Unrecognized authentication material");
            return false;
        }
        if (split.length <= 1 || StringUtils.isEmpty(split[1])) {
            strArr = null;
        } else {
            byte[] decodeString = PlatformUtils.getDecoder().decodeString(split[1]);
            if (decodeString == null || decodeString.length <= 0) {
                Log.m9904i(LogDomain.LISTENER, "Unrecognized authentication material");
                return false;
            }
            strArr = new String(decodeString, StandardCharsets.UTF_8).split(":");
        }
        return internalPwdAuthenticator.authenticate(StringUtils.getArrayString(strArr, 0), StringUtils.getArrayString(strArr, 1).toCharArray());
    }

    public boolean authenticateCert(@Nullable byte[] bArr) {
        ListenerAuthenticator listenerAuthenticator = this.authenticator;
        if (!(listenerAuthenticator instanceof InternalCertAuthenticator)) {
            throw new IllegalArgumentException("authenticator must be a certificate authenticator");
        }
        InternalCertAuthenticator internalCertAuthenticator = (InternalCertAuthenticator) listenerAuthenticator;
        if (bArr == null || bArr.length <= 0) {
            Log.m9908w(LogDomain.LISTENER, "Null/empty cert in authentication");
            return false;
        }
        ArrayList arrayList = new ArrayList();
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
            try {
                arrayList.add(CertificateFactory.getInstance("X.509").generateCertificate(byteArrayInputStream));
                byteArrayInputStream.close();
                return internalCertAuthenticator.authenticate(arrayList);
            } catch (Throwable th) {
                try {
                    byteArrayInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException | CertificateException unused) {
            Log.m9908w(LogDomain.LISTENER, "Failed parsing certificate for: " + this);
            return false;
        }
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        LISTENER_CONTEXT.unbind(this.token);
        C4ListenerPeer c4ListenerPeer = this.peer;
        if (c4ListenerPeer != null) {
            c4ListenerPeer.close();
        }
    }

    public void finalize() throws Throwable {
        C4ListenerPeer c4ListenerPeer = this.peer;
        if (c4ListenerPeer == null) {
            return;
        }
        try {
            c4ListenerPeer.closePeer(LogDomain.LISTENER);
        } finally {
            super.finalize();
        }
    }

    @NonNull
    public ConnectionStatus getConnectionStatus() {
        C4ListenerPeer c4ListenerPeer = this.peer;
        if (c4ListenerPeer == null) {
            throw new CouchbaseLiteError("C4Listener is null");
        }
        final NativeImpl nativeImpl = this.impl;
        Objects.requireNonNull(nativeImpl);
        return (ConnectionStatus) c4ListenerPeer.nonNullWithPeerOrThrow(new InterfaceC2217Fn.NonNullFunction() { // from class: com.sunia.HTREnginev2.gz
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NonNullFunction
            public final Object apply(Object obj) {
                return C4Listener.NativeImpl.this.nGetConnectionStatus(((Long) obj).longValue());
            }
        });
    }

    public int getPort() {
        C4ListenerPeer c4ListenerPeer = (C4ListenerPeer) Preconditions.assertNotNull(this.peer, "peer");
        final NativeImpl nativeImpl = this.impl;
        Objects.requireNonNull(nativeImpl);
        return ((Integer) c4ListenerPeer.nonNullWithPeerOrThrow(new InterfaceC2217Fn.NonNullFunction() { // from class: com.sunia.HTREnginev2.jz
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NonNullFunction
            public final Object apply(Object obj) {
                return Integer.valueOf(C4Listener.NativeImpl.this.nGetPort(((Long) obj).longValue()));
            }
        })).intValue();
    }

    @Nullable
    public String getUriFromPath(@NonNull String str) {
        return this.impl.nGetUriFromPath(str);
    }

    @Nullable
    public List<String> getUrls(@NonNull C4Database c4Database) {
        final C4ListenerPeer c4ListenerPeer = this.peer;
        if (c4ListenerPeer == null) {
            return null;
        }
        try {
            return (List) c4Database.withPeerOrNull(new InterfaceC2217Fn.NullableFunctionThrows() { // from class: com.couchbase.lite.internal.core.d
                @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NullableFunctionThrows
                public final Object apply(Object obj) {
                    List lambda$getUrls$4;
                    lambda$getUrls$4 = C4Listener.this.lambda$getUrls$4(c4ListenerPeer, (Long) obj);
                    return lambda$getUrls$4;
                }
            });
        } catch (LiteCoreException e) {
            Log.m9909w(LogDomain.LISTENER, "Failed getting URLs", e);
            return null;
        }
    }

    public void setPeer(long j) {
        this.peer = new C4ListenerPeer(j);
    }

    public void shareDbCollections(@NonNull final String str, @NonNull C4Database c4Database, @NonNull Set<C4Collection> set) throws CouchbaseLiteException {
        final C4ListenerPeer c4ListenerPeer = this.peer;
        if (c4ListenerPeer == null) {
            throw new CouchbaseLiteError("C4Listener is null");
        }
        final long[] jArr = new long[set.size()];
        Iterator<C4Collection> it2 = set.iterator();
        final int i = 0;
        while (it2.hasNext()) {
            it2.next().withPeerOrThrow(new InterfaceC2217Fn.NonNullFunctionThrows() { // from class: com.sunia.HTREnginev2.hz
                @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NonNullFunctionThrows
                public final Object apply(Object obj) {
                    Long lambda$shareDbCollections$0;
                    lambda$shareDbCollections$0 = C4Listener.lambda$shareDbCollections$0(jArr, i, (Long) obj);
                    return lambda$shareDbCollections$0;
                }
            });
            i++;
        }
        try {
            c4Database.voidWithPeerOrThrow(new InterfaceC2217Fn.ConsumerThrows() { // from class: com.couchbase.lite.internal.core.c
                @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.ConsumerThrows
                public final void accept(Object obj) {
                    C4Listener.this.lambda$shareDbCollections$2(c4ListenerPeer, str, jArr, (Long) obj);
                }
            });
        } catch (LiteCoreException e) {
            throw CouchbaseLiteException.convertException(e);
        }
    }

    @NonNull
    public String toString() {
        return "C4Listener{" + ClassUtils.objId(this) + "/" + super.toString() + ": " + this.token + "}";
    }

    @NonNull
    @VisibleForTesting
    public static C4Listener createHttpListener(@NonNull NativeImpl nativeImpl, int i, @Nullable String str, @NonNull String str2, @Nullable ListenerPasswordAuthenticator listenerPasswordAuthenticator, boolean z, boolean z2, boolean z3) throws CouchbaseLiteException {
        TaggedWeakPeerBinding<C4Listener> taggedWeakPeerBinding = LISTENER_CONTEXT;
        long reserveKey = taggedWeakPeerBinding.reserveKey();
        C4Listener c4Listener = new C4Listener(reserveKey, nativeImpl, listenerPasswordAuthenticator);
        taggedWeakPeerBinding.bind(reserveKey, c4Listener);
        try {
            c4Listener.setPeer(nativeImpl.nStartHttp(reserveKey, i, str, 2, str2, false, false, z, z2, z3, listenerPasswordAuthenticator != null));
            return c4Listener;
        } catch (LiteCoreException e) {
            throw CouchbaseLiteException.convertException(e);
        }
    }

    @NonNull
    @VisibleForTesting
    public static C4Listener createTlsListenerCertAuth(@NonNull NativeImpl nativeImpl, int i, @Nullable String str, @NonNull String str2, @Nullable ListenerCertificateAuthenticator listenerCertificateAuthenticator, boolean z, boolean z2, boolean z3, @NonNull Certificate certificate, @Nullable C4KeyPair c4KeyPair) throws CouchbaseLiteException {
        if (c4KeyPair != null) {
            TaggedWeakPeerBinding<C4Listener> taggedWeakPeerBinding = LISTENER_CONTEXT;
            long reserveKey = taggedWeakPeerBinding.reserveKey();
            C4Listener c4Listener = new C4Listener(reserveKey, nativeImpl, listenerCertificateAuthenticator);
            taggedWeakPeerBinding.bind(reserveKey, c4Listener);
            try {
                c4Listener.setPeer(nativeImpl.nStartTls(reserveKey, i, str, 2, str2, false, false, z, z2, z3, c4KeyPair.getPeer(), certificate.getEncoded(), true, listenerCertificateAuthenticator == null ? null : listenerCertificateAuthenticator.getRootCerts(), false));
                return c4Listener;
            } catch (LiteCoreException e) {
                throw CouchbaseLiteException.convertException(e);
            } catch (CertificateEncodingException e2) {
                throw new CouchbaseLiteException("Bad cert encoding", e2, C4Constants.LogDomain.LISTENER, 5010);
            }
        }
        throw new IllegalArgumentException("keyPair must not be null");
    }

    @NonNull
    @VisibleForTesting
    public static C4Listener createTlsListenerPasswordAuth(@NonNull NativeImpl nativeImpl, int i, @Nullable String str, @NonNull String str2, @Nullable ListenerPasswordAuthenticator listenerPasswordAuthenticator, boolean z, boolean z2, boolean z3, @NonNull Certificate certificate, @Nullable C4KeyPair c4KeyPair) throws CouchbaseLiteException {
        Preconditions.assertNotNull(str2, "database path");
        Preconditions.assertNotNull(certificate, "server cert");
        C4KeyPair c4KeyPair2 = (C4KeyPair) Preconditions.assertNotNull(c4KeyPair, "key pair");
        TaggedWeakPeerBinding<C4Listener> taggedWeakPeerBinding = LISTENER_CONTEXT;
        long reserveKey = taggedWeakPeerBinding.reserveKey();
        C4Listener c4Listener = new C4Listener(reserveKey, nativeImpl, listenerPasswordAuthenticator);
        taggedWeakPeerBinding.bind(reserveKey, c4Listener);
        try {
            c4Listener.setPeer(nativeImpl.nStartTls(reserveKey, i, str, 2, str2, false, false, z, z2, z3, c4KeyPair2.getPeer(), certificate.getEncoded(), false, null, listenerPasswordAuthenticator != null));
            return c4Listener;
        } catch (LiteCoreException e) {
            throw CouchbaseLiteException.convertException(e);
        } catch (CertificateEncodingException e2) {
            throw new CouchbaseLiteException("Bad cert encoding", e2, C4Constants.LogDomain.LISTENER, 5010);
        }
    }
}
