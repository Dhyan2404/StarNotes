package com.couchbase.lite.internal.sockets;

import androidx.annotation.NonNull;
import com.couchbase.lite.internal.utils.Preconditions;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v0 com.couchbase.lite.internal.sockets.MessageFraming, still in use, count: 1, list:
  (r0v0 com.couchbase.lite.internal.sockets.MessageFraming) from 0x002d: INVOKE (r5v2 java.util.HashMap), (r0v0 com.couchbase.lite.internal.sockets.MessageFraming), (0 int) INTERFACE call: java.util.Map.put(java.lang.Object, java.lang.Object):java.lang.Object A[MD:(K, V):V (c)]
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
public final class MessageFraming {
    CLIENT_FRAMING,
    NO_FRAMING,
    SERVER_FRAMING;

    public static final int C4_NO_FRAMING = 1;
    public static final int C4_WEB_SOCKET_CLIENT_FRAMING = 0;
    public static final int C4_WEB_SOCKET_SERVER_FRAMING = 2;
    private static final Map<MessageFraming, Integer> FRAMINGS;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put(new MessageFraming(), 0);
        hashMap.put(new MessageFraming(), 1);
        hashMap.put(new MessageFraming(), 2);
        FRAMINGS = Collections.unmodifiableMap(hashMap);
    }

    private MessageFraming() {
    }

    public static int getC4Framing(@NonNull MessageFraming messageFraming) {
        return ((Integer) Preconditions.assertNotNull(FRAMINGS.get(messageFraming), "framing")).intValue();
    }

    public static MessageFraming valueOf(String str) {
        return (MessageFraming) Enum.valueOf(MessageFraming.class, str);
    }

    public static MessageFraming[] values() {
        return (MessageFraming[]) $VALUES.clone();
    }
}
