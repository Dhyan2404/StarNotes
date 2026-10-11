package com.google.android.datatransport.cct.internal;

import androidx.annotation.Nullable;
import com.google.android.datatransport.cct.internal.LogEvent;
import java.util.Arrays;

/* renamed from: com.google.android.datatransport.cct.internal.c */
/* loaded from: classes4.dex */
public final class C4613c extends LogEvent {

    /* renamed from: a */
    public final long f21855a;

    /* renamed from: b */
    public final Integer f21856b;

    /* renamed from: c */
    public final long f21857c;

    /* renamed from: d */
    public final byte[] f21858d;

    /* renamed from: e */
    public final String f21859e;

    /* renamed from: f */
    public final long f21860f;

    /* renamed from: g */
    public final NetworkConnectionInfo f21861g;

    /* renamed from: com.google.android.datatransport.cct.internal.c$b */
    /* loaded from: classes4.dex */
    public static final class b extends LogEvent.Builder {

        /* renamed from: a */
        public Long f21862a;

        /* renamed from: b */
        public Integer f21863b;

        /* renamed from: c */
        public Long f21864c;

        /* renamed from: d */
        public byte[] f21865d;

        /* renamed from: e */
        public String f21866e;

        /* renamed from: f */
        public Long f21867f;

        /* renamed from: g */
        public NetworkConnectionInfo f21868g;

        @Override // com.google.android.datatransport.cct.internal.LogEvent.Builder
        /* renamed from: a */
        public LogEvent.Builder mo17405a(@Nullable byte[] bArr) {
            this.f21865d = bArr;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.LogEvent.Builder
        /* renamed from: b */
        public LogEvent.Builder mo17406b(@Nullable String str) {
            this.f21866e = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.LogEvent.Builder
        public LogEvent build() {
            String str = "";
            if (this.f21862a == null) {
                str = " eventTimeMs";
            }
            if (this.f21864c == null) {
                str = str + " eventUptimeMs";
            }
            if (this.f21867f == null) {
                str = str + " timezoneOffsetSeconds";
            }
            if (str.isEmpty()) {
                return new C4613c(this.f21862a.longValue(), this.f21863b, this.f21864c.longValue(), this.f21865d, this.f21866e, this.f21867f.longValue(), this.f21868g);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.android.datatransport.cct.internal.LogEvent.Builder
        public LogEvent.Builder setEventCode(@Nullable Integer num) {
            this.f21863b = num;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.LogEvent.Builder
        public LogEvent.Builder setEventTimeMs(long j) {
            this.f21862a = Long.valueOf(j);
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.LogEvent.Builder
        public LogEvent.Builder setEventUptimeMs(long j) {
            this.f21864c = Long.valueOf(j);
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.LogEvent.Builder
        public LogEvent.Builder setNetworkConnectionInfo(@Nullable NetworkConnectionInfo networkConnectionInfo) {
            this.f21868g = networkConnectionInfo;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.LogEvent.Builder
        public LogEvent.Builder setTimezoneOffsetSeconds(long j) {
            this.f21867f = Long.valueOf(j);
            return this;
        }
    }

    public boolean equals(Object obj) {
        Integer num;
        String str;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof LogEvent)) {
            return false;
        }
        LogEvent logEvent = (LogEvent) obj;
        if (this.f21855a == logEvent.getEventTimeMs() && ((num = this.f21856b) != null ? num.equals(logEvent.getEventCode()) : logEvent.getEventCode() == null) && this.f21857c == logEvent.getEventUptimeMs()) {
            if (Arrays.equals(this.f21858d, logEvent instanceof C4613c ? ((C4613c) logEvent).f21858d : logEvent.getSourceExtension()) && ((str = this.f21859e) != null ? str.equals(logEvent.getSourceExtensionJsonProto3()) : logEvent.getSourceExtensionJsonProto3() == null) && this.f21860f == logEvent.getTimezoneOffsetSeconds()) {
                NetworkConnectionInfo networkConnectionInfo = this.f21861g;
                if (networkConnectionInfo == null) {
                    if (logEvent.getNetworkConnectionInfo() == null) {
                        return true;
                    }
                } else if (networkConnectionInfo.equals(logEvent.getNetworkConnectionInfo())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.google.android.datatransport.cct.internal.LogEvent
    @Nullable
    public Integer getEventCode() {
        return this.f21856b;
    }

    @Override // com.google.android.datatransport.cct.internal.LogEvent
    public long getEventTimeMs() {
        return this.f21855a;
    }

    @Override // com.google.android.datatransport.cct.internal.LogEvent
    public long getEventUptimeMs() {
        return this.f21857c;
    }

    @Override // com.google.android.datatransport.cct.internal.LogEvent
    @Nullable
    public NetworkConnectionInfo getNetworkConnectionInfo() {
        return this.f21861g;
    }

    @Override // com.google.android.datatransport.cct.internal.LogEvent
    @Nullable
    public byte[] getSourceExtension() {
        return this.f21858d;
    }

    @Override // com.google.android.datatransport.cct.internal.LogEvent
    @Nullable
    public String getSourceExtensionJsonProto3() {
        return this.f21859e;
    }

    @Override // com.google.android.datatransport.cct.internal.LogEvent
    public long getTimezoneOffsetSeconds() {
        return this.f21860f;
    }

    public int hashCode() {
        long j = this.f21855a;
        int i = (((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003;
        Integer num = this.f21856b;
        int hashCode = num == null ? 0 : num.hashCode();
        long j2 = this.f21857c;
        int hashCode2 = (((((i ^ hashCode) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003) ^ Arrays.hashCode(this.f21858d)) * 1000003;
        String str = this.f21859e;
        int hashCode3 = str == null ? 0 : str.hashCode();
        long j3 = this.f21860f;
        int i2 = (((hashCode2 ^ hashCode3) * 1000003) ^ ((int) ((j3 >>> 32) ^ j3))) * 1000003;
        NetworkConnectionInfo networkConnectionInfo = this.f21861g;
        return i2 ^ (networkConnectionInfo != null ? networkConnectionInfo.hashCode() : 0);
    }

    public String toString() {
        return "LogEvent{eventTimeMs=" + this.f21855a + ", eventCode=" + this.f21856b + ", eventUptimeMs=" + this.f21857c + ", sourceExtension=" + Arrays.toString(this.f21858d) + ", sourceExtensionJsonProto3=" + this.f21859e + ", timezoneOffsetSeconds=" + this.f21860f + ", networkConnectionInfo=" + this.f21861g + "}";
    }

    public C4613c(long j, @Nullable Integer num, long j2, @Nullable byte[] bArr, @Nullable String str, long j3, @Nullable NetworkConnectionInfo networkConnectionInfo) {
        this.f21855a = j;
        this.f21856b = num;
        this.f21857c = j2;
        this.f21858d = bArr;
        this.f21859e = str;
        this.f21860f = j3;
        this.f21861g = networkConnectionInfo;
    }
}
