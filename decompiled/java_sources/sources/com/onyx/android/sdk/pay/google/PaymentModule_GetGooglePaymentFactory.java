package com.onyx.android.sdk.pay.google;

import com.onyx.android.sdk.pay.BasePayment;
import dagger.internal.DaggerGenerated;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import dagger.internal.QualifierMetadata;
import dagger.internal.ScopeMetadata;

@ScopeMetadata
@DaggerGenerated
@QualifierMetadata
/* loaded from: classes8.dex */
public final class PaymentModule_GetGooglePaymentFactory implements Factory<BasePayment> {

    /* renamed from: com.onyx.android.sdk.pay.google.PaymentModule_GetGooglePaymentFactory$a */
    /* loaded from: classes8.dex */
    public static final class C7530a {

        /* renamed from: a */
        public static final PaymentModule_GetGooglePaymentFactory f44145a = new PaymentModule_GetGooglePaymentFactory();
    }

    public static PaymentModule_GetGooglePaymentFactory create() {
        return C7530a.f44145a;
    }

    public static BasePayment getGooglePayment() {
        return (BasePayment) Preconditions.checkNotNullFromProvides(PaymentModule.INSTANCE.getGooglePayment());
    }

    @Override // javax.inject.Provider
    public BasePayment get() {
        return getGooglePayment();
    }
}
