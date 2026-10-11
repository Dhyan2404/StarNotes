package com.couchbase.lite.internal.exec;

import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import java.util.List;

/* loaded from: classes4.dex */
public final class Cleaner {

    @NonNull
    private final CleanerImpl impl;

    @FunctionalInterface
    /* loaded from: classes4.dex */
    public interface Cleanable {
        void clean(boolean z);
    }

    @VisibleForTesting
    /* loaded from: classes4.dex */
    public static class Stats {
        public final List<Long> alive;
        public final int maxSize;
        public final int minSize;
        public final long timeIn;

        public Stats(long j, int i, int i2, @NonNull List<Long> list) {
            this.timeIn = j;
            this.minSize = i;
            this.maxSize = i2;
            this.alive = list;
        }
    }

    public Cleaner(@NonNull String str) {
        this(str, 2000);
    }

    @NonNull
    @VisibleForTesting
    public Stats getStats() {
        return this.impl.getStats();
    }

    @VisibleForTesting
    public boolean isStopped() {
        return this.impl.isStopped();
    }

    @NonNull
    public Cleanable register(@NonNull Object obj, @NonNull Cleanable cleanable) {
        return this.impl.register(obj, cleanable);
    }

    @VisibleForTesting
    public void stop() {
        this.impl.stopCleaner();
    }

    @VisibleForTesting
    public Cleaner(@NonNull String str, int i) {
        final CleanerImpl cleanerImpl = new CleanerImpl(str + "-cleaner", i);
        cleanerImpl.register(this, new Cleanable() { // from class: com.couchbase.lite.internal.exec.b
            @Override // com.couchbase.lite.internal.exec.Cleaner.Cleanable
            public final void clean(boolean z) {
                CleanerImpl.this.stopCleaner();
            }
        });
        this.impl = cleanerImpl;
    }
}
