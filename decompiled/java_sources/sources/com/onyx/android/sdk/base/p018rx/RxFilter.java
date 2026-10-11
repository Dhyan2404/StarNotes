package com.onyx.android.sdk.base.p018rx;

import androidx.core.app.NotificationCompat;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.p018rx.RxFilter;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableEmitter;
import io.reactivex.rxjava3.core.ObservableOnSubscribe;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u0000 %*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0003:\u0001%B\u0007¢\u0006\u0004\b#\u0010$J\u001e\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u000e\u0010\u0007\u001a\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u0006J\u001e\u0010\n\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u000e\u0010\u0007\u001a\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u0006J$\u0010\u000e\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\u0014\u0010\u0007\u001a\u0010\u0012\f\b\u0000\u0012\b\u0012\u0004\u0012\u00028\u00000\r0\u0006J\u0016\u0010\n\u001a\u00020\b2\u000e\u0010\u0007\u001a\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u0006J\u001e\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u000e\u0010\u0007\u001a\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u0006J\u0016\u0010\u000f\u001a\u00020\b2\u000e\u0010\u0007\u001a\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u0006J&\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00102\u000e\u0010\u0007\u001a\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u0006J\u0015\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00028\u0000¢\u0006\u0004\b\u0007\u0010\u0013J\b\u0010\u0014\u001a\u00020\bH\u0016J\b\u0010\u0016\u001a\u00020\u0015H\u0016J\u000e\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00000\u0017H\u0002R\u001e\u0010\u001c\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0018\u0010\"\u001a\u0004\u0018\u00018\u00008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!¨\u0006&"}, m61528d2 = {"Lcom/onyx/android/sdk/base/rx/RxFilter;", "", "T", "Lio/reactivex/rxjava3/disposables/Disposable;", "", "time", "Lio/reactivex/rxjava3/functions/Consumer;", "onNext", "", "subscribeDebounce", "subscribeThrottleLast", "", "count", "", "subscribeBuffer", "subscribeThrottleFirst", "Lio/reactivex/rxjava3/core/Scheduler;", "scheduler", NotificationCompat.CATEGORY_EVENT, "(Ljava/lang/Object;)V", "dispose", "", "isDisposed", "Lio/reactivex/rxjava3/core/Observable;", "b", "Lio/reactivex/rxjava3/core/ObservableEmitter;", "e", "Lio/reactivex/rxjava3/core/ObservableEmitter;", "emitter", C6997f.f39671c, "Lio/reactivex/rxjava3/disposables/Disposable;", "disposable", C6998g.f39679a, Constants.OBJECT_SIG, "firstEvent", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class RxFilter<T> implements Disposable {
    public static final int DEFAULT_INTERVAL_DURATION = 400;

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public ObservableEmitter<T> emitter;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public Disposable disposable;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public T firstEvent;

    /* renamed from: c */
    public static final void m31988c(RxFilter this$0, ObservableEmitter it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        this$0.emitter = it2;
        T t = this$0.firstEvent;
        if (t != null) {
            Intrinsics.checkNotNull(t);
            this$0.onNext(t);
            this$0.firstEvent = null;
        }
    }

    /* renamed from: b */
    public final Observable<T> m31989b() {
        Observable<T> create = Observable.create(new ObservableOnSubscribe() { // from class: com.sunia.HTREnginev2.yvl
            @Override // io.reactivex.rxjava3.core.ObservableOnSubscribe
            public final void subscribe(ObservableEmitter observableEmitter) {
                RxFilter.m31988c(RxFilter.this, observableEmitter);
            }
        });
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        return create;
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public void dispose() {
        Disposable disposable = this.disposable;
        if (disposable != null) {
            if (disposable != null) {
                disposable.dispose();
            }
            this.disposable = null;
            this.emitter = null;
        }
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public boolean isDisposed() {
        Disposable disposable = this.disposable;
        if (disposable == null) {
            return true;
        }
        Intrinsics.checkNotNull(disposable);
        return disposable.isDisposed();
    }

    public final void onNext(@NotNull T event) {
        Intrinsics.checkNotNullParameter(event, "event");
        ObservableEmitter<T> observableEmitter = this.emitter;
        if (observableEmitter == null) {
            this.firstEvent = event;
        } else if (observableEmitter != null) {
            observableEmitter.onNext(event);
        }
    }

    public final void subscribeBuffer(int count, @NotNull Consumer<? super List<T>> onNext) {
        Intrinsics.checkNotNullParameter(onNext, "onNext");
        this.disposable = m31989b().buffer(count).subscribeOn(AndroidSchedulers.mainThread()).observeOn(AndroidSchedulers.mainThread()).subscribe(onNext);
    }

    public final void subscribeDebounce(long time, @NotNull Consumer<? super T> onNext) {
        Intrinsics.checkNotNullParameter(onNext, "onNext");
        this.disposable = m31989b().debounce(time, TimeUnit.MILLISECONDS).subscribeOn(AndroidSchedulers.mainThread()).observeOn(AndroidSchedulers.mainThread()).subscribe(onNext);
    }

    public final void subscribeThrottleFirst(long time, @NotNull Consumer<? super T> onNext) {
        Intrinsics.checkNotNullParameter(onNext, "onNext");
        Scheduler mainThread = AndroidSchedulers.mainThread();
        Intrinsics.checkNotNullExpressionValue(mainThread, "mainThread(...)");
        subscribeThrottleFirst(time, mainThread, onNext);
    }

    public final void subscribeThrottleLast(long time, @NotNull Consumer<? super T> onNext) {
        Intrinsics.checkNotNullParameter(onNext, "onNext");
        this.disposable = m31989b().throttleLast(time, TimeUnit.MILLISECONDS).subscribeOn(AndroidSchedulers.mainThread()).observeOn(AndroidSchedulers.mainThread()).subscribe(onNext);
    }

    public final void subscribeThrottleFirst(@NotNull Consumer<? super T> onNext) {
        Intrinsics.checkNotNullParameter(onNext, "onNext");
        subscribeThrottleFirst(400L, onNext);
    }

    public final void subscribeThrottleFirst(long time, @NotNull Scheduler scheduler, @NotNull Consumer<? super T> onNext) {
        Intrinsics.checkNotNullParameter(scheduler, "scheduler");
        Intrinsics.checkNotNullParameter(onNext, "onNext");
        this.disposable = m31989b().throttleFirst(time, TimeUnit.MILLISECONDS).subscribeOn(scheduler).observeOn(scheduler).subscribe(onNext);
    }

    public final void subscribeThrottleLast(@NotNull Consumer<? super T> onNext) {
        Intrinsics.checkNotNullParameter(onNext, "onNext");
        subscribeThrottleLast(400L, onNext);
    }
}
