package io.opencensus.common;

import io.opencensus.common.ServerStatsFieldEnums;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes10.dex */
public final class ServerStatsEncoding {
    public static final byte CURRENT_VERSION = 0;

    /* renamed from: io.opencensus.common.ServerStatsEncoding$a */
    /* loaded from: classes10.dex */
    public static /* synthetic */ class C17113a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f94645a;

        static {
            int[] iArr = new int[ServerStatsFieldEnums.EnumC17114Id.values().length];
            f94645a = iArr;
            try {
                iArr[ServerStatsFieldEnums.EnumC17114Id.SERVER_STATS_LB_LATENCY_ID.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f94645a[ServerStatsFieldEnums.EnumC17114Id.SERVER_STATS_SERVICE_LATENCY_ID.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f94645a[ServerStatsFieldEnums.EnumC17114Id.SERVER_STATS_TRACE_OPTION_ID.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static ServerStats parseBytes(byte[] bArr) throws ServerStatsDeserializationException {
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        wrap.order(ByteOrder.LITTLE_ENDIAN);
        if (!wrap.hasRemaining()) {
            throw new ServerStatsDeserializationException("Serialized ServerStats buffer is empty");
        }
        byte b = wrap.get();
        if (b > 0 || b < 0) {
            throw new ServerStatsDeserializationException("Invalid ServerStats version: " + ((int) b));
        }
        long j = 0;
        byte b2 = 0;
        long j2 = 0;
        while (wrap.hasRemaining()) {
            ServerStatsFieldEnums.EnumC17114Id valueOf = ServerStatsFieldEnums.EnumC17114Id.valueOf(wrap.get() & 255);
            if (valueOf == null) {
                wrap.position(wrap.limit());
            } else {
                int i = C17113a.f94645a[valueOf.ordinal()];
                if (i == 1) {
                    j = wrap.getLong();
                } else if (i == 2) {
                    j2 = wrap.getLong();
                } else if (i == 3) {
                    b2 = wrap.get();
                }
            }
        }
        try {
            return ServerStats.create(j, j2, b2);
        } catch (IllegalArgumentException e) {
            throw new ServerStatsDeserializationException("Serialized ServiceStats contains invalid values: " + e.getMessage());
        }
    }

    public static byte[] toBytes(ServerStats serverStats) {
        ByteBuffer allocate = ByteBuffer.allocate(ServerStatsFieldEnums.getTotalSize() + 1);
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        allocate.put((byte) 0);
        allocate.put((byte) ServerStatsFieldEnums.EnumC17114Id.SERVER_STATS_LB_LATENCY_ID.value());
        allocate.putLong(serverStats.getLbLatencyNs());
        allocate.put((byte) ServerStatsFieldEnums.EnumC17114Id.SERVER_STATS_SERVICE_LATENCY_ID.value());
        allocate.putLong(serverStats.getServiceLatencyNs());
        allocate.put((byte) ServerStatsFieldEnums.EnumC17114Id.SERVER_STATS_TRACE_OPTION_ID.value());
        allocate.put(serverStats.getTraceOption());
        return allocate.array();
    }
}
