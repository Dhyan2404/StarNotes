package com.onyx.android.sdk.pay.view;

import com.onyx.android.sdk.pay.data.PayStatusType;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public /* synthetic */ class PayDialog$initData$2 extends FunctionReferenceImpl implements Function1<PayStatusType, Unit> {
    public PayDialog$initData$2(Object obj) {
        super(1, obj, PayDialog.class, "updatePayStatusType", "updatePayStatusType(Lcom/onyx/android/sdk/pay/data/PayStatusType;)V", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(PayStatusType payStatusType) {
        invoke2(payStatusType);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(@NotNull PayStatusType p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        ((PayDialog) this.receiver).m34394l1(p0);
    }
}
