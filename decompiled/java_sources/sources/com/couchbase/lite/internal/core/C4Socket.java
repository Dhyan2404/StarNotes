package com.couchbase.lite.internal.core;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.couchbase.lite.LogDomain;
import com.couchbase.lite.internal.BaseSocketFactory;
import com.couchbase.lite.internal.CouchbaseLiteInternal;
import com.couchbase.lite.internal.core.C4Socket;
import com.couchbase.lite.internal.core.impl.NativeC4Socket;
import com.couchbase.lite.internal.core.peers.WeakPeerBinding;
import com.couchbase.lite.internal.logging.Log;
import com.couchbase.lite.internal.sockets.CBLSocketException;
import com.couchbase.lite.internal.sockets.CloseStatus;
import com.couchbase.lite.internal.sockets.MessageFraming;
import com.couchbase.lite.internal.sockets.SocketFromCore;
import com.couchbase.lite.internal.sockets.SocketToCore;
import com.couchbase.lite.internal.utils.InterfaceC2217Fn;
import com.couchbase.lite.internal.utils.Preconditions;
import com.sunia.HTREnginev2.cyi;
import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes4.dex */
public final class C4Socket extends C4NativePeer implements SocketToCore {

    @NonNull
    private final AtomicReference<SocketFromCore> fromCore;

    @NonNull
    private final NativeImpl impl;

    @NonNull
    private final Executor queue;
    private static final LogDomain LOG_DOMAIN = LogDomain.NETWORK;

    @NonNull
    private static final NativeImpl NATIVE_IMPL = new NativeC4Socket();

    @NonNull
    @VisibleForTesting
    static final NativeRefPeerBinding<C4Socket> BOUND_SOCKETS = new NativeRefPeerBinding<>();

    /* loaded from: classes4.dex */
    public interface NativeImpl {
        void nCloseRequested(long j, int i, @Nullable String str);

        void nClosed(long j, int i, int i2, String str);

        void nCompletedWrite(long j, long j2);

        long nFromNative(long j, String str, String str2, int i, String str3, int i2);

        void nGotHTTPResponse(long j, int i, @Nullable byte[] bArr);

        void nOpened(long j);

        void nReceived(long j, byte[] bArr);

        void nRetain(long j);
    }

    /* loaded from: classes4.dex */
    public static class NativeRefPeerBinding<T> extends WeakPeerBinding<T> {
        @Override // com.couchbase.lite.internal.core.peers.PeerBinding
        public void preBind(long j, @NonNull T t) {
        }

        @Override // com.couchbase.lite.internal.core.peers.PeerBinding
        public void preGetBinding(long j) {
        }
    }

    @FunctionalInterface
    /* loaded from: classes4.dex */
    public interface SocketTask {
        void accept(C4Socket c4Socket, SocketFromCore socketFromCore);
    }

    @VisibleForTesting
    public C4Socket(@NonNull NativeImpl nativeImpl, long j) {
        super(j);
        this.queue = CouchbaseLiteInternal.getExecutionService().getSerialExecutor();
        this.fromCore = new AtomicReference<>(null);
        this.impl = nativeImpl;
        nativeImpl.nRetain(j);
    }

    public static void close(long j) {
        Log.m9899d(LOG_DOMAIN, "^C4Socket.close@%x", Long.valueOf(j));
        withSocket(j, "close", new SocketTask() { // from class: com.couchbase.lite.internal.core.m
            @Override // com.couchbase.lite.internal.core.C4Socket.SocketTask
            public final void accept(C4Socket c4Socket, SocketFromCore socketFromCore) {
                socketFromCore.coreClosed();
            }
        });
    }

    public static void completedReceive(long j, final long j2) {
        Log.m9899d(LOG_DOMAIN, "^C4Socket.completedReceive@%x(%d)", Long.valueOf(j), Long.valueOf(j2));
        withSocket(j, "completedReceive", new SocketTask() { // from class: com.couchbase.lite.internal.core.j
            @Override // com.couchbase.lite.internal.core.C4Socket.SocketTask
            public final void accept(C4Socket c4Socket, SocketFromCore socketFromCore) {
                socketFromCore.coreAcksWrite(j2);
            }
        });
    }

