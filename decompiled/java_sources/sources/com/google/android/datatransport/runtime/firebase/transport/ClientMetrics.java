package com.google.android.datatransport.runtime.firebase.transport;

import com.google.android.datatransport.runtime.ProtoEncoderDoNotUse;
import com.google.firebase.encoders.annotations.Encodable;
import com.google.firebase.encoders.proto.Protobuf;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes4.dex */
public final class ClientMetrics {

    /* renamed from: e */
    public static final ClientMetrics f22008e = new Builder().build();

    /* renamed from: a */
    public final TimeWindow f22009a;

    /* renamed from: b */
    public final List<LogSourceMetrics> f22010b;

    /* renamed from: c */
    public final GlobalMetrics f22011c;

    /* renamed from: d */
    public final String f22012d;

    /* loaded from: classes4.dex */
    public static final class Builder {

        /* renamed from: a */
        public TimeWindow f22013a = null;

        /* renamed from: b */
        public List<LogSourceMetrics> f22014b = new ArrayList();

        /* renamed from: c */
        public GlobalMetrics f22015c = null;

        /* renamed from: d */
        public String f22016d = "";

        public Builder addLogSourceMetrics(LogSourceMetrics logSourceMetrics) {
            this.f22014b.add(logSourceMetrics);
            return this;
        }

        public ClientMetrics build() {
            return new ClientMetrics(this.f22013a, Collections.unmodifiableList(this.f22014b), this.f22015c, this.f22016d);
        }

        public Builder setAppNamespace(String str) {
            this.f22016d = str;
            return this;
        }

        public Builder setGlobalMetrics(GlobalMetrics globalMetrics) {
            this.f22015c = globalMetrics;
            return this;
        }

        public Builder setLogSourceMetricsList(List<LogSourceMetrics> list) {
            this.f22014b = list;
            return this;
        }

        public Builder setWindow(TimeWindow timeWindow) {
            this.f22013a = timeWindow;
            return this;
        }
    }

    public ClientMetrics(TimeWindow timeWindow, List<LogSourceMetrics> list, GlobalMetrics globalMetrics, String str) {
        this.f22009a = timeWindow;
        this.f22010b = list;
        this.f22011c = globalMetrics;
        this.f22012d = str;
    }

    public static ClientMetrics getDefaultInstance() {
        return f22008e;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    @Protobuf(tag = 4)
    public String getAppNamespace() {
        return this.f22012d;
    }

    @Encodable.Ignore
    public GlobalMetrics getGlobalMetrics() {
        GlobalMetrics globalMetrics = this.f22011c;
        return globalMetrics == null ? GlobalMetrics.getDefaultInstance() : globalMetrics;
    }

    @Protobuf(tag = 3)
    @Encodable.Field(name = "globalMetrics")
    public GlobalMetrics getGlobalMetricsInternal() {
        return this.f22011c;
    }

    @Protobuf(tag = 2)
    @Encodable.Field(name = "logSourceMetrics")
    public List<LogSourceMetrics> getLogSourceMetricsList() {
        return this.f22010b;
    }

    @Encodable.Ignore
    public TimeWindow getWindow() {
        TimeWindow timeWindow = this.f22009a;
        return timeWindow == null ? TimeWindow.getDefaultInstance() : timeWindow;
    }

    @Protobuf(tag = 1)
    @Encodable.Field(name = "window")
    public TimeWindow getWindowInternal() {
        return this.f22009a;
    }

    public byte[] toByteArray() {
        return ProtoEncoderDoNotUse.encode(this);
    }

    public void writeTo(OutputStream outputStream) throws IOException {
        ProtoEncoderDoNotUse.encode(this, outputStream);
    }
}
