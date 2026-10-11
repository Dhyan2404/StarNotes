package com.couchbase.lite.internal.replicator;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.couchbase.lite.CouchbaseLiteException;
import com.couchbase.lite.LogDomain;
import com.couchbase.lite.Message;
import com.couchbase.lite.MessageEndpointConnection;
import com.couchbase.lite.MessagingCloseCompletion;
import com.couchbase.lite.MessagingCompletion;
import com.couchbase.lite.MessagingError;
import com.couchbase.lite.ReplicatorConnection;
import com.couchbase.lite.internal.logging.Log;
import com.couchbase.lite.internal.replicator.MessageSocket;
import com.couchbase.lite.internal.sockets.CBLSocketException;
import com.couchbase.lite.internal.sockets.CloseStatus;
import com.couchbase.lite.internal.sockets.MessageFraming;
import com.couchbase.lite.internal.sockets.SocketFromCore;
import com.couchbase.lite.internal.sockets.SocketState;
import com.couchbase.lite.internal.sockets.SocketToCore;
import com.couchbase.lite.internal.utils.ClassUtils;
import com.couchbase.lite.internal.utils.StateMachine;
import java.io.IOException;

/* loaded from: classes4.dex */
public abstract class MessageSocket implements ReplicatorConnection, SocketFromCore, AutoCloseable {
    private static final LogDomain LOG_DOMAIN = LogDomain.NETWORK;

    @NonNull
    @GuardedBy("getPeerLock()")
    protected final StateMachine<SocketState> state;

    @NonNull
    protected final SocketToCore toCore;

    @NonNull
    protected final MessageEndpointConnection toRemote;

