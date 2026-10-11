package com.google.android.datatransport.runtime.backends;

import com.google.auto.value.AutoValue;

@AutoValue
/* loaded from: classes4.dex */
public abstract class BackendResponse {

    /* loaded from: classes4.dex */
    public enum Status {
        OK,
        TRANSIENT_ERROR,
        FATAL_ERROR,
        INVALID_PAYLOAD
    }

    public static BackendResponse fatalError() {
        return new C4628b(Status.FATAL_ERROR, -1L);
    }

    public static BackendResponse invalidPayload() {
        return new C4628b(Status.INVALID_PAYLOAD, -1L);
    }

    /* renamed from: ok */
    public static BackendResponse m17433ok(long j) {
        return new C4628b(Status.OK, j);
    }

    public static BackendResponse transientError() {
        return new C4628b(Status.TRANSIENT_ERROR, -1L);
    }

    public abstract long getNextRequestWaitMillis();

    public abstract Status getStatus();
}
