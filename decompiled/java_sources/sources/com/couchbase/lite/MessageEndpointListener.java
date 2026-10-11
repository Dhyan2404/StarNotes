package com.couchbase.lite;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.couchbase.lite.MessageEndpointListener;
import com.couchbase.lite.internal.CouchbaseLiteInternal;
import com.couchbase.lite.internal.core.C4Replicator;
import com.couchbase.lite.internal.core.C4ReplicatorStatus;
import com.couchbase.lite.internal.core.C4Socket;
import com.couchbase.lite.internal.listener.Listenable;
import com.couchbase.lite.internal.replicator.MessageSocket;
import com.couchbase.lite.internal.sockets.CBLSocketException;
import com.couchbase.lite.internal.sockets.CloseStatus;
import com.couchbase.lite.internal.sockets.MessageFraming;
import com.couchbase.lite.internal.utils.InterfaceC2217Fn;
import com.couchbase.lite.internal.utils.Preconditions;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.onyx.android.sdk.data.account.bean.DevicePushAction;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import okhttp3.internal.http2.Http2ExchangeCodec;
import org.xmlresolver.logging.AbstractLogger;

/* loaded from: classes4.dex */
public class MessageEndpointListener implements Listenable<MessageEndpointListenerChange, MessageEndpointListenerChangeListener> {
    private static final LogDomain DOMAIN = LogDomain.NETWORK;

    @NonNull
    private final MessageEndpointListenerConfiguration config;
    private final Object lock = new Object();
    private final Executor dispatcher = CouchbaseLiteInternal.getExecutionService().getSerialExecutor();
    private final MessageEndpointChangeNotifier changeNotifier = new MessageEndpointChangeNotifier();
    private final AtomicBoolean stopped = new AtomicBoolean(false);

    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    private final Map<C4Replicator, MessageEndpointConnection> replicators = new HashMap();

    public MessageEndpointListener(@NonNull MessageEndpointListenerConfiguration messageEndpointListenerConfiguration) {
        Preconditions.assertNotNull(messageEndpointListenerConfiguration, AbstractLogger.CONFIG);
        this.config = messageEndpointListenerConfiguration;
    }

    private boolean addConnection(@NonNull C4Replicator c4Replicator, @NonNull MessageEndpointConnection messageEndpointConnection) {
        boolean z;
        synchronized (this.lock) {
            this.replicators.put(c4Replicator, messageEndpointConnection);
            z = true;
            if (this.replicators.size() != 1) {
                z = false;
            }
        }
        return z;
    }

    @Nullable
    private MessageEndpointConnection getConnection(@NonNull C4Replicator c4Replicator) {
        MessageEndpointConnection messageEndpointConnection;
        synchronized (this.lock) {
            messageEndpointConnection = this.replicators.get(c4Replicator);
        }
        return messageEndpointConnection;
    }

    @NonNull
    private Map<String, Object> getOptions() throws LiteCoreException {
        HashMap hashMap = new HashMap();
        hashMap.put(C4Replicator.REPLICATOR_OPTION_NO_INCOMING_CONFLICTS, Boolean.TRUE);
        return hashMap;
    }

    @Nullable
    private MessageEndpointConnection removeConnection(@NonNull C4Replicator c4Replicator) {
        boolean z;
        MessageEndpointConnection remove;
        synchronized (this.lock) {
            z = true;
            if (this.replicators.size() != 1) {
                z = false;
            }
            remove = this.replicators.remove(c4Replicator);
        }
        if (z) {
            this.config.getDb().unregisterMessageListener(this);
        }
        return remove;
    }

    public void accept(@NonNull MessageEndpointConnection messageEndpointConnection) {
        C4ReplicatorStatus c4ReplicatorStatus;
        boolean z = this.stopped.get();
        com.couchbase.lite.internal.logging.Log.m9899d(DOMAIN, "Accepting connection (%s): %s", Boolean.valueOf(z), messageEndpointConnection);
        if (z) {
            return;
        }
        Preconditions.assertNotNull(messageEndpointConnection, Http2ExchangeCodec.f103777g);
        MessageFraming messageFraming = this.config.getMessageFraming();
        Database db = this.config.getDb();
        synchronized (db.getDbLock()) {
            C4Socket createPassiveSocket = C4Socket.createPassiveSocket(messageEndpointConnection.hashCode(), messageFraming);
            try {
                createPassiveSocket.init(MessageSocket.create(createPassiveSocket, messageEndpointConnection, messageFraming));
                try {
                    C4Replicator createMessageEndpointReplicator = db.createMessageEndpointReplicator(this.config.getCollections(), createPassiveSocket, getOptions(), new C4Replicator.StatusListener() { // from class: com.sunia.HTREnginev2.vmj
                        @Override // com.couchbase.lite.internal.core.C4Replicator.StatusListener
                        public final void statusChanged(C4Replicator c4Replicator, C4ReplicatorStatus c4ReplicatorStatus2) {
                            MessageEndpointListener.this.dispatchStatusChanged(c4Replicator, c4ReplicatorStatus2);
                        }
                    });
                    if (addConnection(createMessageEndpointReplicator, messageEndpointConnection)) {
                        db.registerMessageListener(this);
                    }
                    createMessageEndpointReplicator.start(false);
                    c4ReplicatorStatus = new C4ReplicatorStatus(2, 0, 0);
                } catch (LiteCoreException e) {
                    c4ReplicatorStatus = new C4ReplicatorStatus(0, e.domain, e.code);
                }
            } catch (CBLSocketException e2) {
                com.couchbase.lite.internal.logging.Log.m9909w(DOMAIN, "Failed getting opening message socket", e2);
                createPassiveSocket.closeCore(new CloseStatus(5, 18, e2.getMessage()));
                return;
            }
        }
        this.changeNotifier.postChange(new MessageEndpointListenerChange(messageEndpointConnection, c4ReplicatorStatus));
    }

