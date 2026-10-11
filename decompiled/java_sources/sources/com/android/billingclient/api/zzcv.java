package com.android.billingclient.api;

import androidx.annotation.Nullable;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzcv {

    /* renamed from: a */
    @Nullable
    public final List f13598a;

    /* renamed from: b */
    public final BillingResult f13599b;

    public zzcv(BillingResult billingResult, @Nullable List list) {
        this.f13598a = list;
        this.f13599b = billingResult;
    }

    public final BillingResult zza() {
        return this.f13599b;
    }

    @Nullable
    public final List zzb() {
        return this.f13598a;
    }
}
