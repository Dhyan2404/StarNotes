package com.android.billingclient.api;

import androidx.annotation.Nullable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes3.dex */
public final class InAppMessageResult {

    /* renamed from: a */
    public final int f13419a;

    /* renamed from: b */
    @Nullable
    public final String f13420b;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3.dex */
    public @interface InAppMessageResponseCode {
        public static final int NO_ACTION_NEEDED = 0;
        public static final int SUBSCRIPTION_STATUS_UPDATED = 1;
    }

    public InAppMessageResult(int i, @Nullable String str) {
        this.f13419a = i;
        this.f13420b = str;
    }

    @Nullable
    public String getPurchaseToken() {
        return this.f13420b;
    }

    public int getResponseCode() {
        return this.f13419a;
    }
}
