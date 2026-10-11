package com.google.android.datatransport.cct.internal;

import androidx.annotation.Nullable;
import com.google.android.datatransport.cct.internal.LogRequest;
import com.google.firebase.encoders.annotations.Encodable;
import java.util.List;

/* renamed from: com.google.android.datatransport.cct.internal.d */
/* loaded from: classes4.dex */
public final class C4614d extends LogRequest {

    /* renamed from: a */
    public final long f21869a;

    /* renamed from: b */
    public final long f21870b;

    /* renamed from: c */
    public final ClientInfo f21871c;

    /* renamed from: d */
    public final Integer f21872d;

    /* renamed from: e */
    public final String f21873e;

    /* renamed from: f */
    public final List<LogEvent> f21874f;

    /* renamed from: g */
    public final QosTier f21875g;

    /* renamed from: com.google.android.datatransport.cct.internal.d$b */
    /* loaded from: classes4.dex */
    public static final class b extends LogRequest.Builder {

        /* renamed from: a */
        public Long f21876a;

        /* renamed from: b */
        public Long f21877b;

        /* renamed from: c */
        public ClientInfo f21878c;

        /* renamed from: d */
        public Integer f21879d;

        /* renamed from: e */
        public String f21880e;

        /* renamed from: f */
        public List<LogEvent> f21881f;

        /* renamed from: g */
        public QosTier f21882g;

        @Override // com.google.android.datatransport.cct.internal.LogRequest.Builder
        /* renamed from: a */
        public LogRequest.Builder mo17407a(@Nullable Integer num) {
            this.f21879d = num;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.LogRequest.Builder
        /* renamed from: b */
        public LogRequest.Builder mo17408b(@Nullable String str) {
            this.f21880e = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.LogRequest.Builder
        public LogRequest build() {
            String str = "";
            if (this.f21876a == null) {
                str = " requestTimeMs";
            }
            if (this.f21877b == null) {
                str = str + " requestUptimeMs";
            }
            if (str.isEmpty()) {
                return new C4614d(this.f21876a.longValue(), this.f21877b.longValue(), this.f21878c, this.f21879d, this.f21880e, this.f21881f, this.f21882g);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.android.datatransport.cct.internal.LogRequest.Builder
        public LogRequest.Builder setClientInfo(@Nullable ClientInfo clientInfo) {
            this.f21878c = clientInfo;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.LogRequest.Builder
        public LogRequest.Builder setLogEvents(@Nullable List<LogEvent> list) {
            this.f21881f = list;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.LogRequest.Builder
        public LogRequest.Builder setQosTier(@Nullable QosTier qosTier) {
            this.f21882g = qosTier;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.LogRequest.Builder
        public LogRequest.Builder setRequestTimeMs(long j) {
            this.f21876a = Long.valueOf(j);
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.LogRequest.Builder
        public LogRequest.Builder setRequestUptimeMs(long j) {
            this.f21877b = Long.valueOf(j);
            return this;
        }
    }

    public boolean equals(Object obj) {
        ClientInfo clientInfo;
        Integer num;
        String str;
        List<LogEvent> list;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof LogRequest)) {
            return false;
        }
        LogRequest logRequest = (LogRequest) obj;
        if (this.f21869a == logRequest.getRequestTimeMs() && this.f21870b == logRequest.getRequestUptimeMs() && ((clientInfo = this.f21871c) != null ? clientInfo.equals(logRequest.getClientInfo()) : logRequest.getClientInfo() == null) && ((num = this.f21872d) != null ? num.equals(logRequest.getLogSource()) : logRequest.getLogSource() == null) && ((str = this.f21873e) != null ? str.equals(logRequest.getLogSourceName()) : logRequest.getLogSourceName() == null) && ((list = this.f21874f) != null ? list.equals(logRequest.getLogEvents()) : logRequest.getLogEvents() == null)) {
            QosTier qosTier = this.f21875g;
            if (qosTier == null) {
                if (logRequest.getQosTier() == null) {
                    return true;
                }
            } else if (qosTier.equals(logRequest.getQosTier())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.datatransport.cct.internal.LogRequest
    @Nullable
    public ClientInfo getClientInfo() {
        return this.f21871c;
    }

    @Override // com.google.android.datatransport.cct.internal.LogRequest
    @Nullable
    @Encodable.Field(name = "logEvent")
    public List<LogEvent> getLogEvents() {
        return this.f21874f;
    }

    @Override // com.google.android.datatransport.cct.internal.LogRequest
    @Nullable
    public Integer getLogSource() {
        return this.f21872d;
    }

    @Override // com.google.android.datatransport.cct.internal.LogRequest
    @Nullable
    public String getLogSourceName() {
        return this.f21873e;
    }

    @Override // com.google.android.datatransport.cct.internal.LogRequest
    @Nullable
    public QosTier getQosTier() {
        return this.f21875g;
    }

    @Override // com.google.android.datatransport.cct.internal.LogRequest
    public long getRequestTimeMs() {
        return this.f21869a;
    }

    @Override // com.google.android.datatransport.cct.internal.LogRequest
    public long getRequestUptimeMs() {
        return this.f21870b;
    }

    public int hashCode() {
        long j = this.f21869a;
        long j2 = this.f21870b;
        int i = (((((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003) ^ ((int) ((j2 >>> 32) ^ j2))) * 1000003;
        ClientInfo clientInfo = this.f21871c;
        int hashCode = (i ^ (clientInfo == null ? 0 : clientInfo.hashCode())) * 1000003;
        Integer num = this.f21872d;
        int hashCode2 = (hashCode ^ (num == null ? 0 : num.hashCode())) * 1000003;
        String str = this.f21873e;
        int hashCode3 = (hashCode2 ^ (str == null ? 0 : str.hashCode())) * 1000003;
        List<LogEvent> list = this.f21874f;
        int hashCode4 = (hashCode3 ^ (list == null ? 0 : list.hashCode())) * 1000003;
        QosTier qosTier = this.f21875g;
        return hashCode4 ^ (qosTier != null ? qosTier.hashCode() : 0);
    }

    public String toString() {
        return "LogRequest{requestTimeMs=" + this.f21869a + ", requestUptimeMs=" + this.f21870b + ", clientInfo=" + this.f21871c + ", logSource=" + this.f21872d + ", logSourceName=" + this.f21873e + ", logEvents=" + this.f21874f + ", qosTier=" + this.f21875g + "}";
    }

    public C4614d(long j, long j2, @Nullable ClientInfo clientInfo, @Nullable Integer num, @Nullable String str, @Nullable List<LogEvent> list, @Nullable QosTier qosTier) {
        this.f21869a = j;
        this.f21870b = j2;
        this.f21871c = clientInfo;
        this.f21872d = num;
        this.f21873e = str;
        this.f21874f = list;
        this.f21875g = qosTier;
    }
}
