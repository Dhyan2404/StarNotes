package com.android.billingclient.api;

import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.List;

@Deprecated
/* loaded from: classes3.dex */
public class SkuDetailsParams {

    /* renamed from: a */
    public String f13499a;

    /* renamed from: b */
    public List f13500b;

    /* loaded from: classes3.dex */
    public static class Builder {

        /* renamed from: a */
        public String f13501a;

        /* renamed from: b */
        public List f13502b;

        public Builder() {
            throw null;
        }

        @NonNull
        public SkuDetailsParams build() {
            String str = this.f13501a;
            if (str == null) {
                throw new IllegalArgumentException("SKU type must be set");
            }
            if (this.f13502b == null) {
                throw new IllegalArgumentException("SKU list must be set");
            }
            SkuDetailsParams skuDetailsParams = new SkuDetailsParams();
            skuDetailsParams.f13499a = str;
            skuDetailsParams.f13500b = this.f13502b;
            return skuDetailsParams;
        }

        @NonNull
        public Builder setSkusList(@NonNull List<String> list) {
            this.f13502b = new ArrayList(list);
            return this;
        }

        @NonNull
        public Builder setType(@NonNull String str) {
            this.f13501a = str;
            return this;
        }

        public /* synthetic */ Builder(zzdd zzddVar) {
        }
    }

    @NonNull
    public static Builder newBuilder() {
        return new Builder(null);
    }

    @NonNull
    public String getSkuType() {
        return this.f13499a;
    }

    @NonNull
    public List<String> getSkusList() {
        return this.f13500b;
    }
}
