package com.sunia.HTREnginev2;

import com.google.android.datatransport.cct.internal.LogResponse;

/* renamed from: com.sunia.HTREnginev2.yj */
/* loaded from: classes4.dex */
public final class C14716yj extends LogResponse {

    /* renamed from: b */
    public final long f90782b;

    public C14716yj(long j) {
        this.f90782b = j;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof LogResponse) && this.f90782b == ((LogResponse) obj).getNextRequestWaitMillis();
    }

    @Override // com.google.android.datatransport.cct.internal.LogResponse
    public long getNextRequestWaitMillis() {
        return this.f90782b;
    }

    public int hashCode() {
        long j = this.f90782b;
        return ((int) (j ^ (j >>> 32))) ^ 1000003;
    }

    public String toString() {
        return "LogResponse{nextRequestWaitMillis=" + this.f90782b + "}";
    }
}
