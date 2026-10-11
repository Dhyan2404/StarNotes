package org.apache.commons.compress.archivers.zip;

import io.opencensus.contrib.http.util.HttpMeasureConstants;

/* loaded from: classes12.dex */
public class ScatterStatistics {

    /* renamed from: a */
    public final long f105816a;

    /* renamed from: b */
    public final long f105817b;

    public ScatterStatistics(long j, long j2) {
        this.f105816a = j;
        this.f105817b = j2;
    }

    public long getCompressionElapsed() {
        return this.f105816a;
    }

    public long getMergingElapsed() {
        return this.f105817b;
    }

    public String toString() {
        return "compressionElapsed=" + this.f105816a + "ms, mergingElapsed=" + this.f105817b + HttpMeasureConstants.f94668b;
    }
}
