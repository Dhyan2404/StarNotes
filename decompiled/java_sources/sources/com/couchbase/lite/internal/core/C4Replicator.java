package com.couchbase.lite.internal.core;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.couchbase.lite.AbstractReplicator;
import com.couchbase.lite.Collection;
import com.couchbase.lite.CollectionConfiguration;
import com.couchbase.lite.LiteCoreException;
import com.couchbase.lite.LogDomain;
import com.couchbase.lite.ReplicatorType;
import com.couchbase.lite.internal.BaseSocketFactory;
import com.couchbase.lite.internal.ReplicationCollection;
import com.couchbase.lite.internal.SocketFactory;
import com.couchbase.lite.internal.core.C4Replicator;
import com.couchbase.lite.internal.core.impl.NativeC4Replicator;
import com.couchbase.lite.internal.core.peers.TaggedWeakPeerBinding;
import com.couchbase.lite.internal.fleece.FLEncoder;
import com.couchbase.lite.internal.fleece.FLSliceResult;
import com.couchbase.lite.internal.fleece.FLValue;
import com.couchbase.lite.internal.logging.Log;
import com.couchbase.lite.internal.sockets.MessageFraming;
import com.couchbase.lite.internal.utils.ClassUtils;
import com.couchbase.lite.internal.utils.InterfaceC2217Fn;
import com.couchbase.lite.internal.utils.Preconditions;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* loaded from: classes4.dex */
public abstract class C4Replicator extends C4NativePeer {
    public static final String AUTH_TYPE_BASIC = "Basic";
    public static final String AUTH_TYPE_CLIENT_CERT = "Client Cert";
    public static final String AUTH_TYPE_FACEBOOK = "Facebook";
    public static final String AUTH_TYPE_OPEN_ID_CONNECT = "OpenID Connect";
    public static final String AUTH_TYPE_SESSION = "Session";
    public static final String C4_REPLICATOR_SCHEME_2 = "blip";
    public static final String C4_REPLICATOR_TLS_SCHEME_2 = "blips";

    /* renamed from: ID */
    private static final String f16302ID = "JRepl@";
    public static final String MESSAGE_SCHEME = "x-msg-endpt";
    public static final int PROGRESS_OVERALL = 0;
    public static final int PROGRESS_PER_ATTACHMENT = 2;
    public static final int PROGRESS_PER_DOC = 1;
    public static final String REPLICATOR_AUTH_CLIENT_CERT = "clientCert";
    public static final String REPLICATOR_AUTH_CLIENT_CERT_KEY = "clientCertKey";
    public static final String REPLICATOR_AUTH_PASSWORD = "password";
    public static final String REPLICATOR_AUTH_TOKEN = "token";
    public static final String REPLICATOR_AUTH_TYPE = "type";
    public static final String REPLICATOR_AUTH_USER_NAME = "username";
    public static final String REPLICATOR_CHECKPOINT_INTERVAL = "checkpointInterval";
    public static final String REPLICATOR_COMPRESSION_LEVEL = "BLIPCompressionLevel";
    public static final String REPLICATOR_HEARTBEAT_INTERVAL = "heartbeat";
    public static final String REPLICATOR_OPTION_ACCEPT_PARENT_COOKIES = "acceptParentDomainCookies";
    public static final String REPLICATOR_OPTION_AUTHENTICATION = "auth";
    public static final String REPLICATOR_OPTION_CHANNELS = "channels";
    public static final String REPLICATOR_OPTION_COOKIES = "cookies";
    public static final String REPLICATOR_OPTION_DISABLE_DELTAS = "noDeltas";
    public static final String REPLICATOR_OPTION_DISABLE_PROPERTY_DECRYPTION = "noDecryption";
    public static final String REPLICATOR_OPTION_DOC_IDS = "docIDs";
    public static final String REPLICATOR_OPTION_ENABLE_AUTO_PURGE = "autoPurge";
    public static final String REPLICATOR_OPTION_EXTRA_HEADERS = "headers";
    public static final String REPLICATOR_OPTION_FILTER = "filter";
    public static final String REPLICATOR_OPTION_FILTER_PARAMS = "filterParams";
    public static final String REPLICATOR_OPTION_MAX_RETRIES = "maxRetries";
    public static final String REPLICATOR_OPTION_MAX_RETRY_INTERVAL = "maxRetryInterval";
    public static final String REPLICATOR_OPTION_NO_INCOMING_CONFLICTS = "noIncomingConflicts";
    public static final String REPLICATOR_OPTION_OUTGOING_CONFLICTS = "outgoingConflicts";
    public static final String REPLICATOR_OPTION_PINNED_SERVER_CERT = "pinnedCert";
    public static final String REPLICATOR_OPTION_PROXY_PASS = "proxyPassword";
    public static final String REPLICATOR_OPTION_PROXY_USER = "proxyUser";
    public static final String REPLICATOR_OPTION_REMOTE_DB_UNIQUE_ID = "remoteDBUniqueID";
    public static final String REPLICATOR_OPTION_ROOT_CERTS = "rootCerts";
    public static final String REPLICATOR_OPTION_SELF_SIGNED_SERVER_CERT = "onlySelfSignedServer";
    public static final String REPLICATOR_OPTION_SKIP_DELETED = "skipDeleted";
    public static final String SOCKET_OPTIONS_NETWORK_INTERFACE = "networkInterface";
    public static final String SOCKET_OPTION_WS_PROTOCOLS = "WS-Protocols";
    public static final String WEBSOCKET_SCHEME = "ws";
    public static final String WEBSOCKET_SECURE_CONNECTION_SCHEME = "wss";

