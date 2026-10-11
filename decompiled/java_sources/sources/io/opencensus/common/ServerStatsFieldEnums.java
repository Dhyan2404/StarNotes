package io.opencensus.common;

import java.util.TreeMap;
import javax.annotation.Nullable;

/* loaded from: classes10.dex */
public final class ServerStatsFieldEnums {

    /* renamed from: a */
    public static final int f94646a = m60946a();

    /* renamed from: io.opencensus.common.ServerStatsFieldEnums$Id */
    /* loaded from: classes10.dex */
    public enum EnumC17114Id {
        SERVER_STATS_LB_LATENCY_ID(0),
        SERVER_STATS_SERVICE_LATENCY_ID(1),
        SERVER_STATS_TRACE_OPTION_ID(2);

        private static final TreeMap<Integer, EnumC17114Id> map = new TreeMap<>();
        private final int value;

        static {
            for (EnumC17114Id enumC17114Id : values()) {
                map.put(Integer.valueOf(enumC17114Id.value), enumC17114Id);
            }
        }

        EnumC17114Id(int i) {
            this.value = i;
        }

        public int value() {
            return this.value;
        }

        @Nullable
        public static EnumC17114Id valueOf(int i) {
            return map.get(Integer.valueOf(i));
        }
    }

    /* loaded from: classes10.dex */
    public enum Size {
        SERVER_STATS_LB_LATENCY_SIZE(8),
        SERVER_STATS_SERVICE_LATENCY_SIZE(8),
        SERVER_STATS_TRACE_OPTION_SIZE(1);

        private final int value;

        Size(int i) {
            this.value = i;
        }

        public int value() {
            return this.value;
        }
    }

    /* renamed from: a */
    public static int m60946a() {
        int i = 0;
        for (Size size : Size.values()) {
            i = i + size.value() + 1;
        }
        return i;
    }

    public static int getTotalSize() {
        return f94646a;
    }
}