    public void close(@NonNull MessageEndpointConnection messageEndpointConnection) {
        C4Replicator c4Replicator;
        com.couchbase.lite.internal.logging.Log.m9899d(DOMAIN, "Closing connection: %s", messageEndpointConnection);
        Preconditions.assertNotNull(messageEndpointConnection, Http2ExchangeCodec.f103777g);
        synchronized (this.lock) {
            Iterator<Map.Entry<C4Replicator, MessageEndpointConnection>> it2 = this.replicators.entrySet().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    c4Replicator = null;
                    break;
                }
                Map.Entry<C4Replicator, MessageEndpointConnection> next = it2.next();
                if (messageEndpointConnection.equals(next.getValue())) {
                    c4Replicator = next.getKey();
                    break;
                }
            }
        }
        if (c4Replicator != null) {
            c4Replicator.stop();
        }
    }

    public void closeAll() {
        ArrayList arrayList;
        synchronized (this.lock) {
            arrayList = new ArrayList(this.replicators.keySet());
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            ((C4Replicator) it2.next()).stop();
        }
    }

    public void dispatchStatusChanged(@Nullable final C4Replicator c4Replicator, @Nullable final C4ReplicatorStatus c4ReplicatorStatus) {
        LogDomain logDomain = DOMAIN;
        com.couchbase.lite.internal.logging.Log.m9899d(logDomain, "MessageEndpointReplicatorListener.statusChanged: %s", c4ReplicatorStatus);
        if (c4Replicator == null) {
            com.couchbase.lite.internal.logging.Log.m9908w(logDomain, "MessageEndpointListener.statusChanged, repl is null");
        } else if (c4ReplicatorStatus == null) {
            com.couchbase.lite.internal.logging.Log.m9908w(logDomain, "MessageEndpointListener.statusChanged, status is null");
        } else {
            this.dispatcher.execute(new Runnable() { // from class: com.sunia.HTREnginev2.wmj
                @Override // java.lang.Runnable
                public final void run() {
                    MessageEndpointListener.this.lambda$dispatchStatusChanged$0(c4Replicator, c4ReplicatorStatus);
                }
            });
        }
    }

    @NonNull
    @VisibleForTesting
    public MessageEndpointListenerConfiguration getConfig() {
        return this.config;
    }

    public boolean isStopped() {
        boolean isEmpty;
        synchronized (this.lock) {
            isEmpty = this.replicators.isEmpty();
        }
        return isEmpty;
    }

    @Deprecated
    public void removeChangeListener(@NonNull ListenerToken listenerToken) {
        Preconditions.assertNotNull(listenerToken, "token");
        this.changeNotifier.removeChangeListener(listenerToken);
    }

    /* renamed from: statusChanged, reason: merged with bridge method [inline-methods] */
    public void lambda$dispatchStatusChanged$0(@NonNull C4Replicator c4Replicator, @NonNull C4ReplicatorStatus c4ReplicatorStatus) {
        com.couchbase.lite.internal.logging.Log.m9899d(DOMAIN, "MessageEndpointListener status changed (%s): %s", c4ReplicatorStatus, c4Replicator);
        MessageEndpointConnection connection = !AbstractReplicator.isStopped(c4ReplicatorStatus) ? getConnection(c4Replicator) : removeConnection(c4Replicator);
        if (connection != null) {
            this.changeNotifier.postChange(new MessageEndpointListenerChange(connection, c4ReplicatorStatus));
        }
    }

    public void stop() {
        this.stopped.set(true);
        com.couchbase.lite.internal.logging.Log.m9907i(DOMAIN, "%s: MessageEndpointListener is stopping", this);
        closeAll();
    }

    @Override // com.couchbase.lite.internal.listener.Listenable
    @NonNull
    public ListenerToken addChangeListener(@NonNull MessageEndpointListenerChangeListener messageEndpointListenerChangeListener) {
        return addChangeListener((Executor) null, messageEndpointListenerChangeListener);
    }

    @Override // com.couchbase.lite.internal.listener.Listenable
    @NonNull
    public ListenerToken addChangeListener(@Nullable Executor executor, @NonNull MessageEndpointListenerChangeListener messageEndpointListenerChangeListener) {
        Preconditions.assertNotNull(messageEndpointListenerChangeListener, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        final MessageEndpointChangeNotifier messageEndpointChangeNotifier = this.changeNotifier;
        Objects.requireNonNull(messageEndpointChangeNotifier);
        return messageEndpointChangeNotifier.addChangeListener(executor, messageEndpointListenerChangeListener, new InterfaceC2217Fn.Consumer() { // from class: com.couchbase.lite.z
            @Override // com.couchbase.lite.internal.utils.InterfaceC2217Fn.Consumer
            public final void accept(Object obj) {
                MessageEndpointChangeNotifier.this.removeChangeListener((ListenerToken) obj);
            }
        });
    }
}
