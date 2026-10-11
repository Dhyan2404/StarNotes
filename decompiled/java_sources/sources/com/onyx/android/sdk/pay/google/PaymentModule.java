package com.onyx.android.sdk.pay.google;

import com.onyx.android.sdk.pay.BasePayment;
import com.onyx.android.sdk.pay.constants.Constants;
import dagger.Module;
import dagger.Provides;
import dagger.hilt.InstallIn;
import dagger.hilt.components.SingletonComponent;
import dagger.multibindings.IntoMap;
import dagger.multibindings.StringKey;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/android/sdk/pay/google/PaymentModule;", "", "()V", "getGooglePayment", "Lcom/onyx/android/sdk/pay/BasePayment;", "sdk-pay_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@Module
@InstallIn({SingletonComponent.class})
/* loaded from: classes8.dex */
public final class PaymentModule {

    @NotNull
    public static final PaymentModule INSTANCE = new PaymentModule();

    @Provides
    @StringKey(Constants.PAY_GOOGLE)
    @NotNull
    @IntoMap
    public final BasePayment getGooglePayment() {
        return new GooglePayment();
    }
}
