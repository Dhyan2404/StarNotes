package com.google.android.datatransport.runtime.firebase.transport;

import com.google.firebase.encoders.annotations.Encodable;
import com.google.firebase.encoders.proto.Protobuf;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes4.dex */
public final class LogSourceMetrics {

    /* renamed from: c */
    public static final LogSourceMetrics f22025c = new Builder().build();

    /* renamed from: a */
    public final String f22026a;

    /* renamed from: b */
    public final List<LogEventDropped> f22027b;

    /* loaded from: classes4.dex */
    public static final class Builder {

        /* renamed from: a */
        public String f22028a = "";

        /* renamed from: b */
        public List<LogEventDropped> f22029b = new ArrayList();

        public Builder addLogEventDropped(LogEventDropped logEventDropped) {
            this.f22029b.add(logEventDropped);
            return this;
        }

        public LogSourceMetrics build() {
            return new LogSourceMetrics(this.f22028a, Collections.unmodifiableList(this.f22029b));
        }

        public Builder setLogEventDroppedList(List<LogEventDropped> list) {
            this.f22029b = list;
            return this;
        }

        public Builder setLogSource(String str) {
            this.f22028a = str;
            return this;
        }
    }

    public LogSourceMetrics(String str, List<LogEventDropped> list) {
        this.f22026a = str;
        this.f22027b = list;
    }

    public static LogSourceMetrics getDefaultInstance() {
        return f22025c;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    @Protobuf(tag = 2)
    @Encodable.Field(name = "logEventDropped")
    public List<LogEventDropped> getLogEventDroppedList() {
        return this.f22027b;
    }

    @Protobuf(tag = 1)
    public String getLogSource() {
        return this.f22026a;
    }
}
