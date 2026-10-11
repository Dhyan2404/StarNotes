package com.onyx.android.sdk.pay;

import dagger.internal.DaggerGenerated;
import dagger.internal.QualifierMetadata;
import dagger.internal.ScopeMetadata;
import java.util.Map;
import javax.inject.Provider;

@ScopeMetadata
@DaggerGenerated
@QualifierMetadata
/* renamed from: com.onyx.android.sdk.pay.PaymentSelector_Factory, reason: case insensitive filesystem */
/* loaded from: classes8.dex */
public final class C20627PaymentSelector_Factory {

    /* renamed from: a */
    public final Provider<Map<String, BasePayment>> f44048a;

    public C20627PaymentSelector_Factory(Provider<Map<String, BasePayment>> provider) {
        this.f44048a = provider;
    }

    public static C20627PaymentSelector_Factory create(Provider<Map<String, BasePayment>> provider) {
        return new C20627PaymentSelector_Factory(provider);
    }

    public static PaymentSelector newInstance(Map<String, BasePayment> map, String str) {
        return new PaymentSelector(map, str);
    }

    public PaymentSelector get(String str) {
        return newInstance(this.f44048a.get(), str);
    }
}
