package com.onyx.android.sdk.pay.google.action;

import com.alibaba.fastjson2.JSON;
import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.BillingResult;
import com.android.billingclient.api.Purchase;
import com.android.billingclient.api.PurchasesResponseListener;
import com.android.billingclient.api.QueryPurchasesParams;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.bean.DataResponse;
import com.onyx.android.sdk.data.account.bean.DataResponseKt;
import com.onyx.android.sdk.data.common.cloud.p025v1.ServiceFactory;
import com.onyx.android.sdk.pay.action.BasePayAction;
import com.onyx.android.sdk.pay.data.GooglePurchaseTokenArgs;
import com.onyx.android.sdk.pay.google.action.GoogleCheckAndSubmitPurchaseAction;
import com.onyx.android.sdk.pay.service.OrderService;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableEmitter;
import io.reactivex.rxjava3.core.ObservableOnSubscribe;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0019\u0012\u0006\u0010\u0014\u001a\u00020\u0011\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u0015¢\u0006\u0004\b&\u0010'J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0014\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u0002H\u0002J\u001c\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00000\u00022\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J.\u0010\r\u001a\u00020\u00002\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0016\u0010\f\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\b\u0012\u0004\u0012\u00020\n`\u000bH\u0002J\u0016\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00022\u0006\u0010\u000e\u001a\u00020\nH\u0002R\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0018\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R'\u0010\u001d\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\b\u0012\u0004\u0012\u00020\n`\u000b8\u0006¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\"\u0010%\u001a\u00020\u001e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$¨\u0006("}, m61528d2 = {"Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction;", "Lcom/onyx/android/sdk/pay/action/BasePayAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "Lcom/android/billingclient/api/Purchase;", C4921e.f26528e, "purchaseList", "u", "Ljava/util/ArrayList;", "Lcom/onyx/android/sdk/pay/data/GooglePurchaseTokenArgs;", "Lkotlin/collections/ArrayList;", "retryList", "r", "tokenArgs", "", "s", "Lcom/android/billingclient/api/BillingClient;", C6997f.f39671c, "Lcom/android/billingclient/api/BillingClient;", "billingClient", "", C6998g.f39679a, Constants.STRING_SIG, "priceType", C6999h.f39688c, "Ljava/util/ArrayList;", "getList", "()Ljava/util/ArrayList;", "list", "", "i", "I", "getResponseCode", "()I", "setResponseCode", "(I)V", "responseCode", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/android/billingclient/api/BillingClient;Ljava/lang/String;)V", "sdk-pay_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nGoogleCheckAndSubmitPurchaseAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GoogleCheckAndSubmitPurchaseAction.kt\ncom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,103:1\n1549#2:104\n1620#2,3:105\n*S KotlinDebug\n*F\n+ 1 GoogleCheckAndSubmitPurchaseAction.kt\ncom/onyx/android/sdk/pay/google/action/GoogleCheckAndSubmitPurchaseAction\n*L\n65#1:104\n65#1:105,3\n*E\n"})
/* loaded from: classes8.dex */
public final class GoogleCheckAndSubmitPurchaseAction extends BasePayAction<GoogleCheckAndSubmitPurchaseAction> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final BillingClient billingClient;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final String priceType;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final ArrayList<GooglePurchaseTokenArgs> list;

    /* renamed from: i, reason: from kotlin metadata */
    public int responseCode;

    /* renamed from: com.onyx.android.sdk.pay.google.action.GoogleCheckAndSubmitPurchaseAction$a */
    /* loaded from: classes8.dex */
    public static final class C7539a<T, R> implements Function {
        public C7539a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<Purchase>> apply(@NotNull GoogleCheckAndSubmitPurchaseAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return GoogleCheckAndSubmitPurchaseAction.this.m34284o();
        }
    }

    /* renamed from: com.onyx.android.sdk.pay.google.action.GoogleCheckAndSubmitPurchaseAction$b */
    /* loaded from: classes8.dex */
    public static final class C7540b<T, R> implements Function {
        public C7540b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object apply(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return GoogleCheckAndSubmitPurchaseAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.pay.google.action.GoogleCheckAndSubmitPurchaseAction$c */
    /* loaded from: classes8.dex */
    public static final class C7541c<T, R> implements Function {
        public C7541c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final GoogleCheckAndSubmitPurchaseAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return GoogleCheckAndSubmitPurchaseAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.pay.google.action.GoogleCheckAndSubmitPurchaseAction$d */
    /* loaded from: classes8.dex */
    public static final class C7542d<T, R> implements Function {
        public C7542d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull GooglePurchaseTokenArgs it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return GoogleCheckAndSubmitPurchaseAction.this.m34286s(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.pay.google.action.GoogleCheckAndSubmitPurchaseAction$e */
    /* loaded from: classes8.dex */
    public static final class C7543e<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ List<Purchase> f44165f;

        /* JADX WARN: Multi-variable type inference failed */
        public C7543e(List<? extends Purchase> list) {
            this.f44165f = list;
        }

        @NotNull
        /* renamed from: a */
        public final GoogleCheckAndSubmitPurchaseAction m34292a(boolean z) {
            GoogleCheckAndSubmitPurchaseAction googleCheckAndSubmitPurchaseAction = GoogleCheckAndSubmitPurchaseAction.this;
            return googleCheckAndSubmitPurchaseAction.m34285r(this.f44165f, googleCheckAndSubmitPurchaseAction.getList());
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m34292a(((Boolean) obj).booleanValue());
        }
    }

    public /* synthetic */ GoogleCheckAndSubmitPurchaseAction(BillingClient billingClient, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(billingClient, (i & 2) != 0 ? "inapp" : str);
    }

    /* renamed from: p */
    public static final void m34281p(GoogleCheckAndSubmitPurchaseAction this$0, final ObservableEmitter emitter) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(emitter, "emitter");
        QueryPurchasesParams build = QueryPurchasesParams.newBuilder().setProductType(this$0.priceType).build();
        Intrinsics.checkNotNullExpressionValue(build, "build(...)");
        this$0.billingClient.queryPurchasesAsync(build, new PurchasesResponseListener() { // from class: com.sunia.HTREnginev2.c4h
            @Override // com.android.billingclient.api.PurchasesResponseListener
            public final void onQueryPurchasesResponse(BillingResult billingResult, List list) {
                GoogleCheckAndSubmitPurchaseAction.m34282q(ObservableEmitter.this, billingResult, list);
            }
        });
    }

    /* renamed from: q */
    public static final void m34282q(ObservableEmitter emitter, BillingResult billingResult, List purchaseList) {
        List emptyList;
        Intrinsics.checkNotNullParameter(emitter, "$emitter");
        Intrinsics.checkNotNullParameter(billingResult, "billingResult");
        Intrinsics.checkNotNullParameter(purchaseList, "purchaseList");
        if (billingResult.getResponseCode() == 0) {
            if (!purchaseList.isEmpty()) {
                if (billingResult.getResponseCode() == 0 && (!r0.isEmpty())) {
                    RxjavaKt.done((ObservableEmitter<List>) emitter, purchaseList);
                    return;
                }
                return;
            }
        }
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        RxjavaKt.done((ObservableEmitter<List>) emitter, emptyList);
    }

    /* renamed from: t */
    public static final void m34283t(GooglePurchaseTokenArgs tokenArgs, GoogleCheckAndSubmitPurchaseAction this$0, ObservableEmitter emitter) {
        Intrinsics.checkNotNullParameter(tokenArgs, "$tokenArgs");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(emitter, "emitter");
        DataResponse<Object> body = ((OrderService) ServiceFactory.INSTANCE.getOnyxApiV2Service(OrderService.class)).retryVerifyGooglePurchaseToken(tokenArgs).execute().body();
        boolean z = body.getResultCode() == 106006 || DataResponseKt.isSuccess(body);
        if (z) {
            this$0.list.add(tokenArgs);
        }
        RxjavaKt.done((ObservableEmitter<Boolean>) emitter, Boolean.valueOf(z));
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<GoogleCheckAndSubmitPurchaseAction> create() {
        Observable flatMap = Observable.just(this).flatMap(new C7539a());
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        Observable map = RxjavaKt.flatMapIf(flatMap, new Function1<List<? extends Purchase>, Boolean>() { // from class: com.onyx.android.sdk.pay.google.action.GoogleCheckAndSubmitPurchaseAction$create$2
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull List<? extends Purchase> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!it2.isEmpty());
            }
        }, new Function1<List<? extends Purchase>, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.pay.google.action.GoogleCheckAndSubmitPurchaseAction$create$3
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull List<? extends Purchase> it2) {
                Observable<? extends Object> m34287u;
                Intrinsics.checkNotNullParameter(it2, "it");
                m34287u = GoogleCheckAndSubmitPurchaseAction.this.m34287u(it2);
                return m34287u;
            }
        }).onErrorReturn(new C7540b()).map(new C7541c());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final ArrayList<GooglePurchaseTokenArgs> getList() {
        return this.list;
    }

    public final int getResponseCode() {
        return this.responseCode;
    }

    /* renamed from: o */
    public final Observable<List<Purchase>> m34284o() {
        Observable<List<Purchase>> create = Observable.create(new ObservableOnSubscribe() { // from class: com.sunia.HTREnginev2.a4h
            @Override // io.reactivex.rxjava3.core.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) {
                GoogleCheckAndSubmitPurchaseAction.m34281p(GoogleCheckAndSubmitPurchaseAction.this, observableEmitter);
            }
        });
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        return create;
    }

    /* renamed from: r */
    public final GoogleCheckAndSubmitPurchaseAction m34285r(List<? extends Purchase> purchaseList, ArrayList<GooglePurchaseTokenArgs> retryList) {
        if (purchaseList.size() != retryList.size()) {
            this.responseCode = 2005;
        }
        return this;
    }

    /* renamed from: s */
    public final Observable<Boolean> m34286s(final GooglePurchaseTokenArgs tokenArgs) {
        Observable<Boolean> create = Observable.create(new ObservableOnSubscribe() { // from class: com.sunia.HTREnginev2.b4h
            @Override // io.reactivex.rxjava3.core.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) {
                GoogleCheckAndSubmitPurchaseAction.m34283t(GooglePurchaseTokenArgs.this, this, observableEmitter);
            }
        });
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        return create;
    }

    public final void setResponseCode(int i) {
        this.responseCode = i;
    }

    /* renamed from: u */
    public final Observable<GoogleCheckAndSubmitPurchaseAction> m34287u(List<? extends Purchase> purchaseList) {
        int collectionSizeOrDefault;
        List<? extends Purchase> list = purchaseList;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (Purchase purchase : list) {
            String string = JSON.parseObject(purchase.getOriginalJson()).getString(com.onyx.android.sdk.pay.constants.Constants.KEY_GOOGLE_PRODUCT_ID);
            if (string == null) {
                string = "";
            } else {
                Intrinsics.checkNotNull(string);
            }
            String purchaseToken = purchase.getPurchaseToken();
            Intrinsics.checkNotNullExpressionValue(purchaseToken, "getPurchaseToken(...)");
            arrayList.add(new GooglePurchaseTokenArgs(purchaseToken, string));
        }
        Observable<GoogleCheckAndSubmitPurchaseAction> map = Observable.fromIterable(arrayList).observeOn(getCloudScheduler()).concatMap(new C7542d()).takeLast(1).map(new C7543e(purchaseList));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public GoogleCheckAndSubmitPurchaseAction(@NotNull BillingClient billingClient, @NotNull String priceType) {
        Intrinsics.checkNotNullParameter(billingClient, "billingClient");
        Intrinsics.checkNotNullParameter(priceType, "priceType");
        this.billingClient = billingClient;
        this.priceType = priceType;
        this.list = new ArrayList<>();
        this.responseCode = -1;
    }
}
