package com.android.billingclient.api;

import androidx.annotation.NonNull;

@zzj
/* loaded from: classes3.dex */
public final class PendingPurchasesParams {

    /* renamed from: a */
    public final boolean f13421a;

    /* renamed from: b */
    public final boolean f13422b;

    @zzj
    /* loaded from: classes3.dex */
    public static final class Builder {

        /* renamed from: a */
        public boolean f13423a;

        /* renamed from: b */
        public boolean f13424b;

        public Builder() {
        }

        @NonNull
        public PendingPurchasesParams build() {
            if (!this.f13423a) {
                throw new IllegalArgumentException("Pending purchases for one-time products must be supported.");
            }
            return new PendingPurchasesParams(true, this.f13424b);
        }

        @NonNull
        public Builder enableOneTimeProducts() {
            this.f13423a = true;
            return this;
        }

        @NonNull
        public Builder enablePrepaidPlans() {
            this.f13424b = true;
            return this;
        }
    }

    public PendingPurchasesParams(boolean z, boolean z2) {
        this.f13421a = z;
        this.f13422b = z2;
    }

    @NonNull
    public static Builder newBuilder() {
        return new Builder();
    }

    /* renamed from: a */
    public boolean m7766a() {
        return this.f13421a;
    }

    /* renamed from: b */
    public boolean m7767b() {
        return this.f13422b;
    }
}