    /* renamed from: com.couchbase.lite.internal.replicator.MessageSocket$1 */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class C22131 {
        static final /* synthetic */ int[] $SwitchMap$com$couchbase$lite$internal$sockets$MessageFraming;

        static {
            int[] iArr = new int[MessageFraming.values().length];
            $SwitchMap$com$couchbase$lite$internal$sockets$MessageFraming = iArr;
            try {
                iArr[MessageFraming.CLIENT_FRAMING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$couchbase$lite$internal$sockets$MessageFraming[MessageFraming.NO_FRAMING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* loaded from: classes4.dex */
    public static final class FramedMessageSocket extends MessageSocket {
        public FramedMessageSocket(@NonNull SocketToCore socketToCore, @NonNull MessageEndpointConnection messageEndpointConnection) {
            super(socketToCore, messageEndpointConnection, null);
        }

        @Override // java.lang.AutoCloseable
        public void close() {
            Log.m9898d(MessageSocket.LOG_DOMAIN, "%s.close", new Exception("LOOKIE HERE"), this);
            shutdownConnection(new IOException("Closed by client"), new CloseStatus(1, 1001, "Closed by client"));
        }

        @Override // com.couchbase.lite.internal.sockets.SocketFromCore
        public void coreClosed() {
            Log.m9899d(MessageSocket.LOG_DOMAIN, "%s.coreClosed", this);
            shutdownConnection(null, new CloseStatus(1, 0, null));
        }

        @Override // com.couchbase.lite.internal.sockets.SocketFromCore
        public void coreRequestsClose(@NonNull CloseStatus closeStatus) {
            Log.m9911w(MessageSocket.LOG_DOMAIN, "%s.coreRequestsClose: ignoring unexpected call", this);
        }

        @Override // com.couchbase.lite.internal.replicator.MessageSocket
        @NonNull
        public CloseStatus getStatusForMessagingError(@Nullable MessagingError messagingError) {
            int codeForError;
            String str = null;
            Exception error = messagingError == null ? null : messagingError.getError();
            if (error == null) {
                codeForError = 1000;
            } else {
                str = error.getMessage();
                codeForError = getCodeForError(messagingError);
            }
            return new CloseStatus(6, codeForError, str);
        }

        @Override // com.couchbase.lite.internal.replicator.MessageSocket
        @NonNull
        public String toString() {
            return "FramedMessageSocket" + super.toString();
        }
    }

    /* loaded from: classes4.dex */
    public static final class UnframedMessageSocket extends MessageSocket {
        public UnframedMessageSocket(@NonNull SocketToCore socketToCore, @NonNull MessageEndpointConnection messageEndpointConnection) {
            super(socketToCore, messageEndpointConnection, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: closeConfirmed, reason: merged with bridge method [inline-methods] */
        public void lambda$coreRequestsClose$0(@NonNull CloseStatus closeStatus) {
            Log.m9899d(MessageSocket.LOG_DOMAIN, "%s.coreRequestsClose-confirmed: %s", this, closeStatus);
            changeState(SocketState.CLOSED);
            this.toCore.closeCore(closeStatus);
        }

        @Override // java.lang.AutoCloseable
        public void close() {
            Log.m9899d(MessageSocket.LOG_DOMAIN, "%s.close", this);
            this.toCore.requestCoreClose(new CloseStatus(1, 1001, "Closed by client"));
        }

        @Override // com.couchbase.lite.internal.sockets.SocketFromCore
        public void coreClosed() {
            Log.m9911w(MessageSocket.LOG_DOMAIN, "%s.coreClosed: ignoring unexpected call", this);
        }

        @Override // com.couchbase.lite.internal.sockets.SocketFromCore
        public void coreRequestsClose(@NonNull final CloseStatus closeStatus) {
            Log.m9899d(MessageSocket.LOG_DOMAIN, "%s.coreRequestsClose: %s", this, closeStatus);
            if (changeState(SocketState.CLOSING)) {
                try {
                    MessageEndpointConnection messageEndpointConnection = this.toRemote;
                    int i = closeStatus.code;
                    CouchbaseLiteException couchbaseLiteException = null;
                    if (i != 1000) {
                        couchbaseLiteException = CouchbaseLiteException.toCouchbaseLiteException(6, i, closeStatus.message, null);
                    }
                    messageEndpointConnection.close(couchbaseLiteException, new MessagingCloseCompletion() { // from class: com.couchbase.lite.internal.replicator.a
                        @Override // com.couchbase.lite.MessagingCloseCompletion
                        public final void complete() {
                            MessageSocket.UnframedMessageSocket.this.lambda$coreRequestsClose$0(closeStatus);
                        }
                    });
                } catch (Exception e) {
                    Log.m9909w(MessageSocket.LOG_DOMAIN, "Close failed!", e);
                    connectionFailed(e);
                }
            }
        }

        @Override // com.couchbase.lite.internal.replicator.MessageSocket
        @NonNull
        public CloseStatus getStatusForMessagingError(@Nullable MessagingError messagingError) {
            int codeForError;
            int i;
            String str = null;
            Exception error = messagingError == null ? null : messagingError.getError();
            if (error == null) {
                i = 1;
                codeForError = 0;
            } else {
                str = error.getMessage();
                codeForError = getCodeForError(messagingError);
                i = 6;
            }
            return new CloseStatus(i, codeForError, str);
        }

        @Override // com.couchbase.lite.internal.replicator.MessageSocket
        @NonNull
        public String toString() {
            return "UnframedMessageSocket" + super.toString();
        }
    }

    public /* synthetic */ MessageSocket(SocketToCore socketToCore, MessageEndpointConnection messageEndpointConnection, C22131 c22131) {
        this(socketToCore, messageEndpointConnection);
    }

    @NonNull
    public static MessageSocket create(@NonNull SocketToCore socketToCore, @NonNull MessageEndpointConnection messageEndpointConnection, @NonNull MessageFraming messageFraming) {
        MessageSocket framedMessageSocket;
        int i = C22131.$SwitchMap$com$couchbase$lite$internal$sockets$MessageFraming[messageFraming.ordinal()];
        if (i == 1) {
            framedMessageSocket = new FramedMessageSocket(socketToCore, messageEndpointConnection);
        } else {
            if (i != 2) {
                throw new CBLSocketException(6, 1007, "Unrecognised protocol: " + messageFraming);
            }
            framedMessageSocket = new UnframedMessageSocket(socketToCore, messageEndpointConnection);
        }
        Log.m9899d(LOG_DOMAIN, "%s.created($d)", framedMessageSocket, messageFraming);
        return framedMessageSocket;
    }

    @NonNull
    private Object getLock() {
        return this.toCore.getLock();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$shutdownConnection$1() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openConfirmed(boolean z, @Nullable MessagingError messagingError) {
        Log.m9899d(LOG_DOMAIN, "%s.RemoteOpenConfirmed: %s, %s", this, Boolean.valueOf(z), messagingError);
        if (!z) {
            shutdownConnection(messagingError);
        } else if (changeState(SocketState.OPEN)) {
            this.toCore.ackOpenToCore(200, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: writeConfirmed, reason: merged with bridge method [inline-methods] */
    public void lambda$coreWrites$0(boolean z, @Nullable MessagingError messagingError, int i) {
        Log.m9899d(LOG_DOMAIN, "%s.RemoteWriteConfirmed(%d): %s, %s", this, Integer.valueOf(i), Boolean.valueOf(z), messagingError);
        if (z) {
            this.toCore.ackWriteToCore(i);
        } else {
            shutdownConnection(messagingError);
        }
    }

    public final boolean assertState(@NonNull SocketState... socketStateArr) {
        boolean assertState;
        synchronized (getLock()) {
            assertState = this.state.assertState(socketStateArr);
        }
        return assertState;
    }

    public final boolean changeState(@NonNull SocketState socketState) {
        boolean state;
        synchronized (getLock()) {
            state = this.state.setState(socketState);
        }
        return state;
    }

    @Override // com.couchbase.lite.ReplicatorConnection
    public void close(@Nullable MessagingError messagingError) {
        Log.m9899d(LOG_DOMAIN, "%s.ReplicatorConnection.close: %s", this, messagingError);
        shutdownConnection(messagingError);
    }

    public final void connectionFailed(@NonNull Exception exc) {
        shutdownConnection(exc, new CloseStatus(1, 10, exc.getMessage()));
    }

    @Override // com.couchbase.lite.internal.sockets.SocketFromCore
    public void coreAcksWrite(long j) {
        Log.m9899d(LOG_DOMAIN, "%s.coreAcksWrite(%d)", this, Long.valueOf(j));
    }

    @Override // com.couchbase.lite.internal.sockets.SocketFromCore
    public void coreRequestsOpen() {
        Log.m9899d(LOG_DOMAIN, "%s.coreRequestedOpen", this);
        if (changeState(SocketState.OPENING)) {
            try {
                this.toRemote.open(this, new MessagingCompletion() { // from class: com.sunia.HTREnginev2.cnj
                    @Override // com.couchbase.lite.MessagingCompletion
                    public final void complete(boolean z, MessagingError messagingError) {
                        MessageSocket.this.openConfirmed(z, messagingError);
                    }
                });
            } catch (Exception e) {
                Log.m9909w(LOG_DOMAIN, "Open failed!", e);
                connectionFailed(e);
            }
        }
    }

    @Override // com.couchbase.lite.internal.sockets.SocketFromCore
    public void coreWrites(@NonNull byte[] bArr) {
        final int length = bArr.length;
        Log.m9899d(LOG_DOMAIN, "%s.coreWrites(%d)", this, Integer.valueOf(length));
        if (assertState(SocketState.OPEN, SocketState.CLOSING)) {
            try {
                this.toRemote.send(Message.fromData(bArr), new MessagingCompletion() { // from class: com.sunia.HTREnginev2.enj
                    @Override // com.couchbase.lite.MessagingCompletion
                    public final void complete(boolean z, MessagingError messagingError) {
                        MessageSocket.this.lambda$coreWrites$0(length, z, messagingError);
                    }
                });
            } catch (Exception e) {
                Log.m9909w(LOG_DOMAIN, "Write failed!", e);
                connectionFailed(e);
            }
        }
    }

    public int getCodeForError(@NonNull MessagingError messagingError) {
        return messagingError.isRecoverable() ? 4001 : 4002;
    }

    @NonNull
    @VisibleForTesting
    public SocketState getSocketState() {
        return this.state.getCurrentState();
    }

    @NonNull
    public abstract CloseStatus getStatusForMessagingError(@Nullable MessagingError messagingError);

    @Override // com.couchbase.lite.ReplicatorConnection
    public void receive(@NonNull Message message) {
        Log.m9899d(LOG_DOMAIN, "%s.receive: %s", this, message);
        if (message != null && this.state.assertState(SocketState.OPEN)) {
            this.toCore.writeToCore(message.toData());
        }
    }

    public final void shutdownConnection(@Nullable MessagingError messagingError) {
        shutdownConnection(messagingError == null ? null : messagingError.getError(), getStatusForMessagingError(messagingError));
    }

    @NonNull
    public String toString() {
        return ClassUtils.objId(this) + "{" + this.toCore + " <=> " + this.toRemote + "}";
    }

    private MessageSocket(@NonNull SocketToCore socketToCore, @NonNull MessageEndpointConnection messageEndpointConnection) {
        this.state = SocketState.getSocketStateMachine();
        this.toCore = socketToCore;
        this.toRemote = messageEndpointConnection;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [com.couchbase.lite.internal.replicator.MessageSocket] */
    /* JADX WARN: Type inference failed for: r2v1, types: [com.couchbase.lite.internal.replicator.MessageSocket] */
    /* JADX WARN: Type inference failed for: r2v3, types: [com.couchbase.lite.internal.sockets.SocketToCore] */
    public final void shutdownConnection(@Nullable Exception exc, @NonNull CloseStatus closeStatus) {
        SocketState socketState = SocketState.CLOSED;
        if (assertState(socketState)) {
            return;
        }
        try {
            if (changeState(socketState)) {
                try {
                    this.toRemote.close(exc, new MessagingCloseCompletion() { // from class: com.sunia.HTREnginev2.dnj
                        @Override // com.couchbase.lite.MessagingCloseCompletion
                        public final void complete() {
                            MessageSocket.lambda$shutdownConnection$1();
                        }
                    });
                } catch (Exception e) {
                    Log.m9909w(LOG_DOMAIN, "Shutdown failed!", e);
                }
            }
        } finally {
            this.toCore.closeCore(closeStatus);
        }
    }
}
