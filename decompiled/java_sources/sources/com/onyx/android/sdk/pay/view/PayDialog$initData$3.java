package com.onyx.android.sdk.pay.view;

import com.onyx.android.sdk.pay.data.PayModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public /* synthetic */ class PayDialog$initData$3 extends FunctionReferenceImpl implements Function1<PayModel, Unit> {
    public PayDialog$initData$3(Object obj) {
        super(1, obj, PayDialog.class, "updateOrderInfo", "updateOrderInfo(Lcom/onyx/android/sdk/pay/data/PayModel;)V", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(PayModel payModel) {
        invoke2(payModel);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(@NotNull PayModel p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        ((PayDialog) this.receiver).m34393k1(p0);
    }
}
