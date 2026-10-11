package com.android.billingclient.api;

import androidx.annotation.NonNull;

/* loaded from: classes3.dex */
public final class ConsumeParams {

    /* renamed from: a */
    public String f13408a;

    /* loaded from: classes3.dex */
    public static final class Builder {

        /* renamed from: a */
        public String f13409a;

        public Builder() {
            throw null;
        }

        @NonNull
        public ConsumeParams build() {
            String str = this.f13409a;
            if (str == null) {
                throw new IllegalArgumentException("Purchase token must be set");
            }
            ConsumeParams consumeParams = new ConsumeParams(null);
            consumeParams.f13408a = str;
            return consumeParams;
        }

        @NonNull
        public Builder setPurchaseToken(@NonNull String str) {
            this.f13409a = str;
            return this;
        }

        public /* synthetic */ Builder(zzck zzckVar) {
        }
    }

    public ConsumeParams() {
        throw null;
    }

    @NonNull
    public static Builder newBuilder() {
        return new Builder(null);
    }

    @NonNull
    public String getPurchaseToken() {
        return this.f13408a;
    }

    public /* synthetic */ ConsumeParams(zzck zzckVar) {
    }
}
