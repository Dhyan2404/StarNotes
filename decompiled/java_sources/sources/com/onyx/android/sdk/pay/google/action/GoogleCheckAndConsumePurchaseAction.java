package com.onyx.android.sdk.pay.google.action;

import android.app.Activity;
import androidx.appcompat.widget.ActivityChooserModel;
import com.android.billingclient.api.BillingClient;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.account.event.PurchaseUpdateEvent;
import com.onyx.android.sdk.pay.action.BasePayAction;
import com.onyx.android.sdk.pay.data.GooglePurchaseTokenArgs;
import com.onyx.android.sdk.pay.google.action.GoogleCheckAndConsumePurchaseAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0012\u0010\u0013J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u001a\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u001a\u0010\t\u001a\u0006\u0012\u0002\b\u00030\u00022\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002R\u001b\u0010\u000f\u001a\u00020\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/pay/google/action/GoogleCheckAndConsumePurchaseAction;", "Lcom/onyx/android/sdk/pay/action/BasePayAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "Lcom/onyx/android/sdk/pay/data/GooglePurchaseTokenArgs;", "purchaseList", "p", "list", "m", "Lcom/android/billingclient/api/BillingClient;", C6997f.f39671c, "Lkotlin/Lazy;", C4921e.f26528e, "()Lcom/android/billingclient/api/BillingClient;", "billingClient", "Landroid/app/Activity;", ActivityChooserModel.f1429r, Constants.CONSTRUCTOR_NAME, "(Landroid/app/Activity;)V", "sdk-pay_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nGoogleCheckAndConsumePurchaseAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GoogleCheckAndConsumePurchaseAction.kt\ncom/onyx/android/sdk/pay/google/action/GoogleCheckAndConsumePurchaseAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,60:1\n1549#2:61\n1620#2,3:62\n*S KotlinDebug\n*F\n+ 1 GoogleCheckAndConsumePurchaseAction.kt\ncom/onyx/android/sdk/pay/google/action/GoogleCheckAndConsumePurchaseAction\n*L\n53#1:61\n53#1:62,3\n*E\n"})
/* loaded from: classes8.dex */
public final class GoogleCheckAndConsumePurchaseAction extends BasePayAction<GoogleCheckAndConsumePurchaseAction> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Lazy billingClient;

    /* renamed from: com.onyx.android.sdk.pay.google.action.GoogleCheckAndConsumePurchaseAction$a */
    /* loaded from: classes8.dex */
    public static final class C7531a<T> implements Predicate {

        /* renamed from: e */
        public static final C7531a<T> f44147e = new C7531a<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull GoogleCheckAndConsumePurchaseAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return AccountDataBundle.INSTANCE.isAlreadyLogin();
        }
    }

    /* renamed from: com.onyx.android.sdk.pay.google.action.GoogleCheckAndConsumePurchaseAction$b */
    /* loaded from: classes8.dex */
    public static final class C7532b<T, R> implements Function {
        public C7532b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Boolean> apply(@NotNull GoogleCheckAndConsumePurchaseAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new GooglePaymentReadyAction(GoogleCheckAndConsumePurchaseAction.this.m34268o()).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.pay.google.action.GoogleCheckAndConsumePurchaseAction$c */
    /* loaded from: classes8.dex */
    public static final class C7533c<T> implements Predicate {

        /* renamed from: e */
        public static final C7533c<T> f44149e = new C7533c<>();

        /* renamed from: a */
        public final boolean m34273a(boolean z) {
            return z;
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        public /* bridge */ /* synthetic */ boolean test(Object obj) {
            return m34273a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.android.sdk.pay.google.action.GoogleCheckAndConsumePurchaseAction$d */
    /* loaded from: classes8.dex */
    public static final class C7534d<T, R> implements Function {
        public C7534d() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends GoogleCheckAndSubmitPurchaseAction> m34274a(boolean z) {
            return new GoogleCheckAndSubmitPurchaseAction(GoogleCheckAndConsumePurchaseAction.this.m34268o(), null, 2, 0 == true ? 1 : 0).build();
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m34274a(((Boolean) obj).booleanValue());
        }
    }

    /* renamed from: com.onyx.android.sdk.pay.google.action.GoogleCheckAndConsumePurchaseAction$e */
    /* loaded from: classes8.dex */
    public static final class C7535e<T, R> implements Function {
        public C7535e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull GoogleCheckAndSubmitPurchaseAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return GoogleCheckAndConsumePurchaseAction.this.m34269p(it2.getList());
        }
    }

    /* renamed from: com.onyx.android.sdk.pay.google.action.GoogleCheckAndConsumePurchaseAction$f */
    /* loaded from: classes8.dex */
    public static final class C7536f<T, R> implements Function {
        public C7536f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final GoogleCheckAndConsumePurchaseAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return GoogleCheckAndConsumePurchaseAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.pay.google.action.GoogleCheckAndConsumePurchaseAction$g */
    /* loaded from: classes8.dex */
    public static final class C7537g<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ List<GooglePurchaseTokenArgs> f44154f;

        public C7537g(List<GooglePurchaseTokenArgs> list) {
            this.f44154f = list;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull GoogleCheckAndConsumePurchaseAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return GoogleCheckAndConsumePurchaseAction.this.m34267m(this.f44154f);
        }
    }

    /* renamed from: com.onyx.android.sdk.pay.google.action.GoogleCheckAndConsumePurchaseAction$h */
    /* loaded from: classes8.dex */
    public static final class C7538h<T> implements Consumer {

        /* renamed from: e */
        public static final C7538h<T> f44155e = new C7538h<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            AccountDataBundle.INSTANCE.postEvent(PurchaseUpdateEvent.INSTANCE);
        }
    }

    public GoogleCheckAndConsumePurchaseAction(@NotNull Activity activity) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(activity, "activity");
        lazy = LazyKt__LazyJVMKt.lazy(new GoogleCheckAndConsumePurchaseAction$billingClient$2(activity));
        this.billingClient = lazy;
    }

    /* renamed from: n */
    public static final void m34266n(GoogleCheckAndConsumePurchaseAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m34268o().endConnection();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<GoogleCheckAndConsumePurchaseAction> create() {
        Observable<GoogleCheckAndConsumePurchaseAction> doFinally = Observable.just(this).filter(C7531a.f44147e).flatMap(new C7532b()).filter(C7533c.f44149e).flatMap(new C7534d()).observeOn(getCloudScheduler()).flatMap(new C7535e()).map(new C7536f()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.z3h
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                GoogleCheckAndConsumePurchaseAction.m34266n(GoogleCheckAndConsumePurchaseAction.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }

    /* renamed from: m */
    public final Observable<?> m34267m(List<GooglePurchaseTokenArgs> list) {
        int collectionSizeOrDefault;
        List<GooglePurchaseTokenArgs> list2 = list;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (GooglePurchaseTokenArgs googlePurchaseTokenArgs : list2) {
            arrayList.add(new GooglePurchaseTokenArgs(googlePurchaseTokenArgs.getPurchaseToken(), googlePurchaseTokenArgs.getProductId()));
        }
        return new GoogleConsumeOwnedPurchaseAction(m34268o(), arrayList).build();
    }

    /* renamed from: o */
    public final BillingClient m34268o() {
        return (BillingClient) this.billingClient.getValue();
    }

    /* renamed from: p */
    public final Observable<?> m34269p(List<GooglePurchaseTokenArgs> purchaseList) {
        List<GooglePurchaseTokenArgs> list = purchaseList;
        if (list == null || list.isEmpty()) {
            Observable<?> empty = Observable.empty();
            Intrinsics.checkNotNullExpressionValue(empty, "empty(...)");
            return empty;
        }
        Observable<?> doOnNext = Observable.just(this).flatMap(new C7537g(purchaseList)).doOnNext(C7538h.f44155e);
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }
}
