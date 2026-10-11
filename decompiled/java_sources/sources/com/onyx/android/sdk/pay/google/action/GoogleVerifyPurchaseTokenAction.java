package com.onyx.android.sdk.pay.google.action;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.bean.DataResponse;
import com.onyx.android.sdk.data.account.bean.DataResponseKt;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.pay.action.BasePayAction;
import com.onyx.android.sdk.pay.bean.GoogleOrderArgs;
import com.onyx.android.sdk.pay.service.OrderService;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u000f\u001a\u00020\n\u0012\u0006\u0010\u0011\u001a\u00020\n¢\u0006\u0004\b\u0012\u0010\u0013J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u0010\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005H\u0002J\u001a\u0010\t\u001a\u00020\u00022\u0010\u0010\b\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0018\u00010\u0005H\u0002R\u0017\u0010\u000f\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000eR\u0014\u0010\u0011\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\f¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/pay/google/action/GoogleVerifyPurchaseTokenAction;", "Lcom/onyx/android/sdk/pay/action/BasePayAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/data/account/bean/DataResponse;", "", "m", "dataResponse", "l", "", C6997f.f39671c, Constants.STRING_SIG, "getOrderId", "()Ljava/lang/String;", "orderId", C6998g.f39679a, "orderToken", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/lang/String;)V", "sdk-pay_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class GoogleVerifyPurchaseTokenAction extends BasePayAction<Integer> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final String orderId;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final String orderToken;

    /* renamed from: com.onyx.android.sdk.pay.google.action.GoogleVerifyPurchaseTokenAction$a */
    /* loaded from: classes8.dex */
    public static final class C7550a<T, R> implements Function {
        public C7550a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final DataResponse<Object> apply(@NotNull GoogleVerifyPurchaseTokenAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return GoogleVerifyPurchaseTokenAction.this.m34320m();
        }
    }

    /* renamed from: com.onyx.android.sdk.pay.google.action.GoogleVerifyPurchaseTokenAction$b */
    /* loaded from: classes8.dex */
    public static final class C7551b<T, R> implements Function {
        public C7551b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Integer apply(@NotNull DataResponse<Object> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Integer.valueOf(GoogleVerifyPurchaseTokenAction.this.m34319l(it2));
        }
    }

    /* renamed from: com.onyx.android.sdk.pay.google.action.GoogleVerifyPurchaseTokenAction$c */
    /* loaded from: classes8.dex */
    public static final class C7552c<T, R> implements Function {
        public C7552c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Integer apply(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Integer.valueOf(GoogleVerifyPurchaseTokenAction.this.m34319l(null));
        }
    }

    public GoogleVerifyPurchaseTokenAction(@NotNull String orderId, @NotNull String orderToken) {
        Intrinsics.checkNotNullParameter(orderId, "orderId");
        Intrinsics.checkNotNullParameter(orderToken, "orderToken");
        this.orderId = orderId;
        this.orderToken = orderToken;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Integer> create() {
        Observable<Integer> onErrorReturn = Observable.just(this).observeOn(getCloudScheduler()).map(new C7550a()).map(new C7551b()).onErrorReturn(new C7552c());
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "onErrorReturn(...)");
        return onErrorReturn;
    }

    @NotNull
    public final String getOrderId() {
        return this.orderId;
    }

    /* renamed from: l */
    public final int m34319l(DataResponse<Object> dataResponse) {
        if (dataResponse == null) {
            return 2003;
        }
        return (dataResponse.getResultCode() == 106006 || DataResponseKt.isSuccess(dataResponse)) ? -1 : 2003;
    }

    /* renamed from: m */
    public final DataResponse<Object> m34320m() {
        DataResponse<Object> body = ((OrderService) ServiceFactory.INSTANCE.getOnyxApiV2Service(OrderService.class)).verifyGooglePurchaseToken(this.orderId, new GoogleOrderArgs(this.orderToken)).execute().body();
        Intrinsics.checkNotNullExpressionValue(body, "body(...)");
        return body;
    }
}
