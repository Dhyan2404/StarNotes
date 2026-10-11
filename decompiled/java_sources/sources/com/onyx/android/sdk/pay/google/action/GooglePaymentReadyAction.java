package com.onyx.android.sdk.pay.google.action;

import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.BillingClientStateListener;
import com.android.billingclient.api.BillingResult;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.pay.action.BasePayAction;
import com.onyx.android.sdk.pay.google.action.GooglePaymentReadyAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableEmitter;
import io.reactivex.rxjava3.core.ObservableOnSubscribe;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\n\u0010\u000bJ\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0002R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/pay/google/action/GooglePaymentReadyAction;", "Lcom/onyx/android/sdk/pay/action/BasePayAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "m", "Lcom/android/billingclient/api/BillingClient;", C6997f.f39671c, "Lcom/android/billingclient/api/BillingClient;", "billingClient", Constants.CONSTRUCTOR_NAME, "(Lcom/android/billingclient/api/BillingClient;)V", "sdk-pay_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class GooglePaymentReadyAction extends BasePayAction<Boolean> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final BillingClient billingClient;

    /* renamed from: com.onyx.android.sdk.pay.google.action.GooglePaymentReadyAction$a */
    /* loaded from: classes8.dex */
    public static final class C7549a<T, R> implements Function {
        public C7549a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull GooglePaymentReadyAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return GooglePaymentReadyAction.this.m34317m();
        }
    }

    public GooglePaymentReadyAction(@NotNull BillingClient billingClient) {
        Intrinsics.checkNotNullParameter(billingClient, "billingClient");
        this.billingClient = billingClient;
    }

    /* renamed from: n */
    public static final void m34316n(GooglePaymentReadyAction this$0, final ObservableEmitter emitter) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(emitter, "emitter");
        this$0.billingClient.startConnection(new BillingClientStateListener() { // from class: com.onyx.android.sdk.pay.google.action.GooglePaymentReadyAction$checkBillingStatusObserver$1$1
            @Override // com.android.billingclient.api.BillingClientStateListener
            public void onBillingServiceDisconnected() {
                RxjavaKt.done(emitter, Boolean.FALSE);
            }

            @Override // com.android.billingclient.api.BillingClientStateListener
            public void onBillingSetupFinished(@NotNull BillingResult p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                if (p0.getResponseCode() == 0) {
                    RxjavaKt.done(emitter, Boolean.TRUE);
                } else {
                    RxjavaKt.done(emitter, Boolean.FALSE);
                }
            }
        });
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Boolean> create() {
        Observable<Boolean> flatMap = Observable.just(this).flatMap(new C7549a());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }

    /* renamed from: m */
    public final Observable<Boolean> m34317m() {
        Observable<Boolean> create = Observable.create(new ObservableOnSubscribe() { // from class: com.sunia.HTREnginev2.o4h
            @Override // io.reactivex.rxjava3.core.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) {
                GooglePaymentReadyAction.m34316n(GooglePaymentReadyAction.this, observableEmitter);
            }
        });
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        return create;
    }
}
