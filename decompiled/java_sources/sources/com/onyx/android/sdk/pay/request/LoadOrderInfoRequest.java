package com.onyx.android.sdk.pay.request;

import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.data.account.bean.DataResponse;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.data.utils.RetrofitExt;
import com.onyx.android.sdk.pay.bean.OrderBean;
import com.onyx.android.sdk.pay.service.OrderService;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u000f\u0012\u0006\u0010\n\u001a\u00020\u0005¢\u0006\u0004\b\u000b\u0010\fJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016R\u0017\u0010\n\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/pay/request/LoadOrderInfoRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "Lcom/onyx/android/sdk/data/account/bean/DataResponse;", "Lcom/onyx/android/sdk/pay/bean/OrderBean;", "execute", "", "a", Constants.STRING_SIG, "getOrderId", "()Ljava/lang/String;", "orderId", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;)V", "sdk-pay_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class LoadOrderInfoRequest extends RxBaseRequest<DataResponse<OrderBean>> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final String orderId;

    public LoadOrderInfoRequest(@NotNull String orderId) {
        Intrinsics.checkNotNullParameter(orderId, "orderId");
        this.orderId = orderId;
    }

    @NotNull
    public final String getOrderId() {
        return this.orderId;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public DataResponse<OrderBean> execute() {
        return RetrofitExt.executeAndGetResponse$default(RetrofitExt.INSTANCE, ((OrderService) ServiceFactory.INSTANCE.getOnyxApiV2Service(OrderService.class)).loadOrderInfo(this.orderId), false, 1, null);
    }
}
