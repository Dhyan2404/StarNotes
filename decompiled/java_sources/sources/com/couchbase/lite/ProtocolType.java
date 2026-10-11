package com.couchbase.lite;

import androidx.annotation.NonNull;
import com.couchbase.lite.internal.sockets.MessageFraming;
import com.couchbase.lite.internal.utils.Preconditions;
import java.util.Collections;
import java.util.EnumMap;
import java.util.Map;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v0 com.couchbase.lite.ProtocolType, still in use, count: 1, list:
  (r0v0 com.couchbase.lite.ProtocolType) from ?: CAST (java.util.EnumMap) (r0v0 com.couchbase.lite.ProtocolType)
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
public final class ProtocolType {
    MESSAGE_STREAM,
    BYTE_STREAM;

    private static final Map<ProtocolType, MessageFraming> PROTOCOL_TYPES;

    static {
        EnumMap enumMap = new EnumMap(ProtocolType.class);
        enumMap.put((EnumMap) new ProtocolType(), (ProtocolType) MessageFraming.NO_FRAMING);
        enumMap.put((EnumMap) new ProtocolType(), (ProtocolType) MessageFraming.CLIENT_FRAMING);
        PROTOCOL_TYPES = Collections.unmodifiableMap(enumMap);
    }

    private ProtocolType() {
    }

    @NonNull
    public static MessageFraming getFramingForProtocol(@NonNull ProtocolType protocolType) {
        return (MessageFraming) Preconditions.assertNotNull(PROTOCOL_TYPES.get(protocolType), "protocol");
    }

    public static ProtocolType valueOf(String str) {
        return (ProtocolType) Enum.valueOf(ProtocolType.class, str);
    }

    public static ProtocolType[] values() {
        return (ProtocolType[]) $VALUES.clone();
    }
}
