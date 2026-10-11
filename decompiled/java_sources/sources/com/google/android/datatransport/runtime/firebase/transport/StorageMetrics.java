package com.google.android.datatransport.runtime.firebase.transport;

import com.google.firebase.encoders.proto.Protobuf;

/* loaded from: classes4.dex */
public final class StorageMetrics {

    /* renamed from: c */
    public static final StorageMetrics f22030c = new Builder().build();

    /* renamed from: a */
    public final long f22031a;

    /* renamed from: b */
    public final long f22032b;

    /* loaded from: classes4.dex */
    public static final class Builder {

        /* renamed from: a */
        public long f22033a = 0;

        /* renamed from: b */
        public long f22034b = 0;

        public StorageMetrics build() {
            return new StorageMetrics(this.f22033a, this.f22034b);
        }

        public Builder setCurrentCacheSizeBytes(long j) {
            this.f22033a = j;
            return this;
        }

        public Builder setMaxCacheSizeBytes(long j) {
            this.f22034b = j;
            return this;
        }
    }

    public StorageMetrics(long j, long j2) {
        this.f22031a = j;
        this.f22032b = j2;
    }

    public static StorageMetrics getDefaultInstance() {
        return f22030c;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    @Protobuf(tag = 1)
    public long getCurrentCacheSizeBytes() {
        return this.f22031a;
    }

    @Protobuf(tag = 2)
    public long getMaxCacheSizeBytes() {
        return this.f22032b;
    }
}