    private void continueWith(final SocketTask socketTask) {
        this.queue.execute(new Runnable() { // from class: com.couchbase.lite.internal.core.h
            @Override // java.lang.Runnable
            public final void run() {
                C4Socket.this.lambda$continueWith$9(socketTask);
            }
        });
    }

    @NonNull
    public static C4Socket createPassiveSocket(int i, @NonNull MessageFraming messageFraming) {
        NativeImpl nativeImpl = NATIVE_IMPL;
        return createSocket(nativeImpl, nativeImpl.nFromNative(0L, "x-msg-conn", "", 0, "/" + Integer.toHexString(i), MessageFraming.getC4Framing(messageFraming)));
    }

    @NonNull
    @VisibleForTesting
    public static C4Socket createSocket(@NonNull NativeImpl nativeImpl, long j) {
        C4Socket c4Socket = new C4Socket(nativeImpl, j);
        BOUND_SOCKETS.bind(j, c4Socket);
        return c4Socket;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$ackOpenToCore$5(int i, byte[] bArr, Long l) throws RuntimeException {
        this.impl.nGotHTTPResponse(l.longValue(), i, bArr);
        this.impl.nOpened(l.longValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$ackWriteToCore$6(long j, Long l) throws RuntimeException {
        this.impl.nCompletedWrite(l.longValue(), j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$continueWith$9(SocketTask socketTask) {
        socketTask.accept(this, this.fromCore.get());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$open$0(C4Socket c4Socket, SocketFromCore socketFromCore) {
        try {
            socketFromCore.coreRequestsOpen();
        } catch (RuntimeException e) {
            c4Socket.openFailed(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$release$10(int i, int i2, String str, Long l) throws RuntimeException {
        BOUND_SOCKETS.unbind(l.longValue());
        releaseSocket(this.impl, l.longValue(), i, i2, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$requestClose$3(int i, String str, C4Socket c4Socket, SocketFromCore socketFromCore) {
        socketFromCore.coreRequestsClose(new CloseStatus(6, i, str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$requestCoreClose$8(CloseStatus closeStatus, Long l) throws RuntimeException {
        this.impl.nCloseRequested(l.longValue(), closeStatus.code, closeStatus.message);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$writeToCore$7(byte[] bArr, Long l) throws RuntimeException {
        this.impl.nReceived(l.longValue(), bArr);
    }

    public static void open(long j, long j2, @Nullable String str, @Nullable String str2, int i, @Nullable String str3, @Nullable byte[] bArr) {
        C4Socket c4Socket = (C4Socket) BOUND_SOCKETS.getBinding(j);
        Log.m9899d(LOG_DOMAIN, "^C4Socket.open@%x: %s@%x", Long.valueOf(j), c4Socket, Long.valueOf(j2));
        if (c4Socket != null || openSocket(NATIVE_IMPL, j, j2, str, str2, i, str3, bArr)) {
            withSocket(j, "open", new SocketTask() { // from class: com.couchbase.lite.internal.core.k
                @Override // com.couchbase.lite.internal.core.C4Socket.SocketTask
                public final void accept(C4Socket c4Socket2, SocketFromCore socketFromCore) {
                    C4Socket.lambda$open$0(c4Socket2, socketFromCore);
                }
            });
        }
    }

    private void openFailed(@NonNull RuntimeException runtimeException) {
        int i;
        int i2;
        Log.m9909w(LOG_DOMAIN, "Failed opening connection", runtimeException);
        if (runtimeException instanceof CBLSocketException) {
            CBLSocketException cBLSocketException = (CBLSocketException) runtimeException;
            i = cBLSocketException.getDomain();
            i2 = cBLSocketException.getCode();
        } else {
            i = 5;
            i2 = 13;
        }
        release(null, i, i2, runtimeException.getMessage());
    }

    @VisibleForTesting
    public static boolean openSocket(@NonNull NativeImpl nativeImpl, long j, long j2, @Nullable String str, @Nullable String str2, int i, @Nullable String str3, @Nullable byte[] bArr) {
        BaseSocketFactory boundSocketFactory = BaseSocketFactory.getBoundSocketFactory(j2);
        if (boundSocketFactory == null) {
            Log.m9908w(LOG_DOMAIN, "C4Socket.open: no such socket factory: " + j2);
            return false;
        }
        if (str == null) {
            Log.m9908w(LOG_DOMAIN, "C4Socket.open: scheme is null");
            return false;
        }
        if (str2 == null) {
            Log.m9908w(LOG_DOMAIN, "C4Socket.open: hostname is null");
            return false;
        }
        if (str3 == null) {
            Log.m9908w(LOG_DOMAIN, "C4Socket.open: path is null");
            return false;
        }
        if (bArr == null) {
            Log.m9908w(LOG_DOMAIN, "C4Socket.open: options are null");
            return false;
        }
        C4Socket createSocket = createSocket(nativeImpl, j);
        try {
            createSocket.init(boundSocketFactory.createSocket(createSocket, str, str2, i, str3, bArr));
            return true;
        } catch (RuntimeException e) {
            createSocket.openFailed(e);
            return false;
        }
    }

    private void release(LogDomain logDomain, final int i, final int i2, @Nullable final String str) {
        releasePeer(logDomain, new InterfaceC2217Fn.ConsumerThrows() { // from class: com.sunia.HTREnginev2.l00
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.ConsumerThrows
            public final void accept(Object obj) {
                C4Socket.this.lambda$release$10(i, i2, str, (Long) obj);
            }
        });
    }

    private static void releaseSocket(@Nullable NativeImpl nativeImpl, long j, int i, int i2, @Nullable String str) {
        if (nativeImpl != null) {
            nativeImpl.nClosed(j, i, i2, str);
        }
    }

    public static void requestClose(long j, final int i, @Nullable final String str) {
        Log.m9899d(LOG_DOMAIN, "^C4Socket.requestClose@%x(%d): '%s'", Long.valueOf(j), Integer.valueOf(i), str);
        withSocket(j, "requestClose", new SocketTask() { // from class: com.couchbase.lite.internal.core.l
            @Override // com.couchbase.lite.internal.core.C4Socket.SocketTask
            public final void accept(C4Socket c4Socket, SocketFromCore socketFromCore) {
                C4Socket.lambda$requestClose$3(i, str, c4Socket, socketFromCore);
            }
        });
    }

    private static void withSocket(long j, @Nullable String str, @NonNull SocketTask socketTask) {
        C4Socket c4Socket = (C4Socket) BOUND_SOCKETS.getBinding(j);
        if (c4Socket != null) {
            c4Socket.continueWith(socketTask);
        } else {
            Log.m9911w(LOG_DOMAIN, "C4Socket.%s@%x: No socket for peer", str, Long.valueOf(j));
        }
    }

    @SuppressFBWarnings({"NP_PARAMETER_MUST_BE_NONNULL_BUT_MARKED_AS_NULLABLE"})
    public static void write(long j, @Nullable final byte[] bArr) {
        int length = bArr == null ? 0 : bArr.length;
        LogDomain logDomain = LOG_DOMAIN;
        Log.m9899d(logDomain, "^C4Socket.write@%x(%d)", Long.valueOf(j), Integer.valueOf(length));
        if (length <= 0) {
            Log.m9904i(logDomain, "C4Socket.write: empty data");
        } else {
            withSocket(j, "write", new SocketTask() { // from class: com.couchbase.lite.internal.core.i
                @Override // com.couchbase.lite.internal.core.C4Socket.SocketTask
                public final void accept(C4Socket c4Socket, SocketFromCore socketFromCore) {
                    socketFromCore.coreWrites(bArr);
                }
            });
        }
    }

    @Override // com.couchbase.lite.internal.sockets.SocketToCore
    public void ackOpenToCore(final int i, @Nullable final byte[] bArr) {
        Log.m9899d(LOG_DOMAIN, "%s.ackOpenToCore", this);
        withPeer(new InterfaceC2217Fn.ConsumerThrows() { // from class: com.sunia.HTREnginev2.k00
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.ConsumerThrows
            public final void accept(Object obj) {
                C4Socket.this.lambda$ackOpenToCore$5(i, bArr, (Long) obj);
            }
        });
    }

    @Override // com.couchbase.lite.internal.sockets.SocketToCore
    public void ackWriteToCore(final long j) {
        Log.m9899d(LOG_DOMAIN, "%s.ackWriteToCore(%d)", this, Long.valueOf(j));
        withPeer(new InterfaceC2217Fn.ConsumerThrows() { // from class: com.sunia.HTREnginev2.m00
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.ConsumerThrows
            public final void accept(Object obj) {
                C4Socket.this.lambda$ackWriteToCore$6(j, (Long) obj);
            }
        });
    }

    @Override // com.couchbase.lite.internal.sockets.SocketToCore
    public void closeCore(@NonNull CloseStatus closeStatus) {
        Log.m9899d(LOG_DOMAIN, "%s.closeCore(%d, %d): '%s'", this, Integer.valueOf(closeStatus.domain), Integer.valueOf(closeStatus.code), closeStatus.message);
        release(null, closeStatus.domain, closeStatus.code, closeStatus.message);
    }

    public void finalize() throws Throwable {
        try {
            release(LOG_DOMAIN, 5, 17, "Finalized");
        } finally {
            super.finalize();
        }
    }

    @Nullable
    @VisibleForTesting
    public SocketFromCore getFromCore() {
        return this.fromCore.get();
    }

    @Override // com.couchbase.lite.internal.sockets.SocketToCore
    @NonNull
    public Object getLock() {
        return getPeerLock();
    }

    public long getPeerHandle() {
        return getPeer();
    }

    @Override // com.couchbase.lite.internal.sockets.SocketToCore
    public void init(@NonNull SocketFromCore socketFromCore) {
        LogDomain logDomain = LOG_DOMAIN;
        Log.m9899d(logDomain, "%s.init: %s", this, socketFromCore);
        Preconditions.assertNotNull(socketFromCore, "fromCore");
        if (cyi.m53538a(this.fromCore, null, socketFromCore) || socketFromCore.equals(this.fromCore.get())) {
            return;
        }
        Log.m9908w(logDomain, "Attempt to re-initialize C4Socket");
    }

    @Override // com.couchbase.lite.internal.sockets.SocketToCore
    public void requestCoreClose(@NonNull final CloseStatus closeStatus) {
        Log.m9899d(LOG_DOMAIN, "%s.requestCoreClose(%d): '%s'", this, Integer.valueOf(closeStatus.code), closeStatus.message);
        withPeer(new InterfaceC2217Fn.ConsumerThrows() { // from class: com.sunia.HTREnginev2.n00
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.ConsumerThrows
            public final void accept(Object obj) {
                C4Socket.this.lambda$requestCoreClose$8(closeStatus, (Long) obj);
            }
        });
    }

    @Override // com.couchbase.lite.internal.core.C4NativePeer
    @NonNull
    public String toString() {
        return "vC4Socket" + super.toString();
    }

    @Override // com.couchbase.lite.internal.sockets.SocketToCore
    public void writeToCore(@NonNull final byte[] bArr) {
        Log.m9899d(LOG_DOMAIN, "%s.sendToCore(%d)", this, Integer.valueOf(bArr.length));
        withPeer(new InterfaceC2217Fn.ConsumerThrows() { // from class: com.sunia.HTREnginev2.o00
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.ConsumerThrows
            public final void accept(Object obj) {
                C4Socket.this.lambda$writeToCore$7(bArr, (Long) obj);
            }
        });
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        release(null, 5, 16, "Closed by client");
    }
}
