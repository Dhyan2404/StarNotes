package com.google.android.play.core.integrity;

import com.google.android.play.core.integrity.StandardIntegrityManager;

/* renamed from: com.google.android.play.core.integrity.h */
/* loaded from: classes6.dex */
final class C5522h extends StandardIntegrityManager.PrepareIntegrityTokenRequest {

    /* renamed from: a */
    private final long f33432a;

    public /* synthetic */ C5522h(long j, C5521g c5521g) {
        this.f33432a = j;
    }

    @Override // com.google.android.play.core.integrity.StandardIntegrityManager.PrepareIntegrityTokenRequest
    /* renamed from: a */
    public final long mo25656a() {
        return this.f33432a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof StandardIntegrityManager.PrepareIntegrityTokenRequest) && this.f33432a == ((StandardIntegrityManager.PrepareIntegrityTokenRequest) obj).mo25656a();
    }

    public final int hashCode() {
        long j = this.f33432a;
        return ((int) (j ^ (j >>> 32))) ^ 1000003;
    }

    public final String toString() {
        return "PrepareIntegrityTokenRequest{cloudProjectNumber=" + this.f33432a + "}";
    }
}