    @NonNull
    @VisibleForTesting
    final List<ReplicationCollection> colls;

    @NonNull
    private final NativeImpl impl;

    @NonNull
    protected final StatusListener statusListener;

    @VisibleForTesting
    final long token;
    public static final LogDomain LOG_DOMAIN = LogDomain.REPLICATOR;

    @NonNull
    private static final NativeImpl NATIVE_IMPL = new NativeC4Replicator();

    @NonNull
    @VisibleForTesting
    static final TaggedWeakPeerBinding<C4Replicator> BOUND_REPLICATORS = new TaggedWeakPeerBinding<>();

    /* loaded from: classes4.dex */
    public static final class C4CommonReplicator extends C4Replicator {

        @NonNull
        private final DocEndsListener docEndsListener;

        @NonNull
        private final AbstractReplicator replicator;

        @Nullable
        private final SocketFactory socketFactory;
        private final long socketFactoryToken;

        public C4CommonReplicator(@NonNull NativeImpl nativeImpl, long j, long j2, @NonNull List<ReplicationCollection> list, @NonNull StatusListener statusListener, @NonNull DocEndsListener docEndsListener, @NonNull AbstractReplicator abstractReplicator, @Nullable SocketFactory socketFactory, long j3) {
            super(nativeImpl, j, j2, list, statusListener);
            this.docEndsListener = docEndsListener;
            this.replicator = (AbstractReplicator) Preconditions.assertNotNull(abstractReplicator, "replicator");
            this.socketFactory = socketFactory;
            this.socketFactoryToken = j3;
        }

        @Override // com.couchbase.lite.internal.core.C4Replicator
        public void documentsEnded(@NonNull List<C4DocumentEnded> list, boolean z) {
            this.docEndsListener.documentsEnded(list, z);
        }

        @Override // com.couchbase.lite.internal.core.C4Replicator
        public void releaseResources() {
            BaseSocketFactory.unbindSocketFactory(this.socketFactoryToken);
        }

        @Override // com.couchbase.lite.internal.core.C4NativePeer
        @NonNull
        public String toString() {
            return "C4CommonRepl{" + ClassUtils.objId(this) + "/" + super.toString() + ", " + ClassUtils.objId(this.replicator) + ", " + this.socketFactory + "'}";
        }
    }

    /* loaded from: classes4.dex */
    public static final class C4MessageEndpointReplicator extends C4Replicator {

        @NonNull
        private final C4Socket c4Socket;

        public C4MessageEndpointReplicator(@NonNull NativeImpl nativeImpl, long j, long j2, @NonNull C4Socket c4Socket, @NonNull List<ReplicationCollection> list, @NonNull StatusListener statusListener) {
            super(nativeImpl, j, j2, list, statusListener);
            this.c4Socket = c4Socket;
        }

        @Override // com.couchbase.lite.internal.core.C4Replicator
        public void documentsEnded(@NonNull List<C4DocumentEnded> list, boolean z) {
            Log.m9899d(C4Replicator.LOG_DOMAIN, "%s: Unsupported call to doc ended for MessageEndpoint", getReplId());
        }

        @Override // com.couchbase.lite.internal.core.C4Replicator
        public void releaseResources() {
        }

