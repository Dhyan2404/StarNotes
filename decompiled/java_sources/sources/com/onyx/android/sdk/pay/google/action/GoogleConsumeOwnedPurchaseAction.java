package com.onyx.android.sdk.pay.google.action;

import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.ConsumeParams;
import com.android.billingclient.api.ConsumeResponseListener;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.pay.action.BasePayAction;
import com.onyx.android.sdk.pay.data.GoogleConsumePurchaseListArgs;
import com.onyx.android.sdk.pay.data.GooglePurchaseTokenArgs;
import com.onyx.android.sdk.pay.google.action.GoogleConsumeOwnedPurchaseAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableEmitter;
import io.reactivex.rxjava3.core.ObservableOnSubscribe;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001d\u0012\u0006\u0010\f\u001a\u00020\t\u0012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00060\r¢\u0006\u0004\b\u0016\u0010\u0017J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00060\u00032\u0006\u0010\u0007\u001a\u00020\u0006H\u0002R\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u001c\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00060\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR$\u0010\u0015\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0011j\b\u0012\u0004\u0012\u00020\u0006`\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/pay/google/action/GoogleConsumeOwnedPurchaseAction;", "Lcom/onyx/android/sdk/pay/action/BasePayAction;", "", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "q", "Lcom/onyx/android/sdk/pay/data/GooglePurchaseTokenArgs;", "googlePurchaseTokenArgs", GoogleApiAvailabilityLight.f29016b, "Lcom/android/billingclient/api/BillingClient;", C6997f.f39671c, "Lcom/android/billingclient/api/BillingClient;", "billingClient", "", C6998g.f39679a, "Ljava/util/List;", "tokenList", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", C6999h.f39688c, "Ljava/util/ArrayList;", "consumeTokenList", Constants.CONSTRUCTOR_NAME, "(Lcom/android/billingclient/api/BillingClient;Ljava/util/List;)V", "sdk-pay_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class GoogleConsumeOwnedPurchaseAction extends BasePayAction<Integer> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final BillingClient billingClient;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public List<GooglePurchaseTokenArgs> tokenList;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final ArrayList<GooglePurchaseTokenArgs> consumeTokenList;

    /* renamed from: com.onyx.android.sdk.pay.google.action.GoogleConsumeOwnedPurchaseAction$a */
    /* loaded from: classes8.dex */
    public static final class C7544a<T, R> implements Function {
        public C7544a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends GooglePurchaseTokenArgs> apply(@NotNull GooglePurchaseTokenArgs it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return GoogleConsumeOwnedPurchaseAction.this.m34297n(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.pay.google.action.GoogleConsumeOwnedPurchaseAction$b */
    /* loaded from: classes8.dex */
    public static final class C7545b<T, R> implements Function {
        public C7545b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends GoogleConsumePurchaseTokenAction> apply(@NotNull GooglePurchaseTokenArgs it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new GoogleConsumePurchaseTokenAction(new GoogleConsumePurchaseListArgs(GoogleConsumeOwnedPurchaseAction.this.consumeTokenList)).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.pay.google.action.GoogleConsumeOwnedPurchaseAction$c */
    /* loaded from: classes8.dex */
    public static final class C7546c<T, R> implements Function {
        public C7546c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Integer apply(@NotNull GoogleConsumePurchaseTokenAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Integer.valueOf(GoogleConsumeOwnedPurchaseAction.this.m34298q());
        }
    }

    public GoogleConsumeOwnedPurchaseAction(@NotNull BillingClient billingClient, @NotNull List<GooglePurchaseTokenArgs> tokenList) {
        Intrinsics.checkNotNullParameter(billingClient, "billingClient");
        Intrinsics.checkNotNullParameter(tokenList, "tokenList");
        this.billingClient = billingClient;
        this.tokenList = tokenList;
        this.consumeTokenList = new ArrayList<>();
    }

    /* renamed from: o */
    public static final void m34295o(final GooglePurchaseTokenArgs googlePurchaseTokenArgs, final GoogleConsumeOwnedPurchaseAction this$0, final ObservableEmitter emitter) {
        Intrinsics.checkNotNullParameter(googlePurchaseTokenArgs, "$googlePurchaseTokenArgs");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(emitter, "emitter");
        ConsumeParams build = ConsumeParams.newBuilder().setPurchaseToken(googlePurchaseTokenArgs.getPurchaseToken()).build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        this$0.billingClient.consumeAsync(build, new ConsumeResponseListener() { // from class: com.sunia.HTREnginev2.e4h
            @Override // com.android.billingclient.api.ConsumeResponseListener
            public final void onConsumeResponse(BillingResult billingResult, String str) {
                GoogleConsumeOwnedPurchaseAction.m34296p(GoogleConsumeOwnedPurchaseAction.this, googlePurchaseTokenArgs, emitter, billingResult, str);
            }
        });
    }

    /* renamed from: p */
    public static final void m34296p(GoogleConsumeOwnedPurchaseAction this$0, GooglePurchaseTokenArgs googlePurchaseTokenArgs, ObservableEmitter emitter, BillingResult result, String str) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(googlePurchaseTokenArgs, "$googlePurchaseTokenArgs");
        Intrinsics.checkNotNullParameter(emitter, "$emitter");
        Intrinsics.checkNotNullParameter(result, "result");
        Intrinsics.checkNotNullParameter(str, "str");
        if (result.getResponseCode() == 0) {
            this$0.consumeTokenList.add(googlePurchaseTokenArgs);
        } else {
            googlePurchaseTokenArgs = new GooglePurchaseTokenArgs("", "");
        }
        RxjavaKt.done((ObservableEmitter<GooglePurchaseTokenArgs>) emitter, googlePurchaseTokenArgs);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<Integer> create() {
        Observable<Integer> map = Observable.fromIterable(this.tokenList).concatMap(new C7544a()).takeLast(1).flatMap(new C7545b()).map(new C7546c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: n */
    public final Observable<GooglePurchaseTokenArgs> m34297n(final GooglePurchaseTokenArgs googlePurchaseTokenArgs) {
        Observable<GooglePurchaseTokenArgs> create = Observable.create(new ObservableOnSubscribe() { // from class: com.sunia.HTREnginev2.d4h
            @Override // io.reactivex.rxjava3.core.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) {
                GoogleConsumeOwnedPurchaseAction.m34295o(GooglePurchaseTokenArgs.this, this, observableEmitter);
            }
        });
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        return create;
    }

    /* renamed from: q */
    public final int m34298q() {
        return this.consumeTokenList.size() == this.tokenList.size() ? -1 : 2005;
    }
}
