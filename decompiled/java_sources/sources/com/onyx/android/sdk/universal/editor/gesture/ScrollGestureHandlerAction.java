package com.onyx.android.sdk.universal.editor.gesture;

import androidx.core.app.NotificationCompat;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.p018rx.ObservableHolder;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.Benchmark;
import com.onyx.android.sdk.base.utils.histogram.TimeHistogram;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.boxmanager.BoxManager;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.data.ScrollArgs;
import com.onyx.android.sdk.universal.editor.events.app.FlingEvent;
import com.onyx.android.sdk.universal.editor.events.app.ScrollBeginEvent;
import com.onyx.android.sdk.universal.editor.events.app.ScrollEndEvent;
import com.onyx.android.sdk.universal.editor.events.app.ScrollingEvent;
import com.onyx.android.sdk.universal.editor.events.app.StopScrollEvent;
import com.onyx.android.sdk.universal.editor.events.app.VirtualDocViewInfoEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.WorkBundleKt;
import com.onyx.android.sdk.universal.editor.request.ScrollToRequest;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 =2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001=B\u000f\u0012\u0006\u0010:\u001a\u000209¢\u0006\u0004\b;\u0010<J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00000\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0002H\u0002J\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00000\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\r\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u0004H\u0002J\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u000e\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00000\u0006H\u0014J\u0010\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u0012H\u0014J\b\u0010\u0015\u001a\u00020\tH\u0016J\u0010\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u0016H\u0007J\u0010\u0010\u001a\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u0019H\u0007J\u0010\u0010\u001c\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u001bH\u0007J\u0010\u0010\u001e\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u001dH\u0007J\u0010\u0010 \u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u001fH\u0007R\u001c\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00040!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u0018\u0010'\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&R\u0016\u0010+\u001a\u00020(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010*R\u0016\u0010-\u001a\u00020(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010*R\u0016\u0010/\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010.R\u0018\u00102\u001a\u0004\u0018\u0001008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u00101R\u0016\u00105\u001a\u0002038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u00104R\u0016\u00108\u001a\u0002068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u00107¨\u0006>"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "", "q", "Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;", "args", "Lio/reactivex/rxjava3/core/Observable;", GoogleApiAvailabilityLight.f29016b, NotificationCompat.CATEGORY_MESSAGE, "", "log", "p", "scrollArgs", "m", C4921e.f26528e, "", "l", BaiduYunConstant.CREATE, "Lio/reactivex/rxjava3/disposables/Disposable;", "disposable", "onSubscribe", "dispose", "Lcom/onyx/android/sdk/universal/editor/events/app/ScrollBeginEvent;", NotificationCompat.CATEGORY_EVENT, "onScrollBeginEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/ScrollingEvent;", "onScrollingEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/ScrollEndEvent;", "onScrollEndEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/FlingEvent;", "onFlingEventEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/StopScrollEvent;", "onStopScrollEvent", "Lcom/onyx/android/sdk/base/rx/ObservableHolder;", C6999h.f39688c, "Lcom/onyx/android/sdk/base/rx/ObservableHolder;", "scrollObservable", "i", "Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;", "currentScrollArgs", "", "j", "F", "scrollBeginX", C4921e.f26537n, "scrollBeginY", Constants.STRING_SIG, "scrollBeginBoxId", "Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;", "Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;", "flingAction", "", "J", "stopTimeStamp", "Lcom/onyx/android/sdk/base/data/Size;", "Lcom/onyx/android/sdk/base/data/Size;", "viewportSize", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ScrollGestureHandlerAction extends RxBaseAppAction<ScrollGestureHandlerAction> {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: p */
    public static final boolean f52188p = false;

    /* renamed from: q */
    @NotNull
    public static final Lazy<TimeHistogram> f52189q;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public ObservableHolder<ScrollArgs> scrollObservable;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public ScrollArgs currentScrollArgs;

    /* renamed from: j, reason: from kotlin metadata */
    public float scrollBeginX;

    /* renamed from: k, reason: from kotlin metadata */
    public float scrollBeginY;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public String scrollBeginBoxId;

    /* renamed from: m, reason: from kotlin metadata */
    @Nullable
    public FlingAction flingAction;

    /* renamed from: n, reason: from kotlin metadata */
    public long stopTimeStamp;

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public Size viewportSize;

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000b\u0010\fR\u001b\u0010\u0007\u001a\u00020\u00028BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction$Companion;", "", "Lcom/onyx/android/sdk/base/utils/histogram/TimeHistogram;", "scrollToDisplayTimeHistogram$delegate", "Lkotlin/Lazy;", "a", "()Lcom/onyx/android/sdk/base/utils/histogram/TimeHistogram;", "scrollToDisplayTimeHistogram", "", "DEBUG_LOG", Constants.HASIDCALL_INDEX_SIG, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public final TimeHistogram m40972a() {
            return (TimeHistogram) ScrollGestureHandlerAction.f52189q.getValue();
        }

        public Companion() {
        }
    }

    @SourceDebugExtension({"SMAP\nScrollGestureHandlerAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScrollGestureHandlerAction.kt\ncom/onyx/android/sdk/universal/editor/gesture/ScrollGestureHandlerAction$create$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,226:1\n1#2:227\n*E\n"})
    /* renamed from: com.onyx.android.sdk.universal.editor.gesture.ScrollGestureHandlerAction$a */
    /* loaded from: classes8.dex */
    public static final class C10423a<T, R> implements Function {

        /* renamed from: com.onyx.android.sdk.universal.editor.gesture.ScrollGestureHandlerAction$a$a */
        /* loaded from: classes8.dex */
        public static final class a<T> implements Consumer {

            /* renamed from: e */
            public final /* synthetic */ ScrollGestureHandlerAction f52199e;

            public a(ScrollGestureHandlerAction scrollGestureHandlerAction) {
                this.f52199e = scrollGestureHandlerAction;
            }

            @Override // io.reactivex.rxjava3.functions.Consumer
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final void accept(@NotNull FlingAction it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                this.f52199e.log(ScrollGestureHandlerAction.INSTANCE.m40972a().getTimeHistogramIf());
            }
        }

        public C10423a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends RxBaseAppAction<?>> apply(@NotNull ScrollArgs args) {
            Intrinsics.checkNotNullParameter(args, "args");
            if (!ScrollGestureHandlerAction.this.m40966l(args)) {
                return Observable.just(ScrollGestureHandlerAction.this);
            }
            int action = args.getAction();
            if (action == 0) {
                return ScrollGestureHandlerAction.this.m40968n(args);
            }
            if (action == 1) {
                return ScrollGestureHandlerAction.this.m40970p(args);
            }
            if (action != 2) {
                if (action == 3) {
                    return new AfterStopScrollAction(ScrollGestureHandlerAction.this.getEditorBundle()).build();
                }
                Observable just = Observable.just(ScrollGestureHandlerAction.this);
                Intrinsics.checkNotNullExpressionValue(just, "just(...)");
                return just;
            }
            FlingAction flingAction = new FlingAction(ScrollGestureHandlerAction.this.getEditorBundle(), args);
            ScrollGestureHandlerAction.this.flingAction = flingAction;
            Observable<FlingAction> doOnNext = flingAction.build().doOnNext(new a(ScrollGestureHandlerAction.this));
            Intrinsics.checkNotNull(doOnNext);
            return doOnNext;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.gesture.ScrollGestureHandlerAction$b */
    /* loaded from: classes8.dex */
    public static final class C10424b<T, R> implements Function {
        public C10424b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ScrollGestureHandlerAction apply(@NotNull RxBaseAppAction<?> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ScrollGestureHandlerAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.gesture.ScrollGestureHandlerAction$c */
    /* loaded from: classes8.dex */
    public static final class C10425c<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ ScrollArgs f52202f;

        public C10425c(ScrollArgs scrollArgs) {
            this.f52202f = scrollArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ScrollGestureHandlerAction apply(@NotNull ScrollGestureHandlerAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ScrollGestureHandlerAction.this.currentScrollArgs = this.f52202f;
            BoxManager obtainBoxManager = WorkBundleKt.obtainBoxManager(ScrollGestureHandlerAction.this.getEditorBundle().getWorkBundle());
            BoxInfo viewport = obtainBoxManager.getViewport();
            ScrollGestureHandlerAction.this.scrollBeginX = viewport.left();
            ScrollGestureHandlerAction.this.scrollBeginY = viewport.top();
            ScrollGestureHandlerAction.this.scrollBeginBoxId = obtainBoxManager.getCurrentBoxId();
            ScrollArgs scrollArgs = ScrollGestureHandlerAction.this.currentScrollArgs;
            if (scrollArgs != null) {
                scrollArgs.setNewX(ScrollGestureHandlerAction.this.scrollBeginX);
            }
            ScrollArgs scrollArgs2 = ScrollGestureHandlerAction.this.currentScrollArgs;
            if (scrollArgs2 != null) {
                scrollArgs2.setNewY(ScrollGestureHandlerAction.this.scrollBeginY);
            }
            ScrollGestureHandlerAction scrollGestureHandlerAction = ScrollGestureHandlerAction.this;
            scrollGestureHandlerAction.viewportSize = scrollGestureHandlerAction.getEditorBundle().getWorkBundle().getOpenDocArgs().getViewSize();
            ScrollGestureHandlerAction.this.log("beforeScroll, scrollBeginX = " + ScrollGestureHandlerAction.this.scrollBeginX + ", scrollBeginY = " + ScrollGestureHandlerAction.this.scrollBeginY);
            return ScrollGestureHandlerAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.gesture.ScrollGestureHandlerAction$d */
    /* loaded from: classes8.dex */
    public static final class C10426d<T> implements Consumer {
        public C10426d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ScrollArgs it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ScrollGestureHandlerAction.this.m40967m(it2);
            ScrollGestureHandlerAction.this.currentScrollArgs = it2;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.gesture.ScrollGestureHandlerAction$f */
    /* loaded from: classes8.dex */
    public static final class C10428f<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ ScrollArgs f52206f;

        public C10428f(ScrollArgs scrollArgs) {
            this.f52206f = scrollArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ScrollArgs it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.renderManager(ScrollGestureHandlerAction.this.getEditorBundle()).displayScrollingBoxList(ScrollGestureHandlerAction.this.getEditorBundle(), this.f52206f.getVisibleBoxList());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.gesture.ScrollGestureHandlerAction$g */
    /* loaded from: classes8.dex */
    public static final class C10429g<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ Benchmark f52207e;

        public C10429g(Benchmark benchmark) {
            this.f52207e = benchmark;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ScrollArgs it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ScrollGestureHandlerAction.INSTANCE.m40972a().addTimeIf(this.f52207e.duration());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.gesture.ScrollGestureHandlerAction$h */
    /* loaded from: classes8.dex */
    public static final class C10430h<T, R> implements Function {
        public C10430h() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ScrollGestureHandlerAction apply(@NotNull ScrollArgs it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ScrollGestureHandlerAction.this;
        }
    }

    static {
        Lazy<TimeHistogram> lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<TimeHistogram>() { // from class: com.onyx.android.sdk.universal.editor.gesture.ScrollGestureHandlerAction$Companion$scrollToDisplayTimeHistogram$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final TimeHistogram invoke() {
                return new TimeHistogram("scrollToDisplay", false);
            }
        });
        f52189q = lazy;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScrollGestureHandlerAction(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.scrollObservable = new ObservableHolder<>();
        this.scrollBeginBoxId = "";
        this.stopTimeStamp = System.currentTimeMillis();
        this.viewportSize = EditorBundleKt.viewSize(editorBundle);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ScrollGestureHandlerAction> create() {
        Observable<ScrollGestureHandlerAction> map = this.scrollObservable.getObservable().concatMap(new C10423a()).map(new C10424b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction, io.reactivex.rxjava3.disposables.Disposable
    public void dispose() {
        super.dispose();
        EditorBundleKt.unregister(getEditorBundle(), this);
    }

    /* renamed from: l */
    public final boolean m40966l(ScrollArgs args) {
        boolean z = args.getTimeStamp() >= this.stopTimeStamp;
        log("stopTimeStamp = " + this.stopTimeStamp + ", " + args.getTimeStamp() + ", pass = " + z + ", " + args.getAction());
        if (!z && args.getAction() == 2) {
            RxBaseAction.execute$default(new AfterStopScrollAction(getEditorBundle()), null, null, null, 7, null);
        }
        return z;
    }

    public final void log(String msg) {
    }

    /* renamed from: m */
    public final void m40967m(ScrollArgs scrollArgs) {
        if (Intrinsics.areEqual(this.viewportSize, getEditorBundle().getWorkBundle().getOpenDocArgs().getViewSize())) {
            return;
        }
        this.viewportSize = getEditorBundle().getWorkBundle().getOpenDocArgs().getViewSize();
        ScrollArgs scrollArgs2 = this.currentScrollArgs;
        if (scrollArgs2 != null) {
            BoxInfo viewport = WorkBundleKt.obtainBoxManager(getEditorBundle().getWorkBundle()).getViewport();
            if (viewport.left() == scrollArgs2.getNewX()) {
                if (viewport.top() == scrollArgs2.getNewY()) {
                    return;
                }
            }
            float left = viewport.left() - scrollArgs2.getNewX();
            float pVar = viewport.top() - scrollArgs2.getNewY();
            log("onViewportRectChanged, scroll deltaX = " + left + ", deltaY = " + pVar);
            float f = this.scrollBeginX + left;
            this.scrollBeginX = f;
            this.scrollBeginY = this.scrollBeginY + pVar;
            scrollArgs.setNewX(f + scrollArgs.getOffsetX());
            scrollArgs.setNewY(this.scrollBeginY + scrollArgs.getOffsetY());
        }
    }

    /* renamed from: n */
    public final Observable<ScrollGestureHandlerAction> m40968n(ScrollArgs args) {
        Observable<ScrollGestureHandlerAction> map = Observable.just(this).observeOn(EditorBundleKt.coreScheduler(getEditorBundle())).map(new C10425c(args));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: o */
    public final ScrollArgs m40969o(ScrollArgs args) {
        ScrollToRequest scrollToRequest = new ScrollToRequest(getEditorBundle().getWorkBundle(), args.getNewX(), args.getNewY(), args.getSource());
        scrollToRequest.execute2();
        args.setVisibleBoxList(scrollToRequest.getVirtualDocViewInfo().getVisibleBoxInfoList());
        EditorBundleKt.postEvent(getEditorBundle(), new VirtualDocViewInfoEvent(scrollToRequest.getVirtualDocViewInfo(), true));
        return args;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onFlingEventEvent(@NotNull FlingEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        getEditorBundle().getUiBundle().getUiStateInfo().setFling(true);
        ScrollArgs createFling = ScrollArgs.INSTANCE.createFling(event.getVelocityX(), event.getVelocityY(), this.scrollBeginBoxId);
        createFling.setScrollBeginX(this.scrollBeginX);
        createFling.setScrollBeginY(this.scrollBeginY);
        createFling.setUpToDownTime(event.getUpToDownTime());
        this.scrollObservable.onNext(createFling);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onScrollBeginEvent(@NotNull ScrollBeginEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.scrollObservable.onNext(ScrollArgs.INSTANCE.createScrollBegin(event.getOffsetX(), event.getOffsetY()));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onScrollEndEvent(@NotNull ScrollEndEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.scrollObservable.onNext(ScrollArgs.INSTANCE.createScrollEnd());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onScrollingEvent(@NotNull ScrollingEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        ScrollArgs createScrolling = ScrollArgs.INSTANCE.createScrolling(event.getOffsetX(), event.getOffsetY());
        createScrolling.setSource(event.getSource());
        this.scrollObservable.onNext(createScrolling);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onStopScrollEvent(@NotNull StopScrollEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.stopTimeStamp = System.currentTimeMillis();
        FlingAction flingAction = this.flingAction;
        if (flingAction != null) {
            flingAction.stopFling();
        }
        this.flingAction = null;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    public void onSubscribe(@NotNull Disposable disposable) {
        Intrinsics.checkNotNullParameter(disposable, "disposable");
        super.onSubscribe(disposable);
        EditorBundleKt.register(getEditorBundle(), this);
    }

    /* renamed from: p */
    public final Observable<ScrollGestureHandlerAction> m40970p(ScrollArgs args) {
        args.setNewX(this.scrollBeginX + args.getOffsetX());
        args.setNewY(this.scrollBeginY + args.getOffsetY());
        Observable doOnNext = Observable.just(args).observeOn(EditorBundleKt.coreScheduler(getEditorBundle())).doOnNext(new C10426d()).map(new Function() { // from class: com.onyx.android.sdk.universal.editor.gesture.ScrollGestureHandlerAction.e
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final ScrollArgs apply(@NotNull ScrollArgs p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return ScrollGestureHandlerAction.this.m40969o(p0);
            }
        }).observeOn(AndroidSchedulers.mainThread()).doOnNext(new C10428f(args)).doOnNext(new C10429g(new Benchmark()));
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        Observable<ScrollGestureHandlerAction> map = RxjavaKt.onErrorReturnItemWithLog(doOnNext, args).map(new C10430h());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: q */
    public final String m40971q() {
        return AnyKt.toSimpleNameString(this);
    }
}
