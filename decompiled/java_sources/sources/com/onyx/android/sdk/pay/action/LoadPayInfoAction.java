package com.onyx.android.sdk.pay.action;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.bean.DataResponse;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.data.utils.RetrofitExt;
import com.onyx.android.sdk.pay.bean.PayBean;
import com.onyx.android.sdk.pay.data.PayArgs;
import com.onyx.android.sdk.pay.service.OrderService;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0017\u0012\u0006\u0010\f\u001a\u00020\u0007\u0012\u0006\u0010\u0012\u001a\u00020\r¢\u0006\u0004\b\u0013\u0010\u0014J\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002R\u0017\u0010\f\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u0017\u0010\u0012\u001a\u00020\r8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/pay/action/LoadPayInfoAction;", "Lcom/onyx/android/sdk/pay/action/BasePayAction;", "Lcom/onyx/android/sdk/data/account/bean/DataResponse;", "Lcom/onyx/android/sdk/pay/bean/PayBean;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "l", "", C6997f.f39671c, Constants.STRING_SIG, "getOrderId", "()Ljava/lang/String;", "orderId", "Lcom/onyx/android/sdk/pay/data/PayArgs;", C6998g.f39679a, "Lcom/onyx/android/sdk/pay/data/PayArgs;", "getArgs", "()Lcom/onyx/android/sdk/pay/data/PayArgs;", "args", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Lcom/onyx/android/sdk/pay/data/PayArgs;)V", "sdk-pay_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class LoadPayInfoAction extends BasePayAction<DataResponse<PayBean>> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final String orderId;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final PayArgs args;

    /* renamed from: com.onyx.android.sdk.pay.action.LoadPayInfoAction$a */
    /* loaded from: classes8.dex */
    public static final class C7523a<T, R> implements Function {
        public C7523a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final DataResponse<PayBean> apply(@NotNull LoadPayInfoAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadPayInfoAction.this.m34247l();
        }
    }

    public LoadPayInfoAction(@NotNull String orderId, @NotNull PayArgs args) {
        Intrinsics.checkNotNullParameter(orderId, "orderId");
        Intrinsics.checkNotNullParameter(args, "args");
        this.orderId = orderId;
        this.args = args;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<DataResponse<PayBean>> create() {
        Observable<DataResponse<PayBean>> map = Observable.just(this).observeOn(getCloudScheduler()).map(new C7523a());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final PayArgs getArgs() {
        return this.args;
    }

    @NotNull
    public final String getOrderId() {
        return this.orderId;
    }

    /* renamed from: l */
    public final DataResponse<PayBean> m34247l() {
        return RetrofitExt.executeAndGetResponse$default(RetrofitExt.INSTANCE, ((OrderService) ServiceFactory.INSTANCE.getOnyxApiV2Service(OrderService.class)).loadPayInfo(this.orderId, this.args), false, 1, null);
    }
}
