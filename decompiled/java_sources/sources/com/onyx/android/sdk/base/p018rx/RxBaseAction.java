package com.onyx.android.sdk.base.p018rx;

import android.content.Context;
import android.os.Looper;
import androidx.credentials.provider.utils.PrivilegedApp;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.common.wakelock.EmptyWakeLockHolder;
import com.onyx.android.sdk.base.common.wakelock.WakeLockHolder;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.DebugKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.Benchmark;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.internal.functions.Functions;
import io.reactivex.rxjava3.schedulers.Schedulers;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\b&\u0018\u0000 5*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0003:\u00015B\u0007¢\u0006\u0004\b3\u00104J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\b\u0010\b\u001a\u00020\u0007H\u0002J\b\u0010\n\u001a\u00020\tH\u0002J\b\u0010\u000b\u001a\u00020\u0004H\u0002J\b\u0010\f\u001a\u00020\u0004H\u0002J\u000e\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\rH$J\u000e\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\rH\u0016J\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\rJ\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0003H\u0014J2\u0010\u0019\u001a\u00020\u00032\u000e\b\u0002\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028\u00000\u00132\u0010\b\u0002\u0010\u0016\u001a\n\u0012\u0006\b\u0000\u0012\u00020\u00150\u00132\b\b\u0002\u0010\u0018\u001a\u00020\u0017J\u0010\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u0015H\u0014J\b\u0010\u001b\u001a\u00020\u0004H\u0014J\u000e\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0003J\b\u0010\u001d\u001a\u00020\u0004H\u0016J\b\u0010\u001f\u001a\u00020\u001eH\u0016J\u0006\u0010!\u001a\u00020 J\b\u0010\"\u001a\u00020 H\u0016J\u0006\u0010$\u001a\u00020#R\u0014\u0010%\u001a\u00020\u00078\u0002X\u0082D¢\u0006\u0006\n\u0004\b%\u0010&R\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010'R\u0016\u0010)\u001a\u00020(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010*R\u0016\u0010+\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,R\u001b\u00102\u001a\u00020-8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b.\u0010/\u001a\u0004\b0\u00101¨\u00066"}, m61528d2 = {"Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "", "T", "Lio/reactivex/rxjava3/disposables/Disposable;", "", "c", C4921e.f26537n, "", "j", "Lcom/onyx/android/sdk/base/common/wakelock/WakeLockHolder;", C6999h.f39688c, "e", "d", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, PrivilegedApp.f6529f, "buildFast", "disposable", "onSubscribe", "Lio/reactivex/rxjava3/functions/Consumer;", "onNext", "", "onError", "Lio/reactivex/rxjava3/functions/Action;", "onComplete", "execute", "throwable", "onFinally", "addDisposable", "dispose", "", "isDisposed", "Lio/reactivex/rxjava3/core/Scheduler;", "trampolineMainThread", "getMainUIScheduler", "Landroid/content/Context;", "getAppContext", "ONYX_ACTION_PREFIX", Constants.STRING_SIG, "Lio/reactivex/rxjava3/disposables/Disposable;", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "compositeDisposable", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "wakeLockHolder", "Lcom/onyx/android/sdk/base/common/wakelock/WakeLockHolder;", "Lcom/onyx/android/sdk/base/utils/Benchmark;", "benchmark$delegate", "Lkotlin/Lazy;", "i", "()Lcom/onyx/android/sdk/base/utils/Benchmark;", "benchmark", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public abstract class RxBaseAction<T> implements Disposable {
    private static Context appContext;
    private static boolean enableBenchmark;

    /* renamed from: benchmark$delegate, reason: from kotlin metadata */
    @NotNull
    private final Lazy benchmark;

    @Nullable
    private Disposable disposable;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    private static int reportTimeMs = 10;

    @NotNull
    private final String ONYX_ACTION_PREFIX = "onyx_";

    @NotNull
    private CompositeDisposable compositeDisposable = new CompositeDisposable();

    @NotNull
    private WakeLockHolder wakeLockHolder = m31973h();

    @Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0004J\u0006\u0010\u0014\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.¢\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/base/rx/RxBaseAction$Companion;", "", "()V", "appContext", "Landroid/content/Context;", "enableBenchmark", "", "getEnableBenchmark", Constants.BOOLEAN_VALUE_SIG, "setEnableBenchmark", "(Z)V", "reportTimeMs", "", "getReportTimeMs", "()I", "setReportTimeMs", "(I)V", "init", "", "context", "isInitializedAppContext", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean getEnableBenchmark() {
            return RxBaseAction.enableBenchmark;
        }

        public final int getReportTimeMs() {
            return RxBaseAction.reportTimeMs;
        }

        public final void init(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            Context applicationContext = context.getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
            RxBaseAction.appContext = applicationContext;
        }

        public final boolean isInitializedAppContext() {
            return RxBaseAction.appContext != null;
        }

        public final void setEnableBenchmark(boolean z) {
            RxBaseAction.enableBenchmark = z;
        }

        public final void setReportTimeMs(int i) {
            RxBaseAction.reportTimeMs = i;
        }

        public Companion() {
        }
    }

    /* renamed from: com.onyx.android.sdk.base.rx.RxBaseAction$a */
    /* loaded from: classes7.dex */
    public static final class C7131a<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ RxBaseAction<T> f40786e;

        public C7131a(RxBaseAction<T> rxBaseAction) {
            this.f40786e = rxBaseAction;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a */
        public final void accept(@NotNull Disposable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f40786e.onSubscribe(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.base.rx.RxBaseAction$b */
    /* loaded from: classes7.dex */
    public static final class C7132b<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ RxBaseAction<T> f40787e;

        public C7132b(RxBaseAction<T> rxBaseAction) {
            this.f40787e = rxBaseAction;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f40787e.onError(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.base.rx.RxBaseAction$c */
    /* loaded from: classes7.dex */
    public static final class C7133c<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ RxBaseAction<T> f40788e;

        public C7133c(RxBaseAction<T> rxBaseAction) {
            this.f40788e = rxBaseAction;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a */
        public final void accept(@NotNull Disposable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f40788e.onSubscribe(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.base.rx.RxBaseAction$d */
    /* loaded from: classes7.dex */
    public static final class C7134d<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ RxBaseAction<T> f40789e;

        public C7134d(RxBaseAction<T> rxBaseAction) {
            this.f40789e = rxBaseAction;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f40789e.onError(it2);
        }
    }

    public RxBaseAction() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Benchmark>() { // from class: com.onyx.android.sdk.base.rx.RxBaseAction$benchmark$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Benchmark invoke() {
                return new Benchmark();
            }
        });
        this.benchmark = lazy;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Disposable execute$default(RxBaseAction rxBaseAction, Consumer consumer, Consumer consumer2, Action EMPTY_ACTION, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: execute");
        }
        if ((i & 1) != 0) {
            consumer = Functions.emptyConsumer();
            Intrinsics.checkNotNullExpressionValue(consumer, "emptyConsumer(...)");
        }
        if ((i & 2) != 0) {
            consumer2 = RxjavaKt.defaultOnError();
        }
        if ((i & 4) != 0) {
            EMPTY_ACTION = Functions.EMPTY_ACTION;
            Intrinsics.checkNotNullExpressionValue(EMPTY_ACTION, "EMPTY_ACTION");
        }
        return rxBaseAction.execute(consumer, consumer2, EMPTY_ACTION);
    }

    /* renamed from: f */
    public static final void m31968f(RxBaseAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.onFinally();
    }

    /* renamed from: g */
    public static final void m31969g(RxBaseAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.onFinally();
    }

    public final void addDisposable(@NotNull Disposable disposable) {
        Intrinsics.checkNotNullParameter(disposable, "disposable");
        this.disposable = disposable;
        if (this.compositeDisposable.isDisposed()) {
            this.compositeDisposable = new CompositeDisposable();
        }
        this.compositeDisposable.add(disposable);
    }

    @NotNull
    public Observable<T> build() {
        Observable<T> doFinally = create().observeOn(getMainUIScheduler()).doOnSubscribe(new C7131a(this)).subscribeOn(getMainUIScheduler()).doOnError(new C7132b(this)).doFinally(new Action() { // from class: com.sunia.HTREnginev2.tvl
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                RxBaseAction.m31968f(RxBaseAction.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }

    @NotNull
    public final Observable<T> buildFast() {
        Observable<T> doFinally = create().doOnSubscribe(new C7133c(this)).doOnError(new C7134d(this)).doFinally(new Action() { // from class: com.sunia.HTREnginev2.uvl
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                RxBaseAction.m31969g(RxBaseAction.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return doFinally;
    }

    /* renamed from: c */
    public final void m31970c() {
        if (INSTANCE.isInitializedAppContext()) {
            this.wakeLockHolder.acquireWakeLock(getAppContext(), m31975j());
        }
    }

    @NotNull
    public abstract Observable<T> create();

    /* renamed from: d */
    public final void m31971d() {
        if (enableBenchmark && m31974i().duration() >= reportTimeMs) {
            m31974i().report(RxBaseAction.class.getSimpleName() + ": " + AnyKt.toSimpleNameString(this));
        }
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public void dispose() {
        if (this.compositeDisposable.size() <= 0 && this.disposable == null) {
            Debug.INSTANCE.m32059w(getClass(), AnyKt.toSimpleNameString(this) + " dispose fail, as compositeDisposable or disposable is empty", new Object[0]);
        }
        Disposable disposable = this.disposable;
        if (disposable != null) {
            disposable.dispose();
        }
        this.compositeDisposable.dispose();
    }

    /* renamed from: e */
    public final void m31972e() {
        if (enableBenchmark) {
            m31974i().restart();
            if (Debug.INSTANCE.getDebug()) {
                m31974i().reportDebug(RxBaseAction.class.getSimpleName() + ": " + AnyKt.toSimpleNameString(this) + ", onSubscribe");
            }
        }
    }

    @NotNull
    public final Disposable execute(@NotNull Consumer<T> onNext, @NotNull Consumer<? super Throwable> onError, @NotNull Action onComplete) {
        Intrinsics.checkNotNullParameter(onNext, "onNext");
        Intrinsics.checkNotNullParameter(onError, "onError");
        Intrinsics.checkNotNullParameter(onComplete, "onComplete");
        Disposable subscribeWithDefault = RxjavaKt.subscribeWithDefault(build(), onNext, onError, onComplete);
        addDisposable(subscribeWithDefault);
        return subscribeWithDefault;
    }

    @NotNull
    public final Context getAppContext() {
        Context context = appContext;
        if (context != null) {
            return context;
        }
        Intrinsics.throwUninitializedPropertyAccessException("appContext");
        return null;
    }

    @NotNull
    public Scheduler getMainUIScheduler() {
        Scheduler mainThread = AndroidSchedulers.mainThread();
        Intrinsics.checkNotNullExpressionValue(mainThread, "mainThread(...)");
        return mainThread;
    }

    /* renamed from: h */
    public final WakeLockHolder m31973h() {
        return new EmptyWakeLockHolder();
    }

    /* renamed from: i */
    public final Benchmark m31974i() {
        return (Benchmark) this.benchmark.getValue();
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public boolean isDisposed() {
        return RxjavaKt.isDisposed(this.disposable);
    }

    /* renamed from: j */
    public final String m31975j() {
        return this.ONYX_ACTION_PREFIX + getClass().getName();
    }

    /* renamed from: k */
    public final void m31976k() {
        this.wakeLockHolder.releaseWakeLock();
    }

    public void onError(@NotNull Throwable throwable) {
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        DebugKt.eIgnorable(Debug.INSTANCE, throwable);
    }

    public void onFinally() {
        m31976k();
        m31971d();
    }

    public void onSubscribe(@NotNull Disposable disposable) {
        Intrinsics.checkNotNullParameter(disposable, "disposable");
        m31972e();
        addDisposable(disposable);
        m31970c();
    }

    @NotNull
    public final Scheduler trampolineMainThread() {
        if (!Intrinsics.areEqual(Looper.myLooper(), Looper.getMainLooper())) {
            return getMainUIScheduler();
        }
        Scheduler trampoline = Schedulers.trampoline();
        Intrinsics.checkNotNullExpressionValue(trampoline, "trampoline(...)");
        return trampoline;
    }
}
