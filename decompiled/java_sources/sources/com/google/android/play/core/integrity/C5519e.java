package com.google.android.play.core.integrity;

import android.net.Network;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

/* renamed from: com.google.android.play.core.integrity.e */
/* loaded from: classes6.dex */
final class C5519e extends IntegrityTokenRequest {

    /* renamed from: a */
    private final String f33428a;

    /* renamed from: b */
    private final Long f33429b;

    public /* synthetic */ C5519e(String str, Long l, Network network, C5518d c5518d) {
        this.f33428a = str;
        this.f33429b = l;
    }

    @Override // com.google.android.play.core.integrity.IntegrityTokenRequest
    @Nullable
    @RequiresApi(api = 23)
    /* renamed from: a */
    public final Network mo25655a() {
        return null;
    }

    @Override // com.google.android.play.core.integrity.IntegrityTokenRequest
    @Nullable
    public final Long cloudProjectNumber() {
        return this.f33429b;
    }

    public final boolean equals(Object obj) {
        Long l;
        if (obj == this) {
            return true;
        }
        if (obj instanceof IntegrityTokenRequest) {
            IntegrityTokenRequest integrityTokenRequest = (IntegrityTokenRequest) obj;
            if (this.f33428a.equals(integrityTokenRequest.nonce()) && ((l = this.f33429b) != null ? l.equals(integrityTokenRequest.cloudProjectNumber()) : integrityTokenRequest.cloudProjectNumber() == null)) {
                integrityTokenRequest.mo25655a();
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = this.f33428a.hashCode() ^ 1000003;
        Long l = this.f33429b;
        return ((l == null ? 0 : l.hashCode()) ^ (hashCode * 1000003)) * 1000003;
    }

    @Override // com.google.android.play.core.integrity.IntegrityTokenRequest
    public final String nonce() {
        return this.f33428a;
    }

    public final String toString() {
        return "IntegrityTokenRequest{nonce=" + this.f33428a + ", cloudProjectNumber=" + this.f33429b + ", network=null}";
    }
}
