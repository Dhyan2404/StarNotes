package com.onyx.android.sdk.pay.data;

import java.io.Serializable;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R*\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\b\u0012\u0004\u0012\u00020\u0005`\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\n¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/pay/data/PaymentConfig;", "Ljava/io/Serializable;", "()V", "paymentTypeList", "Ljava/util/ArrayList;", "Lcom/onyx/android/sdk/pay/data/PaymentArgs;", "Lkotlin/collections/ArrayList;", "getPaymentTypeList", "()Ljava/util/ArrayList;", "setPaymentTypeList", "(Ljava/util/ArrayList;)V", "sdk-pay_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class PaymentConfig implements Serializable {

    @NotNull
    private ArrayList<PaymentArgs> paymentTypeList = new ArrayList<>();

    @NotNull
    public final ArrayList<PaymentArgs> getPaymentTypeList() {
        return this.paymentTypeList;
    }

    public final void setPaymentTypeList(@NotNull ArrayList<PaymentArgs> arrayList) {
        Intrinsics.checkNotNullParameter(arrayList, "<set-?>");
        this.paymentTypeList = arrayList;
    }
}
