package com.onyx.android.sdk.base.extension;

import android.view.View;
import com.blankj.utilcode.util.LogUtils;
import com.liulishuo.okdownload.core.breakpoint.BreakpointSQLiteHelper;
import com.onyx.android.sdk.base.data.TimeGuard;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.Debug;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableEmitter;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.internal.functions.Functions;
import io.reactivex.rxjava3.schedulers.Schedulers;
import io.reactivex.rxjava3.subjects.BehaviorSubject;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Deprecated;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000²\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\u001a\u000e\u0010\u0000\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00020\u0001\u001a\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u001a\u0016\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0006\u001a\u0014\u0010\n\u001a\u00020\u00042\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00040\f\u001a+\u0010\r\u001a\u00020\u0004\"\b\b\u0000\u0010\u000e*\u00020\u000f*\n\u0012\u0004\u0012\u0002H\u000e\u0018\u00010\u00012\u0006\u0010\u0010\u001a\u0002H\u000eH\u0007¢\u0006\u0002\u0010\u0011\u001a)\u0010\u0012\u001a\u00020\u0004\"\b\b\u0000\u0010\u000e*\u00020\u000f*\n\u0012\u0004\u0012\u0002H\u000e\u0018\u00010\u00012\u0006\u0010\u0010\u001a\u0002H\u000e¢\u0006\u0002\u0010\u0011\u001a;\u0010\u0013\u001a\u0004\u0018\u0001H\u0014\"\b\b\u0000\u0010\u000e*\u00020\u000f\"\b\b\u0001\u0010\u0014*\u00020\u000f*\u000e\u0012\u0004\u0012\u0002H\u000e\u0012\u0004\u0012\u0002H\u00140\u00152\u0006\u0010\u0010\u001a\u0002H\u000eH\u0007¢\u0006\u0002\u0010\u0016\u001a9\u0010\u0017\u001a\u0004\u0018\u0001H\u0014\"\b\b\u0000\u0010\u000e*\u00020\u000f\"\b\b\u0001\u0010\u0014*\u00020\u000f*\u000e\u0012\u0004\u0012\u0002H\u000e\u0012\u0004\u0012\u0002H\u00140\u00152\u0006\u0010\u0010\u001a\u0002H\u000e¢\u0006\u0002\u0010\u0016\u001a]\u0010\u0018\u001a\b\u0012\u0004\u0012\u0002H\u000e0\u0019\"\b\b\u0000\u0010\u000e*\u00020\u000f*\b\u0012\u0004\u0012\u0002H\u000e0\u00192\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u0002H\u000e\u0012\u0004\u0012\u00020\u001c0\u001b2'\u0010\u001d\u001a#\u0012\u0013\u0012\u0011H\u000e¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b( \u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u000e0\u00190\u001b\u001aI\u0010!\u001a\b\u0012\u0004\u0012\u0002H\u000e0\u0019\"\b\b\u0000\u0010\u000e*\u00020\u000f*\b\u0012\u0004\u0012\u0002H\u000e0\"2'\u0010\u001d\u001a#\u0012\u0013\u0012\u0011H\u000e¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b( \u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u000e0\u00190\u001b\u001a\u0018\u0010#\u001a\b\u0012\u0004\u0012\u00020\u001c0\u0019*\n\u0012\u0006\b\u0001\u0012\u00020\u000f0\u0019\u001aB\u0010$\u001a\b\u0012\u0004\u0012\u0002H\u000e0\u0019\"\b\b\u0000\u0010\u000e*\u00020\u000f*\b\u0012\u0004\u0012\u0002H\u000e0\u00192\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u0002H\u000e\u0012\u0004\u0012\u00020\u001c0\u001b2\f\u0010%\u001a\b\u0012\u0004\u0012\u0002H\u000e0\u0001\u001a6\u0010$\u001a\b\u0012\u0004\u0012\u0002H\u000e0\u0019\"\b\b\u0000\u0010\u000e*\u00020\u000f*\b\u0012\u0004\u0012\u0002H\u000e0\u00192\u0006\u0010&\u001a\u00020'2\f\u0010(\u001a\b\u0012\u0004\u0012\u0002H\u000e0\u0001\u001a$\u0010)\u001a\b\u0012\u0004\u0012\u00020\u001c0\u0019*\b\u0012\u0004\u0012\u00020\u001c0\u00192\f\u0010%\u001a\b\u0012\u0004\u0012\u00020\u001c0\u0001\u001a$\u0010*\u001a\b\u0012\u0004\u0012\u00020\u001c0\u0019*\b\u0012\u0004\u0012\u00020\u001c0\u00192\f\u0010%\u001a\b\u0012\u0004\u0012\u00020\u001c0\u0001\u001a.\u0010+\u001a\b\u0012\u0004\u0012\u0002H\u000e0\u0019\"\b\b\u0000\u0010\u000e*\u00020\u000f*\b\u0012\u0004\u0012\u0002H\u000e0\u00192\f\u0010%\u001a\b\u0012\u0004\u0012\u0002H\u000e0\u0001\u001a'\u0010,\u001a\u00020\u0004\"\b\b\u0000\u0010\u000e*\u00020\u000f*\b\u0012\u0004\u0012\u0002H\u000e0-2\u0006\u0010\u0010\u001a\u0002H\u000e¢\u0006\u0002\u0010.\u001a'\u0010,\u001a\u00020\u0004\"\b\b\u0000\u0010\u000e*\u00020\u000f*\b\u0012\u0004\u0012\u0002H\u000e0/2\u0006\u0010\u0010\u001a\u0002H\u000e¢\u0006\u0002\u00100\u001aP\u00101\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0019\"\b\b\u0000\u0010\u000e*\u00020\u000f*\b\u0012\u0004\u0012\u0002H\u000e0\u00192\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u0002H\u000e\u0012\u0004\u0012\u00020\u001c0\u001b2\u001a\u00102\u001a\u0016\u0012\u0004\u0012\u0002H\u000e\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u000f0\u00190\u001b\u001al\u00101\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0019\"\b\b\u0000\u0010\u000e*\u00020\u000f*\b\u0012\u0004\u0012\u0002H\u000e0\u00192\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u0002H\u000e\u0012\u0004\u0012\u00020\u001c0\u001b2\u001a\u00103\u001a\u0016\u0012\u0004\u0012\u0002H\u000e\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u000f0\u00190\u001b2\u001a\u00104\u001a\u0016\u0012\u0004\u0012\u0002H\u000e\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u000f0\u00190\u001b\u001aD\u00101\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0019\"\b\b\u0000\u0010\u000e*\u00020\u000f*\b\u0012\u0004\u0012\u0002H\u000e0\u00192\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u0002H\u000e\u0012\u0004\u0012\u00020\u001c0\u001b2\u000e\u00102\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u000f0\u0019\u001a&\u00105\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0019*\b\u0012\u0004\u0012\u00020\u001c0\u00192\u000e\u00102\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u000f0\u0019\u001a&\u00106\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0019*\b\u0012\u0004\u0012\u00020\u001c0\u00192\u000e\u00102\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u000f0\u0019\u001a\f\u00107\u001a\u00020\u001c*\u0004\u0018\u000108\u001aH\u00109\u001a\b\u0012\u0004\u0012\u0002H\u000e0\u0019\"\b\b\u0000\u0010\u000e*\u00020\u000f*\b\u0012\u0004\u0012\u0002H\u000e0\u00192\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u0002H\u000e\u0012\u0004\u0012\u00020\u001c0\u001b2\u0012\u0010:\u001a\u000e\u0012\u0004\u0012\u0002H\u000e\u0012\u0004\u0012\u0002H\u000e0\u0015\u001a2\u0010;\u001a\r\u0012\u0004\u0012\u0002H\u000e0\u0019¢\u0006\u0002\b<\"\b\b\u0000\u0010\u000e*\u00020\u000f*\b\u0012\u0004\u0012\u0002H\u000e0\u00192\u0006\u0010=\u001a\u0002H\u000e¢\u0006\u0002\u0010>\u001a-\u0010?\u001a\r\u0012\u0004\u0012\u0002H\u000e0\u0019¢\u0006\u0002\b<\"\b\b\u0000\u0010\u000e*\u00020\u000f*\b\u0012\u0004\u0012\u0002H\u000e0\u00192\u0006\u0010@\u001a\u00020A\u001a\u0018\u0010B\u001a\b\u0012\u0004\u0012\u00020C0\u0019*\u00020C2\u0006\u0010D\u001a\u00020E\u001a\f\u0010F\u001a\u00020\u0004*\u0004\u0018\u000108\u001aF\u0010G\u001a\u000208\"\b\b\u0000\u0010\u000e*\u00020\u000f*\b\u0012\u0004\u0012\u0002H\u000e0\u00192\u000e\b\u0002\u0010%\u001a\b\u0012\u0004\u0012\u0002H\u000e0\u00012\u0010\b\u0002\u0010H\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00020\u00012\b\b\u0002\u0010I\u001a\u00020J\u001a%\u0010K\u001a\r\u0012\u0004\u0012\u0002H\u000e0\u0019¢\u0006\u0002\b<\"\b\b\u0000\u0010\u000e*\u00020\u000f*\b\u0012\u0004\u0012\u0002H\u000e0\u0019\u001a)\u0010L\u001a\u00020\u001c\"\b\b\u0000\u0010\u000e*\u00020\u000f*\n\u0012\u0004\u0012\u0002H\u000e\u0018\u00010M2\u0006\u0010\u0010\u001a\u0002H\u000e¢\u0006\u0002\u0010N\u001aD\u0010O\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u000e0P0\u0019\"\b\b\u0000\u0010\u000e*\u00020\u000f*\b\u0012\u0004\u0012\u0002H\u000e0\u00192\b\b\u0002\u0010Q\u001a\u00020R2\b\b\u0002\u0010S\u001a\u00020E2\b\b\u0002\u0010\b\u001a\u00020\t¨\u0006T"}, m61528d2 = {"defaultOnError", "Lio/reactivex/rxjava3/functions/Consumer;", "", "runInUI", "", "runnable", "Ljava/lang/Runnable;", "runOnScheduler", "scheduler", "Lio/reactivex/rxjava3/core/Scheduler;", "runWithRx", BreakpointSQLiteHelper.f39283i, "Lkotlin/Function0;", "acceptItemSafety", "T", "", "item", "(Lio/reactivex/rxjava3/functions/Consumer;Ljava/lang/Object;)V", "acceptSafety", "applyItemSafety", "R", "Lio/reactivex/rxjava3/functions/Function;", "(Lio/reactivex/rxjava3/functions/Function;Ljava/lang/Object;)Ljava/lang/Object;", "applySafety", "concatMapIf", "Lio/reactivex/rxjava3/core/Observable;", "predicate", "Lkotlin/Function1;", "", "observable", "Lkotlin/ParameterName;", "name", "r", "concatMapIfLast", "Lio/reactivex/rxjava3/subjects/BehaviorSubject;", "continueOnFail", "doOnNextIf", "onNext", "timeGuard", "Lcom/onyx/android/sdk/base/data/TimeGuard;", "doOnNext", "doOnNextIfFalse", "doOnNextIfTrue", "doOnNextSafety", "done", "Lio/reactivex/rxjava3/core/ObservableEmitter;", "(Lio/reactivex/rxjava3/core/ObservableEmitter;Ljava/lang/Object;)V", "Lio/reactivex/rxjava3/core/Observer;", "(Lio/reactivex/rxjava3/core/Observer;Ljava/lang/Object;)V", "flatMapIf", "nextObservable", "trueObservable", "falseObservable", "flatMapIfFalse", "flatMapIfTrue", "isDisposed", "Lio/reactivex/rxjava3/disposables/Disposable;", "mapIf", "mapper", "onErrorReturnItemWithLog", "Lio/reactivex/rxjava3/annotations/NonNull;", "t", "(Lio/reactivex/rxjava3/core/Observable;Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;", "onErrorWithFileLog", "tag", "", "postDelayObservable", "Landroid/view/View;", "delayTimeMs", "", "safelyDispose", "subscribeWithDefault", "onError", "onComplete", "Lio/reactivex/rxjava3/functions/Action;", "takeLastOne", "testSafety", "Lio/reactivex/rxjava3/functions/Predicate;", "(Lio/reactivex/rxjava3/functions/Predicate;Ljava/lang/Object;)Z", "touchBuffer", "", "timeSpan", "", "count", "sdk-base_release"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class RxjavaKt {

    /* renamed from: com.onyx.android.sdk.base.extension.RxjavaKt$a */
    /* loaded from: classes7.dex */
    public static final class C7121a<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ Function1<T, Boolean> f40749e;

        /* renamed from: f */
        public final /* synthetic */ Function1<T, Observable<T>> f40750f;

        /* JADX WARN: Multi-variable type inference failed */
        public C7121a(Function1<? super T, Boolean> function1, Function1<? super T, ? extends Observable<T>> function12) {
            this.f40749e = function1;
            this.f40750f = function12;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends T> apply(@NotNull T it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            if (this.f40749e.invoke(it2).booleanValue()) {
                return this.f40750f.invoke(it2);
            }
            Observable just = Observable.just(it2);
            Intrinsics.checkNotNull(just);
            return just;
        }
    }

    /* renamed from: com.onyx.android.sdk.base.extension.RxjavaKt$b */
    /* loaded from: classes7.dex */
    public static final class C7122b<T, R> implements Function {

        /* renamed from: e */
        public static final C7122b<T, R> f40751e = new C7122b<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a */
        public final Boolean apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.TRUE;
        }
    }

    /* renamed from: com.onyx.android.sdk.base.extension.RxjavaKt$c */
    /* loaded from: classes7.dex */
    public static final class C7123c<T, R> implements Function {

        /* renamed from: e */
        public static final C7123c<T, R> f40752e = new C7123c<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a */
        public final Boolean apply(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return Boolean.FALSE;
        }
    }

    /* renamed from: com.onyx.android.sdk.base.extension.RxjavaKt$d */
    /* loaded from: classes7.dex */
    public static final class C7124d<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ Function1<T, Boolean> f40753e;

        /* renamed from: f */
        public final /* synthetic */ Consumer<T> f40754f;

        /* JADX WARN: Multi-variable type inference failed */
        public C7124d(Function1<? super T, Boolean> function1, Consumer<T> consumer) {
            this.f40753e = function1;
            this.f40754f = consumer;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull T it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            if (this.f40753e.invoke(it2).booleanValue()) {
                this.f40754f.accept(it2);
            }
        }
    }

    /* renamed from: com.onyx.android.sdk.base.extension.RxjavaKt$e */
    /* loaded from: classes7.dex */
    public static final class C7125e<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ Consumer<T> f40755e;

        public C7125e(Consumer<T> consumer) {
            this.f40755e = consumer;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public final void accept(@NotNull T it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RxjavaKt.acceptSafety(this.f40755e, it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.base.extension.RxjavaKt$f */
    /* loaded from: classes7.dex */
    public static final class C7126f<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ Function1<T, Boolean> f40756e;

        /* renamed from: f */
        public final /* synthetic */ Function1<T, Observable<? extends Object>> f40757f;

        /* renamed from: g */
        public final /* synthetic */ Function1<T, Observable<? extends Object>> f40758g;

        /* JADX WARN: Multi-variable type inference failed */
        public C7126f(Function1<? super T, Boolean> function1, Function1<? super T, ? extends Observable<? extends Object>> function12, Function1<? super T, ? extends Observable<? extends Object>> function13) {
            this.f40756e = function1;
            this.f40757f = function12;
            this.f40758g = function13;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends Object> apply(@NotNull T it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f40756e.invoke(it2).booleanValue() ? this.f40757f.invoke(it2) : this.f40758g.invoke(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.base.extension.RxjavaKt$g */
    /* loaded from: classes7.dex */
    public static final class C7127g<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ Function1<T, Boolean> f40759e;

        /* renamed from: f */
        public final /* synthetic */ Function<T, T> f40760f;

        /* JADX WARN: Multi-variable type inference failed */
        public C7127g(Function1<? super T, Boolean> function1, Function<T, T> function) {
            this.f40759e = function1;
            this.f40760f = function;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        public final T apply(@NotNull T it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f40759e.invoke(it2).booleanValue() ? this.f40760f.apply(it2) : it2;
        }
    }

    /* renamed from: com.onyx.android.sdk.base.extension.RxjavaKt$h */
    /* loaded from: classes7.dex */
    public static final class C7128h<T> implements Consumer {

        /* renamed from: e */
        public static final C7128h<T> f40761e = new C7128h<>();

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DebugKt.eIgnorable(Debug.INSTANCE, it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.base.extension.RxjavaKt$i */
    /* loaded from: classes7.dex */
    public static final class C7129i<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ String f40762e;

        public C7129i(String str) {
            this.f40762e = str;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a */
        public final void accept(@NotNull Throwable it2) {
            String stackTraceToString;
            Intrinsics.checkNotNullParameter(it2, "it");
            DebugKt.eIgnorable(Debug.INSTANCE, it2);
            String str = this.f40762e;
            stackTraceToString = ExceptionsKt__ExceptionsKt.stackTraceToString(it2);
            LogUtils.wTag(str, stackTraceToString);
        }
    }

    /* renamed from: com.onyx.android.sdk.base.extension.RxjavaKt$j */
    /* loaded from: classes7.dex */
    public static final class C7130j<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ Function0<Unit> f40763e;

        public C7130j(Function0<Unit> function0) {
            this.f40763e = function0;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a */
        public final void accept(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f40763e.invoke();
        }
    }

    @Deprecated(message = "use acceptSafety instead", replaceWith = @ReplaceWith(expression = "this.acceptSafety", imports = {}))
    public static final <T> void acceptItemSafety(@Nullable Consumer<T> consumer, @NotNull T item) {
        Intrinsics.checkNotNullParameter(item, "item");
        acceptSafety(consumer, item);
    }

    public static final <T> void acceptSafety(@Nullable Consumer<T> consumer, @NotNull T item) {
        Intrinsics.checkNotNullParameter(item, "item");
        if (consumer != null) {
            try {
                consumer.accept(item);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Deprecated(message = "use applySafety instead", replaceWith = @ReplaceWith(expression = "this.applySafety", imports = {}))
    @Nullable
    public static final <T, R> R applyItemSafety(@NotNull Function<T, R> function, @NotNull T item) {
        Intrinsics.checkNotNullParameter(function, "<this>");
        Intrinsics.checkNotNullParameter(item, "item");
        return (R) applySafety(function, item);
    }

    @Nullable
    public static final <T, R> R applySafety(@NotNull Function<T, R> function, @NotNull T item) {
        Intrinsics.checkNotNullParameter(function, "<this>");
        Intrinsics.checkNotNullParameter(item, "item");
        try {
            return function.apply(item);
        } catch (Exception unused) {
            return null;
        }
    }

    /* renamed from: c */
    public static final void m31930c(Throwable it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        Debug.INSTANCE.m32048e(it2);
    }

    @NotNull
    public static final <T> Observable<T> concatMapIf(@NotNull Observable<T> observable, @NotNull Function1<? super T, Boolean> predicate, @NotNull Function1<? super T, ? extends Observable<T>> observable2) {
        Intrinsics.checkNotNullParameter(observable, "<this>");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        Intrinsics.checkNotNullParameter(observable2, "observable");
        Observable<T> observable3 = (Observable<T>) observable.concatMap(new C7121a(predicate, observable2));
        Intrinsics.checkNotNullExpressionValue(observable3, "concatMap(...)");
        return observable3;
    }

    @NotNull
    public static final <T> Observable<T> concatMapIfLast(@NotNull final BehaviorSubject<T> behaviorSubject, @NotNull Function1<? super T, ? extends Observable<T>> observable) {
        Intrinsics.checkNotNullParameter(behaviorSubject, "<this>");
        Intrinsics.checkNotNullParameter(observable, "observable");
        return concatMapIf(behaviorSubject, new Function1<T, Boolean>() { // from class: com.onyx.android.sdk.base.extension.RxjavaKt$concatMapIfLast$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(T t) {
                return Boolean.valueOf(Intrinsics.areEqual(t, behaviorSubject.getValue()));
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(Object obj) {
                return invoke((RxjavaKt$concatMapIfLast$1<T>) obj);
            }
        }, observable);
    }

    @NotNull
    public static final Observable<Boolean> continueOnFail(@NotNull Observable<? extends Object> observable) {
        Intrinsics.checkNotNullParameter(observable, "<this>");
        Observable<Boolean> onErrorReturn = observable.map(C7122b.f40751e).onErrorReturn(C7123c.f40752e);
        Intrinsics.checkNotNullExpressionValue(onErrorReturn, "onErrorReturn(...)");
        return onErrorReturn;
    }

    /* renamed from: d */
    public static final void m31931d(BehaviorSubject subject, View this_postDelayObservable) {
        Intrinsics.checkNotNullParameter(subject, "$subject");
        Intrinsics.checkNotNullParameter(this_postDelayObservable, "$this_postDelayObservable");
        done(subject, this_postDelayObservable);
    }

    @NotNull
    public static final Consumer<? super Throwable> defaultOnError() {
        return new Consumer() { // from class: com.sunia.HTREnginev2.dyl
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                RxjavaKt.m31930c((Throwable) obj);
            }
        };
    }

    @NotNull
    public static final <T> Observable<T> doOnNextIf(@NotNull Observable<T> observable, @NotNull Function1<? super T, Boolean> predicate, @NotNull Consumer<T> onNext) {
        Intrinsics.checkNotNullParameter(observable, "<this>");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        Intrinsics.checkNotNullParameter(onNext, "onNext");
        Observable<T> doOnNext = observable.doOnNext(new C7124d(predicate, onNext));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    @NotNull
    public static final Observable<Boolean> doOnNextIfFalse(@NotNull Observable<Boolean> observable, @NotNull Consumer<Boolean> onNext) {
        Intrinsics.checkNotNullParameter(observable, "<this>");
        Intrinsics.checkNotNullParameter(onNext, "onNext");
        return doOnNextIf(observable, new Function1<Boolean, Boolean>() { // from class: com.onyx.android.sdk.base.extension.RxjavaKt$doOnNextIfFalse$1
            @NotNull
            public final Boolean invoke(boolean z) {
                return Boolean.valueOf(!z);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(Boolean bool) {
                return invoke(bool.booleanValue());
            }
        }, onNext);
    }

    @NotNull
    public static final Observable<Boolean> doOnNextIfTrue(@NotNull Observable<Boolean> observable, @NotNull Consumer<Boolean> onNext) {
        Intrinsics.checkNotNullParameter(observable, "<this>");
        Intrinsics.checkNotNullParameter(onNext, "onNext");
        return doOnNextIf(observable, new Function1<Boolean, Boolean>() { // from class: com.onyx.android.sdk.base.extension.RxjavaKt$doOnNextIfTrue$1
            @NotNull
            public final Boolean invoke(boolean z) {
                return Boolean.valueOf(z);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(Boolean bool) {
                return invoke(bool.booleanValue());
            }
        }, onNext);
    }

    @NotNull
    public static final <T> Observable<T> doOnNextSafety(@NotNull Observable<T> observable, @NotNull Consumer<T> onNext) {
        Intrinsics.checkNotNullParameter(observable, "<this>");
        Intrinsics.checkNotNullParameter(onNext, "onNext");
        Observable<T> doOnNext = observable.doOnNext(new C7125e(onNext));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    public static final <T> void done(@NotNull Observer<T> observer, @NotNull T item) {
        Intrinsics.checkNotNullParameter(observer, "<this>");
        Intrinsics.checkNotNullParameter(item, "item");
        observer.onNext(item);
        observer.onComplete();
    }

    @NotNull
    public static final <T> Observable<Object> flatMapIf(@NotNull Observable<T> observable, @NotNull Function1<? super T, Boolean> predicate, @NotNull final Observable<? extends Object> nextObservable) {
        Intrinsics.checkNotNullParameter(observable, "<this>");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        Intrinsics.checkNotNullParameter(nextObservable, "nextObservable");
        return flatMapIf(observable, predicate, new Function1<T, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.base.extension.RxjavaKt$flatMapIf$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull T it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return nextObservable;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Observable<? extends Object> invoke(Object obj) {
                return invoke((RxjavaKt$flatMapIf$1<T>) obj);
            }
        });
    }

    @NotNull
    public static final Observable<Object> flatMapIfFalse(@NotNull Observable<Boolean> observable, @NotNull final Observable<? extends Object> nextObservable) {
        Intrinsics.checkNotNullParameter(observable, "<this>");
        Intrinsics.checkNotNullParameter(nextObservable, "nextObservable");
        return flatMapIf(observable, new Function1<Boolean, Boolean>() { // from class: com.onyx.android.sdk.base.extension.RxjavaKt$flatMapIfFalse$1
            @NotNull
            public final Boolean invoke(boolean z) {
                return Boolean.valueOf(!z);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(Boolean bool) {
                return invoke(bool.booleanValue());
            }
        }, new Function1<Boolean, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.base.extension.RxjavaKt$flatMapIfFalse$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @NotNull
            public final Observable<? extends Object> invoke(boolean z) {
                return nextObservable;
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Observable<? extends Object> invoke(Boolean bool) {
                return invoke(bool.booleanValue());
            }
        });
    }

    @NotNull
    public static final Observable<Object> flatMapIfTrue(@NotNull Observable<Boolean> observable, @NotNull Observable<? extends Object> nextObservable) {
        Intrinsics.checkNotNullParameter(observable, "<this>");
        Intrinsics.checkNotNullParameter(nextObservable, "nextObservable");
        return flatMapIf(observable, new Function1<Boolean, Boolean>() { // from class: com.onyx.android.sdk.base.extension.RxjavaKt$flatMapIfTrue$1
            @NotNull
            public final Boolean invoke(boolean z) {
                return Boolean.valueOf(z);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(Boolean bool) {
                return invoke(bool.booleanValue());
            }
        }, nextObservable);
    }

    public static final boolean isDisposed(@Nullable Disposable disposable) {
        if (disposable != null) {
            return disposable.isDisposed();
        }
        return true;
    }

    @NotNull
    public static final <T> Observable<T> mapIf(@NotNull Observable<T> observable, @NotNull Function1<? super T, Boolean> predicate, @NotNull Function<T, T> mapper) {
        Intrinsics.checkNotNullParameter(observable, "<this>");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        Intrinsics.checkNotNullParameter(mapper, "mapper");
        Observable<T> observable2 = (Observable<T>) observable.map(new C7127g(predicate, mapper));
        Intrinsics.checkNotNullExpressionValue(observable2, "map(...)");
        return observable2;
    }

    @NotNull
    public static final <T> Observable<T> onErrorReturnItemWithLog(@NotNull Observable<T> observable, @NotNull T t) {
        Intrinsics.checkNotNullParameter(observable, "<this>");
        Intrinsics.checkNotNullParameter(t, "t");
        Observable<T> onErrorReturnItem = observable.doOnError(C7128h.f40761e).onErrorReturnItem(t);
        Intrinsics.checkNotNullExpressionValue(onErrorReturnItem, "onErrorReturnItem(...)");
        return onErrorReturnItem;
    }

    @NotNull
    public static final <T> Observable<T> onErrorWithFileLog(@NotNull Observable<T> observable, @NotNull String tag) {
        Intrinsics.checkNotNullParameter(observable, "<this>");
        Intrinsics.checkNotNullParameter(tag, "tag");
        Observable<T> doOnError = observable.doOnError(new C7129i(tag));
        Intrinsics.checkNotNullExpressionValue(doOnError, "doOnError(...)");
        return doOnError;
    }

    @NotNull
    public static final Observable<View> postDelayObservable(@NotNull final View view, int i) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        final BehaviorSubject create = BehaviorSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        view.postDelayed(new Runnable() { // from class: com.sunia.HTREnginev2.cyl
            @Override // java.lang.Runnable
            public final void run() {
                RxjavaKt.m31931d(BehaviorSubject.this, view);
            }
        }, i);
        return create;
    }

    public static final void runInUI(@NotNull Runnable runnable) {
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        Scheduler mainThread = AndroidSchedulers.mainThread();
        Intrinsics.checkNotNullExpressionValue(mainThread, "mainThread(...)");
        runOnScheduler(mainThread, runnable);
    }

    public static final void runOnScheduler(@NotNull Scheduler scheduler, @NotNull Runnable runnable) {
        Intrinsics.checkNotNullParameter(scheduler, "scheduler");
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        Observable.fromRunnable(runnable).subscribeOn(scheduler).subscribe();
    }

    public static final void runWithRx(@NotNull Function0<Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        Observable.just(Unit.INSTANCE).doOnNext(new C7130j(block)).subscribe();
    }

    public static final void safelyDispose(@Nullable Disposable disposable) {
        if (isDisposed(disposable) || disposable == null) {
            return;
        }
        disposable.dispose();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <T> Disposable subscribeWithDefault(@NotNull Observable<T> observable, @NotNull Consumer<T> onNext, @NotNull Consumer<? super Throwable> onError, @NotNull Action onComplete) {
        Intrinsics.checkNotNullParameter(observable, "<this>");
        Intrinsics.checkNotNullParameter(onNext, "onNext");
        Intrinsics.checkNotNullParameter(onError, "onError");
        Intrinsics.checkNotNullParameter(onComplete, "onComplete");
        Disposable subscribe = observable.subscribe(onNext, onError, onComplete);
        Intrinsics.checkNotNullExpressionValue(subscribe, "subscribe(...)");
        return subscribe;
    }

    public static /* synthetic */ Disposable subscribeWithDefault$default(Observable observable, Consumer consumer, Consumer consumer2, Action EMPTY_ACTION, int i, Object obj) {
        if ((i & 1) != 0) {
            consumer = Functions.emptyConsumer();
            Intrinsics.checkNotNullExpressionValue(consumer, "emptyConsumer(...)");
        }
        if ((i & 2) != 0) {
            consumer2 = defaultOnError();
        }
        if ((i & 4) != 0) {
            EMPTY_ACTION = Functions.EMPTY_ACTION;
            Intrinsics.checkNotNullExpressionValue(EMPTY_ACTION, "EMPTY_ACTION");
        }
        return subscribeWithDefault(observable, consumer, consumer2, EMPTY_ACTION);
    }

    @NotNull
    public static final <T> Observable<T> takeLastOne(@NotNull Observable<T> observable) {
        Intrinsics.checkNotNullParameter(observable, "<this>");
        Observable<T> takeLast = observable.takeLast(1);
        Intrinsics.checkNotNullExpressionValue(takeLast, "takeLast(...)");
        return takeLast;
    }

    public static final <T> boolean testSafety(@Nullable Predicate<T> predicate, @NotNull T item) {
        Intrinsics.checkNotNullParameter(item, "item");
        if (predicate == null) {
            return true;
        }
        try {
            return predicate.test(item);
        } catch (Exception unused) {
            return false;
        }
    }

    @NotNull
    public static final <T> Observable<List<T>> touchBuffer(@NotNull Observable<T> observable, long j, int i, @NotNull Scheduler scheduler) {
        Intrinsics.checkNotNullParameter(observable, "<this>");
        Intrinsics.checkNotNullParameter(scheduler, "scheduler");
        Observable<List<T>> buffer = observable.buffer(j, TimeUnit.MILLISECONDS, scheduler, i);
        Intrinsics.checkNotNullExpressionValue(buffer, "buffer(...)");
        return buffer;
    }

    public static /* synthetic */ Observable touchBuffer$default(Observable observable, long j, int i, Scheduler scheduler, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            j = 10;
        }
        if ((i2 & 2) != 0) {
            i = 15;
        }
        if ((i2 & 4) != 0) {
            scheduler = Schedulers.computation();
            Intrinsics.checkNotNullExpressionValue(scheduler, "computation(...)");
        }
        return touchBuffer(observable, j, i, scheduler);
    }

    @NotNull
    public static final <T> Observable<T> doOnNextIf(@NotNull Observable<T> observable, @NotNull final TimeGuard timeGuard, @NotNull Consumer<T> doOnNext) {
        Intrinsics.checkNotNullParameter(observable, "<this>");
        Intrinsics.checkNotNullParameter(timeGuard, "timeGuard");
        Intrinsics.checkNotNullParameter(doOnNext, "doOnNext");
        return doOnNextIf(observable, new Function1<T, Boolean>() { // from class: com.onyx.android.sdk.base.extension.RxjavaKt$doOnNextIf$2
            {
                super(1);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull T it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(!TimeGuard.this.check());
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(Object obj) {
                return invoke((RxjavaKt$doOnNextIf$2<T>) obj);
            }
        }, doOnNext);
    }

    @NotNull
    public static final <T> Observable<Object> flatMapIf(@NotNull Observable<T> observable, @NotNull Function1<? super T, Boolean> predicate, @NotNull Function1<? super T, ? extends Observable<? extends Object>> nextObservable) {
        Intrinsics.checkNotNullParameter(observable, "<this>");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        Intrinsics.checkNotNullParameter(nextObservable, "nextObservable");
        return flatMapIf(observable, predicate, nextObservable, new Function1<T, Observable<? extends Object>>() { // from class: com.onyx.android.sdk.base.extension.RxjavaKt$flatMapIf$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Observable<? extends Object> invoke(@NotNull T it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                Observable<? extends Object> just = Observable.just(it2);
                Intrinsics.checkNotNullExpressionValue(just, "just(...)");
                return just;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Observable<? extends Object> invoke(Object obj) {
                return invoke((RxjavaKt$flatMapIf$2<T>) obj);
            }
        });
    }

    public static final <T> void done(@NotNull ObservableEmitter<T> observableEmitter, @NotNull T item) {
        Intrinsics.checkNotNullParameter(observableEmitter, "<this>");
        Intrinsics.checkNotNullParameter(item, "item");
        observableEmitter.onNext(item);
        observableEmitter.onComplete();
    }

    @NotNull
    public static final <T> Observable<Object> flatMapIf(@NotNull Observable<T> observable, @NotNull Function1<? super T, Boolean> predicate, @NotNull Function1<? super T, ? extends Observable<? extends Object>> trueObservable, @NotNull Function1<? super T, ? extends Observable<? extends Object>> falseObservable) {
        Intrinsics.checkNotNullParameter(observable, "<this>");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        Intrinsics.checkNotNullParameter(trueObservable, "trueObservable");
        Intrinsics.checkNotNullParameter(falseObservable, "falseObservable");
        Observable<R> flatMap = observable.flatMap(new C7126f(predicate, trueObservable, falseObservable));
        Intrinsics.checkNotNullExpressionValue(flatMap, "flatMap(...)");
        return flatMap;
    }
}
