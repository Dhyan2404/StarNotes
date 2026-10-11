package com.onyx.android.sdk.pay.google.action;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.data.utils.RetrofitExt;
import com.onyx.android.sdk.pay.action.BasePayAction;
import com.onyx.android.sdk.pay.data.GoogleConsumePurchaseListArgs;
import com.onyx.android.sdk.pay.service.OrderService;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\n\u0010\u000bJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0002R\u0016\u0010\t\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/pay/google/action/GoogleConsumePurchaseTokenAction;", "Lcom/onyx/android/sdk/pay/action/BasePayAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "l", "Lcom/onyx/android/sdk/pay/data/GoogleConsumePurchaseListArgs;", C6997f.f39671c, "Lcom/onyx/android/sdk/pay/data/GoogleConsumePurchaseListArgs;", "consumeTokenList", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/pay/data/GoogleConsumePurchaseListArgs;)V", "sdk-pay_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class GoogleConsumePurchaseTokenAction extends BasePayAction<GoogleConsumePurchaseTokenAction> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public GoogleConsumePurchaseListArgs consumeTokenList;

    /* renamed from: com.onyx.android.sdk.pay.google.action.GoogleConsumePurchaseTokenAction$a */
    /* loaded from: classes8.dex */
    public static final class C7547a<T> implements Consumer {
        public C7547a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull GoogleConsumePurchaseTokenAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            GoogleConsumePurchaseTokenAction.this.m34302l();
        }
    }

    public GoogleConsumePurchaseTokenAction(@NotNull GoogleConsumePurchaseListArgs consumeTokenList) {
        Intrinsics.checkNotNullParameter(consumeTokenList, "consumeTokenList");
        this.consumeTokenList = consumeTokenList;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<GoogleConsumePurchaseTokenAction> create() {
        Observable<GoogleConsumePurchaseTokenAction> doOnNext = Observable.just(this).observeOn(getCloudScheduler()).doOnNext(new C7547a());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: l */
    public final void m34302l() {
        RetrofitExt.executeAndGetResponse$default(RetrofitExt.INSTANCE, ((OrderService) ServiceFactory.INSTANCE.getOnyxApiV2Service(OrderService.class)).consumeGooglePurchaseToken(this.consumeTokenList), false, 1, null);
    }
}
