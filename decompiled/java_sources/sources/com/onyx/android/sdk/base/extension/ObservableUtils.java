package com.onyx.android.sdk.base.extension;

import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00050\u0004\"\b\b\u0000\u0010\u0005*\u00020\u0001J2\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\b0\u000eJ*\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\b2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\b0\u000eJ\u001a\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\b0\u000e¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/base/extension/ObservableUtils;", "", "()V", "emptyObserver", "Lio/reactivex/rxjava3/core/Observer;", "T", "polling", "Lio/reactivex/rxjava3/core/Observable;", "", "count", "periodMills", "filterScheduler", "Lio/reactivex/rxjava3/core/Scheduler;", "predicate", "Lio/reactivex/rxjava3/functions/Predicate;", "pollingOnMainThread", "shortPollingOnMainThread", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class ObservableUtils {

    @NotNull
    public static final ObservableUtils INSTANCE = new ObservableUtils();

    /* renamed from: com.onyx.android.sdk.base.extension.ObservableUtils$a */
    /* loaded from: classes7.dex */
    public static final class C7119a<T> implements Predicate {

        /* renamed from: e */
        public final /* synthetic */ Predicate<Long> f40742e;

        /* renamed from: f */
        public final /* synthetic */ long f40743f;

        public C7119a(Predicate<Long> predicate, long j) {
            this.f40742e = predicate;
            this.f40743f = j;
        }

        /* renamed from: a */
        public final boolean m31922a(long j) {
            return this.f40742e.test(Long.valueOf(j)) || j == this.f40743f;
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        public /* bridge */ /* synthetic */ boolean test(Object obj) {
            return m31922a(((Number) obj).longValue());
        }
    }

    @NotNull
    public final <T> Observer<T> emptyObserver() {
        return new Observer<T>() { // from class: com.onyx.android.sdk.base.extension.ObservableUtils$emptyObserver$1
            @Override // io.reactivex.rxjava3.core.Observer
            public void onComplete() {
            }

            @Override // io.reactivex.rxjava3.core.Observer
            public void onError(@NotNull Throwable e) {
                Intrinsics.checkNotNullParameter(e, "e");
            }

            @Override // io.reactivex.rxjava3.core.Observer
            public void onNext(@NotNull T t) {
                Intrinsics.checkNotNullParameter(t, "t");
            }

            @Override // io.reactivex.rxjava3.core.Observer
            public void onSubscribe(@NotNull Disposable d) {
                Intrinsics.checkNotNullParameter(d, "d");
            }
        };
    }

    @NotNull
    public final Observable<Long> polling(long count, long periodMills, @NotNull Scheduler filterScheduler, @NotNull Predicate<Long> predicate) {
        Intrinsics.checkNotNullParameter(filterScheduler, "filterScheduler");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        Observable<Long> take = Observable.intervalRange(1L, count, periodMills, periodMills, TimeUnit.MILLISECONDS).observeOn(filterScheduler).filter(new C7119a(predicate, count)).take(1L);
        Intrinsics.checkNotNullExpressionValue(take, "take(...)");
        return take;
    }

    @NotNull
    public final Observable<Long> pollingOnMainThread(long count, long periodMills, @NotNull Predicate<Long> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        Scheduler mainThread = AndroidSchedulers.mainThread();
        Intrinsics.checkNotNullExpressionValue(mainThread, "mainThread(...)");
        return polling(count, periodMills, mainThread, predicate);
    }

    @NotNull
    public final Observable<Long> shortPollingOnMainThread(@NotNull Predicate<Long> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        Scheduler mainThread = AndroidSchedulers.mainThread();
        Intrinsics.checkNotNullExpressionValue(mainThread, "mainThread(...)");
        return polling(5L, 10L, mainThread, predicate);
    }
}
