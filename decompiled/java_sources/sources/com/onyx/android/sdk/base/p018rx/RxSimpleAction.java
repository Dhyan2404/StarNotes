package com.onyx.android.sdk.base.p018rx;

import androidx.annotation.WorkerThread;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u0001*\u000e\b\u0001\u0010\u0004*\b\u0012\u0004\u0012\u00028\u00000\u00032\b\u0012\u0004\u0012\u00028\u00000\u0005B\u0017\u0012\u0006\u0010\b\u001a\u00028\u0001\u0012\u0006\u0010\u0010\u001a\u00020\r¢\u0006\u0004\b\u0011\u0010\u0012J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006H\u0016J\u0017\u0010\t\u001a\u00028\u00002\u0006\u0010\b\u001a\u00028\u0001H\u0005¢\u0006\u0004\b\t\u0010\nR\u0014\u0010\b\u001a\u00028\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/base/rx/RxSimpleAction;", "", "T", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "R", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, AbstractLogger.REQUEST, "execute", "(Lcom/onyx/android/sdk/base/rx/RxBaseRequest;)Ljava/lang/Object;", "e", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "Lio/reactivex/rxjava3/core/Scheduler;", C6997f.f39671c, "Lio/reactivex/rxjava3/core/Scheduler;", "scheduler", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/base/rx/RxBaseRequest;Lio/reactivex/rxjava3/core/Scheduler;)V", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class RxSimpleAction<T, R extends RxBaseRequest<T>> extends RxBaseAction<T> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final R request;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Scheduler scheduler;

    /* renamed from: com.onyx.android.sdk.base.rx.RxSimpleAction$a */
    /* loaded from: classes7.dex */
    public static final class C7137a<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ RxSimpleAction<T, R> f40821e;

        public C7137a(RxSimpleAction<T, R> rxSimpleAction) {
            this.f40821e = rxSimpleAction;
        }

        /* JADX WARN: Incorrect types in method signature: (TR;)TT; */
        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object apply(@NotNull RxBaseRequest request) {
            Intrinsics.checkNotNullParameter(request, "request");
            return this.f40821e.execute(request);
        }
    }

    public RxSimpleAction(@NotNull R request, @NotNull Scheduler scheduler) {
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(scheduler, "scheduler");
        this.request = request;
        this.scheduler = scheduler;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<T> create() {
        Observable<T> observable = (Observable<T>) Observable.just(this.request).observeOn(this.scheduler).map(new C7137a(this));
        Intrinsics.checkNotNullExpressionValue(observable, "map(...)");
        return observable;
    }

    @WorkerThread
    @NotNull
    public final T execute(@NotNull R request) throws Exception {
        Intrinsics.checkNotNullParameter(request, "request");
        return (T) request.execute();
    }
}
