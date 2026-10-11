package com.onyx.android.sdk.base.utils;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.onyx.android.sdk.base.utils.RxTimerUtil;
import com.onyx.android.sdk.universal.editor.eventhandler.EventHandlerManager;
import com.sun.org.apache.bcel.internal.Constants;
import com.sunia.HTREnginev2.gon;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Action;
import java.lang.ref.SoftReference;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001,B\t\b\u0002¢\u0006\u0004\b*\u0010+J\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\b\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u001a\u0010\b\u001a\u00020\u00062\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\n0\tJ\u001a\u0010\f\u001a\u00020\u00062\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\n0\tJ*\u0010\u0007\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000e2\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\n0\tJ\u001e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u0004J\u001e\u0010\u0010\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u0004J\u001e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J&\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0005\u001a\u00020\u0004J6\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u0004J$\u0010\u001d\u001a\u00020\u00062\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00020\u00192\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001bJ\u0010\u0010\u001e\u001a\u00020\n2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004J\u000e\u0010\u001e\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\u0006J\u0006\u0010 \u001a\u00020\nR\u0014\u0010!\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b!\u0010\"R\u0014\u0010#\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b#\u0010\"R\u0014\u0010$\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b$\u0010\"R(\u0010)\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010&0%8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(¨\u0006-"}, m61528d2 = {"Lcom/onyx/android/sdk/base/utils/RxTimerUtil;", "", "", "mills", "Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;", "timerObserver", "", "timer", "shortTimer", "Lkotlin/Function1;", "", EventHandlerManager.OBSERVER, "smallTimer", "delay", "Ljava/util/concurrent/TimeUnit;", "timeUnit", "timerOnCurScheduler", "initialDelay", TypedValues.CycleType.S_WAVE_PERIOD, "Lio/reactivex/rxjava3/core/Scheduler;", "observeOn", gon.f71290o0, "count", "unit", "timerRange", "Lio/reactivex/rxjava3/core/Observable;", "observable", "", "autoCancel", "subscribe", "cancel", "timerObserverKey", "cancelAll", "DEFAULT_SHOW_DELAY", "J", "SLIDE_SHOW_DELAY", "SMALL_SHOW_DELAY", "Ljava/util/concurrent/ConcurrentHashMap;", "Ljava/lang/ref/SoftReference;", "a", "Ljava/util/concurrent/ConcurrentHashMap;", "timerObservers", Constants.CONSTRUCTOR_NAME, "()V", "TimerObserver", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nRxTimerUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxTimerUtil.kt\ncom/onyx/android/sdk/base/utils/RxTimerUtil\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,164:1\n1#2:165\n*E\n"})
/* loaded from: classes7.dex */
public final class RxTimerUtil {
    public static final long DEFAULT_SHOW_DELAY = 500;
    public static final long SLIDE_SHOW_DELAY = 300;
    public static final long SMALL_SHOW_DELAY = 100;

    @NotNull
    public static final RxTimerUtil INSTANCE = new RxTimerUtil();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final ConcurrentHashMap<Integer, SoftReference<TimerObserver>> timerObservers = new ConcurrentHashMap<>();

    @Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0002\b\u0002\b&\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0006\u0010\u0006\u001a\u00020\u0007J\b\u0010\b\u001a\u00020\u0007H\u0016J\u0010\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\f\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0005H\u0016R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;", "Lio/reactivex/rxjava3/core/Observer;", "", "()V", "disposable", "Lio/reactivex/rxjava3/disposables/Disposable;", "cancel", "", "onComplete", "onError", "e", "", "onSubscribe", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static abstract class TimerObserver implements Observer<Long> {

        @Nullable
        private Disposable disposable;

        public final void cancel() {
            Disposable disposable = this.disposable;
            if (disposable != null) {
                Intrinsics.checkNotNull(disposable);
                if (disposable.isDisposed()) {
                    return;
                }
                Disposable disposable2 = this.disposable;
                Intrinsics.checkNotNull(disposable2);
                disposable2.dispose();
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            cancel();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(@NotNull Throwable e) {
            Intrinsics.checkNotNullParameter(e, "e");
            cancel();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(@NotNull Disposable disposable) {
            Intrinsics.checkNotNullParameter(disposable, "disposable");
            this.disposable = disposable;
        }
    }

    /* renamed from: b */
    public static final void m32152b(boolean z, int i) {
        if (z) {
            INSTANCE.cancel(i);
        }
    }

    public final void cancel(@Nullable TimerObserver timerObserver) {
        if (timerObserver == null) {
            return;
        }
        cancel(timerObserver.hashCode());
    }

    public final void cancelAll() {
        TimerObserver timerObserver;
        ConcurrentHashMap<Integer, SoftReference<TimerObserver>> concurrentHashMap = timerObservers;
        if (concurrentHashMap.size() == 0) {
            return;
        }
        Iterator<Map.Entry<Integer, SoftReference<TimerObserver>>> it2 = concurrentHashMap.entrySet().iterator();
        while (it2.hasNext()) {
            SoftReference<TimerObserver> value = it2.next().getValue();
            if (value != null && (timerObserver = value.get()) != null) {
                timerObserver.cancel();
            }
        }
        timerObservers.clear();
    }

    public final int shortTimer(@NotNull TimerObserver timerObserver) {
        Intrinsics.checkNotNullParameter(timerObserver, "timerObserver");
        return timer(500L, TimeUnit.MILLISECONDS, timerObserver);
    }

    public final int smallTimer(@NotNull Function1<? super Long, Unit> observer) {
        Intrinsics.checkNotNullParameter(observer, "observer");
        return timer(100L, TimeUnit.MILLISECONDS, observer);
    }

    public final int subscribe(@NotNull Observable<Long> observable, @NotNull TimerObserver timerObserver, final boolean autoCancel) {
        Intrinsics.checkNotNullParameter(observable, "observable");
        Intrinsics.checkNotNullParameter(timerObserver, "timerObserver");
        final int hashCode = timerObserver.hashCode();
        timerObservers.put(Integer.valueOf(hashCode), new SoftReference<>(timerObserver));
        observable.doFinally(new Action() { // from class: com.sunia.HTREnginev2.hxl
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                RxTimerUtil.m32152b(autoCancel, hashCode);
            }
        }).subscribe(timerObserver);
        return hashCode;
    }

    public final int timer(long mills, @NotNull TimerObserver timerObserver) {
        Intrinsics.checkNotNullParameter(timerObserver, "timerObserver");
        return timer(mills, TimeUnit.MILLISECONDS, timerObserver);
    }

    public final int timerOnCurScheduler(long delay, @NotNull TimeUnit timeUnit, @NotNull TimerObserver timerObserver) {
        Intrinsics.checkNotNullParameter(timeUnit, "timeUnit");
        Intrinsics.checkNotNullParameter(timerObserver, "timerObserver");
        Observable<Long> timer = Observable.timer(delay, timeUnit);
        Intrinsics.checkNotNullExpressionValue(timer, "timer(...)");
        return subscribe(timer, timerObserver, true);
    }

    public final int timerRange(long start, long count, long initialDelay, long period, @NotNull TimeUnit unit, @NotNull TimerObserver timerObserver) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        Intrinsics.checkNotNullParameter(timerObserver, "timerObserver");
        Observable<Long> observeOn = Observable.intervalRange(start, count, initialDelay, period, unit).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return subscribe(observeOn, timerObserver, false);
    }

    public final void cancel(int timerObserverKey) {
        SoftReference<TimerObserver> softReference;
        TimerObserver timerObserver;
        ConcurrentHashMap<Integer, SoftReference<TimerObserver>> concurrentHashMap = timerObservers;
        if ((concurrentHashMap == null || concurrentHashMap.isEmpty()) || (softReference = concurrentHashMap.get(Integer.valueOf(timerObserverKey))) == null || (timerObserver = softReference.get()) == null) {
            return;
        }
        timerObserver.cancel();
        concurrentHashMap.remove(Integer.valueOf(timerObserverKey));
    }

    public final int shortTimer(@NotNull Function1<? super Long, Unit> observer) {
        Intrinsics.checkNotNullParameter(observer, "observer");
        return timer(500L, TimeUnit.MILLISECONDS, observer);
    }

    public final int timer(long delay, @NotNull TimeUnit timeUnit, @NotNull final Function1<? super Long, Unit> observer) {
        Intrinsics.checkNotNullParameter(timeUnit, "timeUnit");
        Intrinsics.checkNotNullParameter(observer, "observer");
        return timer(delay, timeUnit, new TimerObserver() { // from class: com.onyx.android.sdk.base.utils.RxTimerUtil$timer$1
            @Override // io.reactivex.rxjava3.core.Observer
            public /* bridge */ /* synthetic */ void onNext(Long l) {
                onNext(l.longValue());
            }

            public void onNext(long aLong) {
                observer.invoke(Long.valueOf(aLong));
            }
        });
    }

    public final int timer(long delay, @NotNull TimeUnit timeUnit, @NotNull TimerObserver timerObserver) {
        Intrinsics.checkNotNullParameter(timeUnit, "timeUnit");
        Intrinsics.checkNotNullParameter(timerObserver, "timerObserver");
        Observable<Long> observeOn = Observable.timer(delay, timeUnit).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return subscribe(observeOn, timerObserver, true);
    }

    public final int timer(long initialDelay, long period, @NotNull TimerObserver timerObserver) {
        Intrinsics.checkNotNullParameter(timerObserver, "timerObserver");
        Scheduler mainThread = AndroidSchedulers.mainThread();
        Intrinsics.checkNotNullExpressionValue(mainThread, "mainThread(...)");
        return timer(initialDelay, period, mainThread, timerObserver);
    }

    public final int timer(long initialDelay, long period, @NotNull Scheduler observeOn, @NotNull TimerObserver timerObserver) {
        Intrinsics.checkNotNullParameter(observeOn, "observeOn");
        Intrinsics.checkNotNullParameter(timerObserver, "timerObserver");
        Observable<Long> observeOn2 = Observable.interval(initialDelay, period, TimeUnit.MILLISECONDS).observeOn(observeOn);
        Intrinsics.checkNotNullExpressionValue(observeOn2, "observeOn(...)");
        return subscribe(observeOn2, timerObserver, false);
    }
}