        @Override // com.couchbase.lite.internal.core.C4NativePeer
        @NonNull
        public String toString() {
            return "C4MessageEndpointRepl{" + getReplId() + "/" + super.toString() + ", " + this.statusListener + "'}";
        }
    }

    @FunctionalInterface
    /* loaded from: classes4.dex */
    public interface DocEndsListener {
        void documentsEnded(@NonNull List<C4DocumentEnded> list, boolean z);
    }

    /* loaded from: classes4.dex */
    public interface NativeImpl {
        long nCreate(@NonNull String str, @NonNull ReplicationCollection[] replicationCollectionArr, long j, @Nullable String str2, @Nullable String str3, int i, @Nullable String str4, @Nullable String str5, int i2, boolean z, boolean z2, boolean z3, @Nullable byte[] bArr, long j2, long j3) throws LiteCoreException;

        long nCreateLocal(@NonNull String str, @NonNull ReplicationCollection[] replicationCollectionArr, long j, long j2, boolean z, boolean z2, boolean z3, @Nullable byte[] bArr, long j3) throws LiteCoreException;

        long nCreateWithSocket(@NonNull String str, @NonNull ReplicationCollection[] replicationCollectionArr, long j, long j2, @Nullable byte[] bArr, long j3) throws LiteCoreException;

        void nFree(long j);

        @NonNull
        FLSliceResult nGetPendingDocIds(long j, @NonNull String str, @NonNull String str2) throws LiteCoreException;

        @NonNull
        C4ReplicatorStatus nGetStatus(long j);

        boolean nIsDocumentPending(long j, @NonNull String str, @NonNull String str2, @NonNull String str3) throws LiteCoreException;

        void nSetHostReachable(long j, boolean z);

        void nSetOptions(long j, @Nullable byte[] bArr);

        void nSetProgressLevel(long j, int i) throws LiteCoreException;

        void nStart(long j, boolean z);

        void nStop(long j);
    }

    @FunctionalInterface
    /* loaded from: classes4.dex */
    public interface StatusListener {
        void statusChanged(@NonNull C4Replicator c4Replicator, @NonNull C4ReplicatorStatus c4ReplicatorStatus);
    }

    public C4Replicator(@NonNull NativeImpl nativeImpl, long j, long j2, @NonNull List<ReplicationCollection> list, @NonNull StatusListener statusListener) {
        super(j);
        this.impl = nativeImpl;
        this.token = Preconditions.assertNotZero(j2, "token");
        this.colls = (List) Preconditions.assertNotNull(list, "collections");
        this.statusListener = (StatusListener) Preconditions.assertNotNull(statusListener, "status listener");
    }

    private void closePeer(@Nullable LogDomain logDomain) {
        releasePeer(logDomain, new InterfaceC2217Fn.ConsumerThrows() { // from class: com.sunia.HTREnginev2.d00
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.ConsumerThrows
            public final void accept(Object obj) {
                C4Replicator.this.lambda$closePeer$7((Long) obj);
            }
        });
    }

    @NonNull
    public static C4Replicator createLocalReplicator(@NonNull Map<Collection, CollectionConfiguration> map, long j, @NonNull C4Database c4Database, @NonNull ReplicatorType replicatorType, boolean z, @Nullable Map<String, Object> map2, @NonNull StatusListener statusListener, @NonNull DocEndsListener docEndsListener, @NonNull AbstractReplicator abstractReplicator) throws LiteCoreException {
        return createLocalReplicator(NATIVE_IMPL, map, j, c4Database, replicatorType, z, map2, statusListener, docEndsListener, abstractReplicator);
    }

    @NonNull
    public static C4Replicator createMessageEndpointReplicator(@NonNull Set<Collection> set, long j, @NonNull C4Socket c4Socket, @Nullable Map<String, Object> map, @NonNull StatusListener statusListener) throws LiteCoreException {
        return createMessageEndpointReplicator(NATIVE_IMPL, set, j, c4Socket, map, statusListener);
    }

    @NonNull
    public static C4Replicator createRemoteReplicator(@NonNull Map<Collection, CollectionConfiguration> map, long j, @Nullable String str, @Nullable String str2, int i, @Nullable String str3, @Nullable String str4, @NonNull MessageFraming messageFraming, @NonNull ReplicatorType replicatorType, boolean z, @Nullable Map<String, Object> map2, @NonNull StatusListener statusListener, @NonNull DocEndsListener docEndsListener, @NonNull AbstractReplicator abstractReplicator, @Nullable SocketFactory socketFactory) throws LiteCoreException {
        return createRemoteReplicator(NATIVE_IMPL, map, j, str, str2, i, str3, str4, messageFraming, replicatorType, z, map2, statusListener, docEndsListener, abstractReplicator, socketFactory);
    }

