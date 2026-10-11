package com.android.billingclient.api;

import androidx.annotation.NonNull;

/* loaded from: classes3.dex */
public final class AcknowledgePurchaseParams {

    /* renamed from: a */
    public String f13363a;

    /* loaded from: classes3.dex */
    public static final class Builder {

        /* renamed from: a */
        public String f13364a;

        public Builder() {
            throw null;
        }

        @NonNull
        public AcknowledgePurchaseParams build() {
            String str = this.f13364a;
            if (str == null) {
                throw new IllegalArgumentException("Purchase token must be set");
            }
            AcknowledgePurchaseParams acknowledgePurchaseParams = new AcknowledgePurchaseParams(null);
            acknowledgePurchaseParams.f13363a = str;
            return acknowledgePurchaseParams;
        }

        @NonNull
        public Builder setPurchaseToken(@NonNull String str) {
            this.f13364a = str;
            return this;
        }

        public /* synthetic */ Builder(zza zzaVar) {
        }
    }

    public AcknowledgePurchaseParams() {
        throw null;
    }

    @NonNull
    public static Builder newBuilder() {
        return new Builder(null);
    }

    @NonNull
    public String getPurchaseToken() {
        return this.f13363a;
    }

    public /* synthetic */ AcknowledgePurchaseParams(zza zzaVar) {
    }
}
