package com.google.android.play.core.integrity;

import androidx.annotation.Nullable;
import com.google.android.play.core.integrity.StandardIntegrityManager;

/* renamed from: com.google.android.play.core.integrity.k */
/* loaded from: classes6.dex */
final class C5525k extends StandardIntegrityManager.StandardIntegrityTokenRequest {

    /* renamed from: a */
    private final String f33434a;

    public /* synthetic */ C5525k(String str, C5524j c5524j) {
        this.f33434a = str;
    }

    @Override // com.google.android.play.core.integrity.StandardIntegrityManager.StandardIntegrityTokenRequest
    @Nullable
    /* renamed from: a */
    public final String mo25657a() {
        return this.f33434a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof StandardIntegrityManager.StandardIntegrityTokenRequest)) {
            return false;
        }
        StandardIntegrityManager.StandardIntegrityTokenRequest standardIntegrityTokenRequest = (StandardIntegrityManager.StandardIntegrityTokenRequest) obj;
        String str = this.f33434a;
        return str == null ? standardIntegrityTokenRequest.mo25657a() == null : str.equals(standardIntegrityTokenRequest.mo25657a());
    }

    public final int hashCode() {
        String str = this.f33434a;
        return (str == null ? 0 : str.hashCode()) ^ 1000003;
    }

    public final String toString() {
        return "StandardIntegrityTokenRequest{requestHash=" + this.f33434a + "}";
    }
}
