package com.onyx.android.sdk.pay.action;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.bean.DataResponse;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.data.utils.RetrofitExt;
import com.onyx.android.sdk.pay.bean.OrderBean;
import com.onyx.android.sdk.pay.service.OrderService;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u000f\u0012\u0006\u0010\f\u001a\u00020\u0007¢\u0006\u0004\b\r\u0010\u000eJ\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002R\u0017\u0010\f\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/pay/action/RecreateOrderAction;", "Lcom/onyx/android/sdk/pay/action/BasePayAction;", "Lcom/onyx/android/sdk/data/account/bean/DataResponse;", "Lcom/onyx/android/sdk/pay/bean/OrderBean;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "", C6997f.f39671c, Constants.STRING_SIG, "getOrderId", "()Ljava/lang/String;", "orderId", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;)V", "sdk-pay_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class RecreateOrderAction extends BasePayAction<DataResponse<OrderBean>> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final String orderId;

    /* renamed from: com.onyx.android.sdk.pay.action.RecreateOrderAction$a */
    /* loaded from: classes8.dex */
    public static final class C7526a<T, R> implements Function {
        public C7526a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final DataResponse<OrderBean> apply(@NotNull RecreateOrderAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RecreateOrderAction.this.m34259l();
        }
    }

    public RecreateOrderAction(@NotNull String orderId) {
        Intrinsics.checkNotNullParameter(orderId, "orderId");
        this.orderId = orderId;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<DataResponse<OrderBean>> create() {
        Observable<DataResponse<OrderBean>> map = Observable.just(this).observeOn(getCloudScheduler()).map(new C7526a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final String getOrderId() {
        return this.orderId;
    }

    /* renamed from: l */
    public final DataResponse<OrderBean> m34259l() {
        return RetrofitExt.executeAndGetResponse$default(RetrofitExt.INSTANCE, ((OrderService) ServiceFactory.INSTANCE.getOnyxApiV2Service(OrderService.class)).recreateOrder(this.orderId), false, 1, null);
    }
}
