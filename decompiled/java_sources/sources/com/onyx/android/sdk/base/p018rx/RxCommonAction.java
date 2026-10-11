package com.onyx.android.sdk.base.p018rx;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0016\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003B\u001d\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\f\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\n¢\u0006\u0004\b\u000e\u0010\u000fJ\u000e\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004H\u0016R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u001a\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/base/rx/RxCommonAction;", "", "T", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lio/reactivex/rxjava3/core/Scheduler;", "e", "Lio/reactivex/rxjava3/core/Scheduler;", "scheduler", "Lkotlin/Function0;", C6997f.f39671c, "Lkotlin/jvm/functions/Function0;", "action", Constants.CONSTRUCTOR_NAME, "(Lio/reactivex/rxjava3/core/Scheduler;Lkotlin/jvm/functions/Function0;)V", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public class RxCommonAction<T> extends RxBaseAction<T> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Scheduler scheduler;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Function0<T> action;

    /* renamed from: com.onyx.android.sdk.base.rx.RxCommonAction$a */
    /* loaded from: classes7.dex */
    public static final class C7135a<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ RxCommonAction<T> f40796e;

        public C7135a(RxCommonAction<T> rxCommonAction) {
            this.f40796e = rxCommonAction;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final T apply(@NotNull RxCommonAction<T> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return (T) this.f40796e.action.invoke();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public RxCommonAction(@NotNull Scheduler scheduler, @NotNull Function0<? extends T> action) {
        Intrinsics.checkNotNullParameter(scheduler, "scheduler");
        Intrinsics.checkNotNullParameter(action, "action");
        this.scheduler = scheduler;
        this.action = action;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<T> create() {
        Observable<T> observable = (Observable<T>) Observable.just(this).observeOn(this.scheduler).map(new C7135a(this));
        Intrinsics.checkNotNullExpressionValue(observable, "map(...)");
        return observable;
    }
}
