package com.couchbase.lite.internal.sockets;

import androidx.annotation.NonNull;
import com.couchbase.lite.LogDomain;
import com.couchbase.lite.internal.utils.StateMachine;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r5v2 com.couchbase.lite.internal.sockets.SocketState, still in use, count: 1, list:
  (r5v2 com.couchbase.lite.internal.sockets.SocketState) from 0x003e: CONSTRUCTOR 
  (wrap:java.lang.Class:0x003a: CONST_CLASS  A[WRAPPED] com.couchbase.lite.internal.sockets.SocketState.class)
  (wrap:com.couchbase.lite.LogDomain:0x003c: SGET  A[WRAPPED] com.couchbase.lite.LogDomain.NETWORK com.couchbase.lite.LogDomain)
  (r0v0 com.couchbase.lite.internal.sockets.SocketState)
  (r5v2 com.couchbase.lite.internal.sockets.SocketState)
 A[MD:(java.lang.Class<S extends java.lang.Enum<S>>, com.couchbase.lite.LogDomain, S extends java.lang.Enum<S>, S extends java.lang.Enum<S>):void (m), WRAPPED] call: com.couchbase.lite.internal.utils.StateMachine.Builder.<init>(java.lang.Class, com.couchbase.lite.LogDomain, java.lang.Enum, java.lang.Enum):void type: CONSTRUCTOR
	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:151)
	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:116)
	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:88)
	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:87)
	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:238)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:180)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: classes4.dex */
public final class SocketState {
    UNOPENED,
    OPENING,
    OPEN,
    CLOSING,
    CLOSED;

    private static final StateMachine.Builder<SocketState> WS_STATE_BUILDER;

    static {
        SocketState socketState = UNOPENED;
        SocketState socketState2 = OPENING;
        SocketState socketState3 = OPEN;
        SocketState socketState4 = CLOSING;
        WS_STATE_BUILDER = new StateMachine.Builder(SocketState.class, LogDomain.NETWORK, socketState, r5).addTransition(socketState, socketState2, socketState4).addTransition(socketState2, socketState3, socketState4).addTransition(socketState3, socketState4, new SocketState[0]);
    }

    private SocketState() {
    }

    @NonNull
    public static StateMachine<SocketState> getSocketStateMachine() {
        return WS_STATE_BUILDER.build();
    }

    public static SocketState valueOf(String str) {
        return (SocketState) Enum.valueOf(SocketState.class, str);
    }

    public static SocketState[] values() {
        return (SocketState[]) $VALUES.clone();
    }
}
