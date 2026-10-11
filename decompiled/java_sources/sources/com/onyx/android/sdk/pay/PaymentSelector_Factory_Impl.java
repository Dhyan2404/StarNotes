package com.onyx.android.sdk.pay;

import com.onyx.android.sdk.pay.PaymentSelector;
import dagger.internal.DaggerGenerated;
import dagger.internal.InstanceFactory;
import dagger.internal.Provider;

@DaggerGenerated
/* loaded from: classes8.dex */
public final class PaymentSelector_Factory_Impl implements PaymentSelector.Factory {

    /* renamed from: a */
    public final C20627PaymentSelector_Factory f44049a;

    public PaymentSelector_Factory_Impl(C20627PaymentSelector_Factory c20627PaymentSelector_Factory) {
        this.f44049a = c20627PaymentSelector_Factory;
    }

    public static Provider<PaymentSelector.Factory> createFactoryProvider(C20627PaymentSelector_Factory c20627PaymentSelector_Factory) {
        return InstanceFactory.create(new PaymentSelector_Factory_Impl(c20627PaymentSelector_Factory));
    }

    @Override // com.onyx.android.sdk.pay.PaymentSelector.Factory
    public PaymentSelector create(String str) {
        return this.f44049a.get(str);
    }

    public static javax.inject.Provider<PaymentSelector.Factory> create(C20627PaymentSelector_Factory c20627PaymentSelector_Factory) {
        return InstanceFactory.create(new PaymentSelector_Factory_Impl(c20627PaymentSelector_Factory));
    }
}
