package com.google.android.datatransport.runtime.firebase.transport;

import com.google.firebase.encoders.annotations.Encodable;
import com.google.firebase.encoders.proto.Protobuf;

/* loaded from: classes4.dex */
public final class GlobalMetrics {

    /* renamed from: b */
    public static final GlobalMetrics f22017b = new Builder().build();

    /* renamed from: a */
    public final StorageMetrics f22018a;

    /* loaded from: classes4.dex */
    public static final class Builder {

        /* renamed from: a */
        public StorageMetrics f22019a = null;

        public GlobalMetrics build() {
            return new GlobalMetrics(this.f22019a);
        }

        public Builder setStorageMetrics(StorageMetrics storageMetrics) {
            this.f22019a = storageMetrics;
            return this;
        }
    }

    public GlobalMetrics(StorageMetrics storageMetrics) {
        this.f22018a = storageMetrics;
    }

    public static GlobalMetrics getDefaultInstance() {
        return f22017b;
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    @Encodable.Ignore
    public StorageMetrics getStorageMetrics() {
        StorageMetrics storageMetrics = this.f22018a;
        return storageMetrics == null ? StorageMetrics.getDefaultInstance() : storageMetrics;
    }

    @Protobuf(tag = 1)
    @Encodable.Field(name = "storageMetrics")
    public StorageMetrics getStorageMetricsInternal() {
        return this.f22018a;
    }
}
