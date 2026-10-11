package com.google.android.datatransport.runtime.firebase.transport;

import com.google.firebase.encoders.proto.Protobuf;

/* loaded from: classes4.dex */
public final class TimeWindow {

    /* renamed from: c */
    public static final TimeWindow f22035c = new Builder().build();

    /* renamed from: a */
    public final long f22036a;

    /* renamed from: b */
    public final long f22037b;

    /* loaded from: classes4.dex */
    public static final class Builder {

        /* renamed from: a */
        public long f22038a = 0;

        /* renamed from: b */
        public long f22039b = 0;

        public TimeWindow build() {
            return new TimeWindow(this.f22038a, this.f22039b);
        }

        public Builder setEndMs(long j) {
            this.f22039b = j;
            return this;
        }

        public Builder setStartMs(long j) {
            this.f22038a = j;
            return this;
        }
    }

    public TimeWindow(long j, long j2) {
        this.f22036a = j;
        this.f22037b = j2;
    }

    public static TimeWindow getDefaultInstance() {
        return f22035c;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    @Protobuf(tag = 2)
    public long getEndMs() {
        return this.f22037b;
    }

    @Protobuf(tag = 1)
    public long getStartMs() {
        return this.f22036a;
    }
}