    public static void documentEndedCallback(long j, boolean z, @Nullable C4DocumentEnded... c4DocumentEndedArr) {
        String replId;
        C4Replicator c4Replicator = (C4Replicator) BOUND_REPLICATORS.getBinding(j);
        if (c4Replicator == null) {
            replId = "???@" + j;
        } else {
            replId = c4Replicator.getReplId();
        }
        int length = c4DocumentEndedArr == null ? 0 : c4DocumentEndedArr.length;
        Log.m9899d(LOG_DOMAIN, "C4Replicator(%s).documentEndedCallback: %d (%s)", replId, Integer.valueOf(length), Boolean.valueOf(z));
        if (c4Replicator == null || length <= 0) {
            return;
        }
        c4Replicator.documentsEnded(Arrays.asList(c4DocumentEndedArr), z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$closePeer$7(Long l) throws RuntimeException {
        releaseResources();
        BOUND_REPLICATORS.unbind(this.token);
        NativeImpl nativeImpl = this.impl;
        if (nativeImpl != null) {
            nativeImpl.nStop(l.longValue());
            nativeImpl.nFree(l.longValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Long lambda$createLocalReplicator$0(NativeImpl nativeImpl, long j, ReplicationCollection[] replicationCollectionArr, long j2, ReplicatorType replicatorType, boolean z, Map map, Long l) throws LiteCoreException {
        String str = f16302ID + j;
        long longValue = l.longValue();
        ReplicatorType replicatorType2 = ReplicatorType.PUSH_AND_PULL;
        return Long.valueOf(nativeImpl.nCreateLocal(str, replicationCollectionArr, j2, longValue, replicatorType == replicatorType2 || replicatorType == ReplicatorType.PUSH, replicatorType == replicatorType2 || replicatorType == ReplicatorType.PULL, z, (map == null || map.isEmpty()) ? null : FLEncoder.encodeMap(map), j));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ FLSliceResult lambda$getPendingDocIDs$4(String str, String str2, Long l) throws LiteCoreException {
        return this.impl.nGetPendingDocIds(l.longValue(), str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$isDocumentPending$3(String str, String str2, String str3, Long l) throws LiteCoreException {
        return Boolean.valueOf(this.impl.nIsDocumentPending(l.longValue(), str, str2, str3));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setHostReachable$6(boolean z, Long l) throws RuntimeException {
        this.impl.nSetHostReachable(l.longValue(), z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setOptions$2(byte[] bArr, Long l) throws RuntimeException {
        this.impl.nSetOptions(l.longValue(), bArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setProgressLevel$5(int i, Long l) throws LiteCoreException {
        this.impl.nSetProgressLevel(l.longValue(), i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$start$1(boolean z, Long l) throws RuntimeException {
        this.impl.nStart(l.longValue(), z);
    }

    public static void statusChangedCallback(long j, @Nullable C4ReplicatorStatus c4ReplicatorStatus) {
        String replId;
        C4Replicator c4Replicator = (C4Replicator) BOUND_REPLICATORS.getBinding(j);
        if (c4Replicator == null) {
            replId = "???@" + j;
        } else {
            replId = c4Replicator.getReplId();
        }
        Log.m9899d(LOG_DOMAIN, "C4Replicator(%s).statusChangedCallback: %s", replId, c4ReplicatorStatus);
        if (c4Replicator == null || c4ReplicatorStatus == null) {
            return;
        }
        c4Replicator.statusChanged(c4Replicator, c4ReplicatorStatus);
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        Iterator<ReplicationCollection> it2 = this.colls.iterator();
        while (it2.hasNext()) {
            it2.next().close();
        }
        closePeer(null);
    }

    public abstract void documentsEnded(@NonNull List<C4DocumentEnded> list, boolean z);

    public void finalize() throws Throwable {
        try {
            closePeer(LOG_DOMAIN);
        } finally {
            super.finalize();
        }
    }

    @NonNull
    public Set<String> getPendingDocIDs(@NonNull final String str, @NonNull final String str2) throws LiteCoreException {
        FLValue fromData = FLValue.fromData((FLSliceResult) withPeerOrNull(new InterfaceC2217Fn.NullableFunctionThrows() { // from class: com.sunia.HTREnginev2.g00
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NullableFunctionThrows
            public final Object apply(Object obj) {
                FLSliceResult lambda$getPendingDocIDs$4;
                lambda$getPendingDocIDs$4 = C4Replicator.this.lambda$getPendingDocIDs$4(str, str2, (Long) obj);
                return lambda$getPendingDocIDs$4;
            }
        }));
        return fromData == null ? Collections.emptySet() : new HashSet(fromData.asTypedArray());
    }

    @NonNull
    public String getReplId() {
        return f16302ID + this.token;
    }

    @Nullable
    public C4ReplicatorStatus getStatus() {
        final NativeImpl nativeImpl = this.impl;
        Objects.requireNonNull(nativeImpl);
        return (C4ReplicatorStatus) withPeerOrNull(new InterfaceC2217Fn.NullableFunctionThrows() { // from class: com.sunia.HTREnginev2.j00
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NullableFunctionThrows
            public final Object apply(Object obj) {
                return C4Replicator.NativeImpl.this.nGetStatus(((Long) obj).longValue());
            }
        });
    }

    public boolean isDocumentPending(@NonNull final String str, @NonNull final String str2, @NonNull final String str3) throws LiteCoreException {
        return ((Boolean) withPeerOrDefault(Boolean.FALSE, new InterfaceC2217Fn.NullableFunctionThrows() { // from class: com.sunia.HTREnginev2.i00
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NullableFunctionThrows
            public final Object apply(Object obj) {
                Boolean lambda$isDocumentPending$3;
                lambda$isDocumentPending$3 = C4Replicator.this.lambda$isDocumentPending$3(str, str2, str3, (Long) obj);
                return lambda$isDocumentPending$3;
            }
        })).booleanValue();
    }

    public abstract void releaseResources();

    public void setHostReachable(final boolean z) {
        withPeer(new InterfaceC2217Fn.ConsumerThrows() { // from class: com.sunia.HTREnginev2.e00
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.ConsumerThrows
            public final void accept(Object obj) {
                C4Replicator.this.lambda$setHostReachable$6(z, (Long) obj);
            }
        });
    }

    public void setOptions(@Nullable final byte[] bArr) {
        withPeer(new InterfaceC2217Fn.ConsumerThrows() { // from class: com.sunia.HTREnginev2.b00
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.ConsumerThrows
            public final void accept(Object obj) {
                C4Replicator.this.lambda$setOptions$2(bArr, (Long) obj);
            }
        });
    }

    public void setProgressLevel(final int i) throws LiteCoreException {
        withPeer(new InterfaceC2217Fn.ConsumerThrows() { // from class: com.sunia.HTREnginev2.h00
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.ConsumerThrows
            public final void accept(Object obj) {
                C4Replicator.this.lambda$setProgressLevel$5(i, (Long) obj);
            }
        });
    }

    public void start(final boolean z) {
        withPeer(new InterfaceC2217Fn.ConsumerThrows() { // from class: com.sunia.HTREnginev2.f00
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.ConsumerThrows
            public final void accept(Object obj) {
                C4Replicator.this.lambda$start$1(z, (Long) obj);
            }
        });
    }

    public void statusChanged(@NonNull C4Replicator c4Replicator, @NonNull C4ReplicatorStatus c4ReplicatorStatus) {
        this.statusListener.statusChanged(c4Replicator, c4ReplicatorStatus);
    }

    public void stop() {
        final NativeImpl nativeImpl = this.impl;
        Objects.requireNonNull(nativeImpl);
        withPeer(new InterfaceC2217Fn.ConsumerThrows() { // from class: com.sunia.HTREnginev2.c00
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.ConsumerThrows
            public final void accept(Object obj) {
                C4Replicator.NativeImpl.this.nStop(((Long) obj).longValue());
            }
        });
    }

    @NonNull
    @VisibleForTesting
    public static C4Replicator createLocalReplicator(@NonNull final NativeImpl nativeImpl, @NonNull Map<Collection, CollectionConfiguration> map, final long j, @NonNull C4Database c4Database, @NonNull final ReplicatorType replicatorType, final boolean z, @Nullable final Map<String, Object> map2, @NonNull StatusListener statusListener, @NonNull DocEndsListener docEndsListener, @NonNull AbstractReplicator abstractReplicator) throws LiteCoreException {
        TaggedWeakPeerBinding<C4Replicator> taggedWeakPeerBinding = BOUND_REPLICATORS;
        final long reserveKey = taggedWeakPeerBinding.reserveKey();
        final ReplicationCollection[] createAll = ReplicationCollection.createAll(map);
        C4CommonReplicator c4CommonReplicator = new C4CommonReplicator(nativeImpl, ((Long) c4Database.withPeerOrThrow(new InterfaceC2217Fn.NonNullFunctionThrows() { // from class: com.sunia.HTREnginev2.a00
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.NonNullFunctionThrows
            public final Object apply(Object obj) {
                Long lambda$createLocalReplicator$0;
                lambda$createLocalReplicator$0 = C4Replicator.lambda$createLocalReplicator$0(C4Replicator.NativeImpl.this, reserveKey, createAll, j, replicatorType, z, map2, (Long) obj);
                return lambda$createLocalReplicator$0;
            }
        })).longValue(), reserveKey, Arrays.asList(createAll), statusListener, docEndsListener, abstractReplicator, null, 0L);
        taggedWeakPeerBinding.bind(reserveKey, c4CommonReplicator);
        return c4CommonReplicator;
    }

    @NonNull
    @VisibleForTesting
    public static C4Replicator createMessageEndpointReplicator(@NonNull NativeImpl nativeImpl, @NonNull Set<Collection> set, long j, @NonNull C4Socket c4Socket, @Nullable Map<String, Object> map, @NonNull StatusListener statusListener) throws LiteCoreException {
        TaggedWeakPeerBinding<C4Replicator> taggedWeakPeerBinding = BOUND_REPLICATORS;
        long reserveKey = taggedWeakPeerBinding.reserveKey();
        ReplicationCollection[] createAll = ReplicationCollection.createAll(set);
        C4MessageEndpointReplicator c4MessageEndpointReplicator = new C4MessageEndpointReplicator(nativeImpl, nativeImpl.nCreateWithSocket(f16302ID + reserveKey, createAll, j, c4Socket.getPeerHandle(), (map == null || map.isEmpty()) ? null : FLEncoder.encodeMap(map), reserveKey), reserveKey, c4Socket, Arrays.asList(createAll), statusListener);
        taggedWeakPeerBinding.bind(reserveKey, c4MessageEndpointReplicator);
        return c4MessageEndpointReplicator;
    }

    @NonNull
    @VisibleForTesting
    public static C4Replicator createRemoteReplicator(@NonNull NativeImpl nativeImpl, @NonNull Map<Collection, CollectionConfiguration> map, long j, @Nullable String str, @Nullable String str2, int i, @Nullable String str3, @Nullable String str4, @NonNull MessageFraming messageFraming, @NonNull ReplicatorType replicatorType, boolean z, @Nullable Map<String, Object> map2, @NonNull StatusListener statusListener, @NonNull DocEndsListener docEndsListener, @NonNull AbstractReplicator abstractReplicator, @Nullable SocketFactory socketFactory) throws LiteCoreException {
        TaggedWeakPeerBinding<C4Replicator> taggedWeakPeerBinding = BOUND_REPLICATORS;
        long reserveKey = taggedWeakPeerBinding.reserveKey();
        long bindSocketFactory = socketFactory == null ? 0L : BaseSocketFactory.bindSocketFactory(socketFactory);
        ReplicationCollection[] createAll = ReplicationCollection.createAll(map);
        String str5 = f16302ID + reserveKey;
        int c4Framing = MessageFraming.getC4Framing(messageFraming);
        ReplicatorType replicatorType2 = ReplicatorType.PUSH_AND_PULL;
        C4CommonReplicator c4CommonReplicator = new C4CommonReplicator(nativeImpl, nativeImpl.nCreate(str5, createAll, j, str, str2, i, str3, str4, c4Framing, replicatorType == replicatorType2 || replicatorType == ReplicatorType.PUSH, replicatorType == replicatorType2 || replicatorType == ReplicatorType.PULL, z, (map2 == null || map2.isEmpty()) ? null : FLEncoder.encodeMap(map2), reserveKey, bindSocketFactory), reserveKey, Arrays.asList(createAll), statusListener, docEndsListener, abstractReplicator, socketFactory, bindSocketFactory);
        taggedWeakPeerBinding.bind(reserveKey, c4CommonReplicator);
        return c4CommonReplicator;
    }
}
