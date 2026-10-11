package com.google.android.datatransport.runtime.backends;

import com.google.android.datatransport.runtime.backends.BackendResponse;

/* renamed from: com.google.android.datatransport.runtime.backends.b */
/* loaded from: classes4.dex */
public final class C4628b extends BackendResponse {

    /* renamed from: a */
    public final BackendResponse.Status f21955a;

    /* renamed from: b */
    public final long f21956b;

    public C4628b(BackendResponse.Status status, long j) {
        if (status == null) {
            throw new NullPointerException("Null status");
        }
        this.f21955a = status;
        this.f21956b = j;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof BackendResponse)) {
            return false;
        }
        BackendResponse backendResponse = (BackendResponse) obj;
        return this.f21955a.equals(backendResponse.getStatus()) && this.f21956b == backendResponse.getNextRequestWaitMillis();
    }

    @Override // com.google.android.datatransport.runtime.backends.BackendResponse
    public long getNextRequestWaitMillis() {
        return this.f21956b;
    }

    @Override // com.google.android.datatransport.runtime.backends.BackendResponse
    public BackendResponse.Status getStatus() {
        return this.f21955a;
    }

    public int hashCode() {
        int hashCode = (this.f21955a.hashCode() ^ 1000003) * 1000003;
        long j = this.f21956b;
        return ((int) (j ^ (j >>> 32))) ^ hashCode;
    }

    public String toString() {
        return "BackendResponse{status=" + this.f21955a + ", nextRequestWaitMillis=" + this.f21956b + "}";
    }
}
