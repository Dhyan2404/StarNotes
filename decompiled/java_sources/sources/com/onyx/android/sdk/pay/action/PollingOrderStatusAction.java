package com.onyx.android.sdk.pay.action;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.pay.action.PollingOrderStatusAction;
import com.onyx.android.sdk.pay.bean.OrderBean;
import com.onyx.android.sdk.pay.request.LoadOrderInfoRequest;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.BooleanSupplier;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.subjects.ReplaySubject;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000  2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001 B\u0019\u0012\u0006\u0010\f\u001a\u00020\u0007\u0012\b\b\u0002\u0010\u0012\u001a\u00020\r¢\u0006\u0004\b\u001e\u0010\u001fJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\n\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0002R\u0017\u0010\f\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u0017\u0010\u0012\u001a\u00020\r8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R$\u0010\u0019\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001c¨\u0006!"}, m61528d2 = {"Lcom/onyx/android/sdk/pay/action/PollingOrderStatusAction;", "Lcom/onyx/android/sdk/pay/action/BasePayAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "q", "Lcom/onyx/android/sdk/pay/bean/OrderBean;", "p", "", C6997f.f39671c, Constants.STRING_SIG, "getOrderId", "()Ljava/lang/String;", "orderId", "", C6998g.f39679a, "I", "getPollingCount", "()I", "pollingCount", C6999h.f39688c, "Lcom/onyx/android/sdk/pay/bean/OrderBean;", "getOrder", "()Lcom/onyx/android/sdk/pay/bean/OrderBean;", "setOrder", "(Lcom/onyx/android/sdk/pay/bean/OrderBean;)V", com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_ORDER, "Lio/reactivex/rxjava3/disposables/Disposable;", "i", "Lio/reactivex/rxjava3/disposables/Disposable;", "checkDisposable", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;I)V", "Companion", "sdk-pay_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class PollingOrderStatusAction extends BasePayAction<PollingOrderStatusAction> {
    public static final int POLLING_COUNT = 3;
    public static final long POLLING_INTERVAL = 1500;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final String orderId;

    /* renamed from: g, reason: from kotlin metadata */
    public final int pollingCount;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public OrderBean order;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public Disposable checkDisposable;

    /* renamed from: com.onyx.android.sdk.pay.action.PollingOrderStatusAction$a */
    /* loaded from: classes8.dex */
    public static final class C7524a<T, R> implements Function {
        public C7524a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends PollingOrderStatusAction> apply(@NotNull PollingOrderStatusAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return PollingOrderStatusAction.this.m34256q();
        }
    }

    /* renamed from: com.onyx.android.sdk.pay.action.PollingOrderStatusAction$b */
    /* loaded from: classes8.dex */
    public static final class C7525b<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ Ref.IntRef f44067f;

        public C7525b(Ref.IntRef intRef) {
            this.f44067f = intRef;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull PollingOrderStatusAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            OrderBean m34255p = PollingOrderStatusAction.this.m34255p();
            if (m34255p == null || m34255p.isUnpaid()) {
                Ref.IntRef intRef = this.f44067f;
                intRef.element--;
            } else {
                PollingOrderStatusAction.this.setOrder(m34255p);
                this.f44067f.element = 0;
            }
        }
    }

    public /* synthetic */ PollingOrderStatusAction(String str, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? 3 : i);
    }

    /* renamed from: o */
    public static final void m34252o(PollingOrderStatusAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Disposable disposable = this$0.checkDisposable;
        if (disposable != null) {
            disposable.dispose();
        }
    }

    /* renamed from: r */
    public static final boolean m34253r(Ref.IntRef count) {
        Intrinsics.checkNotNullParameter(count, "$count");
        return count.element <= 0;
    }

    /* renamed from: s */
    public static final void m34254s(ReplaySubject publisher, PollingOrderStatusAction this$0) {
        Intrinsics.checkNotNullParameter(publisher, "$publisher");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        RxjavaKt.done(publisher, this$0);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<PollingOrderStatusAction> create() {
        Observable<PollingOrderStatusAction> doFinally = Observable.just(this).observeOn(getCloudScheduler()).flatMap(new C7524a()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.a5l
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                PollingOrderStatusAction.m34252o(PollingOrderStatusAction.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }

    @Nullable
    public final OrderBean getOrder() {
        return this.order;
    }

    @NotNull
    public final String getOrderId() {
        return this.orderId;
    }

    public final int getPollingCount() {
        return this.pollingCount;
    }

    /* renamed from: p */
    public final OrderBean m34255p() {
        try {
            return new LoadOrderInfoRequest(this.orderId).execute().getData();
        } catch (Exception unused) {
            return null;
        }
    }

    /* renamed from: q */
    public final Observable<PollingOrderStatusAction> m34256q() {
        final ReplaySubject create = ReplaySubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        final Ref.IntRef intRef = new Ref.IntRef();
        intRef.element = this.pollingCount;
        Observable doOnNext = Observable.just(this).observeOn(getCloudScheduler()).doOnNext(new C7525b(intRef));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        this.checkDisposable = RxjavaKt.flatMapIf(doOnNext, new Function1<PollingOrderStatusAction, Boolean>() { // from class: com.onyx.android.sdk.pay.action.PollingOrderStatusAction$pollingOrderStatus$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull PollingOrderStatusAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(Ref.IntRef.this.element > 0);
            }
        }, new Function1<PollingOrderStatusAction, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.pay.action.PollingOrderStatusAction$pollingOrderStatus$3
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull PollingOrderStatusAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                Observable<? extends Object> delay = Observable.just(it2).delay(1500L, TimeUnit.MILLISECONDS);
                Intrinsics.checkNotNullExpressionValue(delay, "delay(...)");
                return delay;
            }
        }).repeatUntil(new BooleanSupplier() { // from class: com.sunia.HTREnginev2.b5l
            @Override // io.reactivex.rxjava3.functions.BooleanSupplier
            public final boolean getAsBoolean() {
                boolean m34253r;
                m34253r = PollingOrderStatusAction.m34253r(Ref.IntRef.this);
                return m34253r;
            }
        }).doFinally(new Action() { // from class: com.sunia.HTREnginev2.c5l
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                PollingOrderStatusAction.m34254s(ReplaySubject.this, this);
            }
        }).subscribe();
        return create;
    }

    public final void setOrder(@Nullable OrderBean orderBean) {
        this.order = orderBean;
    }

    public PollingOrderStatusAction(@NotNull String orderId, int i) {
        Intrinsics.checkNotNullParameter(orderId, "orderId");
        this.orderId = orderId;
        this.pollingCount = i;
    }
}
