package com.android.billingclient.api;

import androidx.annotation.NonNull;

/* loaded from: classes3.dex */
public final class BillingResult {

    /* renamed from: a */
    public int f13404a;

    /* renamed from: b */
    public String f13405b;

    /* loaded from: classes3.dex */
    public static class Builder {

        /* renamed from: a */
        public int f13406a;

        /* renamed from: b */
        public String f13407b = "";

        public Builder() {
        }

        @NonNull
        public BillingResult build() {
            BillingResult billingResult = new BillingResult();
            billingResult.f13404a = this.f13406a;
            billingResult.f13405b = this.f13407b;
            return billingResult;
        }

        @NonNull
        public Builder setDebugMessage(@NonNull String str) {
            this.f13407b = str;
            return this;
        }

        @NonNull
        public Builder setResponseCode(int i) {
            this.f13406a = i;
            return this;
        }

        public /* synthetic */ Builder(zzci zzciVar) {
        }
    }

    @NonNull
    public static Builder newBuilder() {
        return new Builder(null);
    }

    @NonNull
    public String getDebugMessage() {
        return this.f13405b;
    }

    public int getResponseCode() {
        return this.f13404a;
    }

    @NonNull
    public String toString() {
        return "Response Code: " + com.google.android.gms.internal.play_billing.zze.zzi(this.f13404a) + ", Debug Message: " + this.f13405b;
    }
}
