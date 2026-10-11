package com.onyx.android.sdk.universal.editor.gesture;

import androidx.core.app.NotificationCompat;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.p018rx.RxScroller;
import com.onyx.android.sdk.base.p018rx.RxScrollerArgs;
import com.onyx.android.sdk.base.p018rx.RxScrollerInfo;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.boxmanager.BoxManager;
import com.onyx.android.sdk.geometry.data.BoxFlingArgs;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.universal.C8045R;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.DisplayActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.action.extension.DocOptionsActionsKt;
import com.onyx.android.sdk.universal.editor.config.AppConfig;
import com.onyx.android.sdk.universal.editor.data.ScrollArgs;
import com.onyx.android.sdk.universal.editor.data.VirtualDocViewInfo;
import com.onyx.android.sdk.universal.editor.events.app.VirtualDocViewInfoEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.WorkBundleKt;
import com.onyx.android.sdk.universal.editor.gesture.FlingAction;
import com.onyx.android.sdk.universal.editor.request.ScrollToRequest;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010,\u001a\u00020+\u0012\u0006\u0010\u0017\u001a\u00020\u0006¢\u0006\u0004\b-\u0010.J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0006\u0010\u0005\u001a\u00020\u0004J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00060\u00022\u0006\u0010\n\u001a\u00020\bH\u0002J\u0016\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00060\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0006H\u0002J\b\u0010\u0012\u001a\u00020\u0004H\u0002R\u0017\u0010\u0017\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0016\u0010\u001f\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0016\u0010#\u001a\u00020 8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R\u0016\u0010'\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&R\u0016\u0010)\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010\u001eR\u0016\u0010*\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u0014¨\u0006/"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/gesture/FlingAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "stopFling", "Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;", "args", "Lcom/onyx/android/sdk/base/rx/RxScrollerArgs;", "r", "rxScrollerArgs", "s", "t", "", NotificationCompat.CATEGORY_MESSAGE, "log", "scrollArgs", GoogleApiAvailabilityLight.f29016b, C4921e.f26528e, C6999h.f39688c, "Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;", "getFlingStartArgs", "()Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;", "flingStartArgs", "Lcom/onyx/android/sdk/base/rx/RxScroller;", "i", "Lcom/onyx/android/sdk/base/rx/RxScroller;", "scroller", "", "j", Constants.HASIDCALL_INDEX_SIG, "abortFling", "Lcom/onyx/android/sdk/base/rx/RxScrollerArgs$FlingActionType;", C4921e.f26537n, "Lcom/onyx/android/sdk/base/rx/RxScrollerArgs$FlingActionType;", "flingActionType", "Lcom/onyx/android/sdk/base/data/Size;", "l", "Lcom/onyx/android/sdk/base/data/Size;", "viewportSize", "m", "viewSizeChanged", "currentScrollArgs", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/ScrollArgs;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class FlingAction extends RxBaseAppAction<FlingAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final ScrollArgs flingStartArgs;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public RxScroller scroller;

    /* renamed from: j, reason: from kotlin metadata */
    public boolean abortFling;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public RxScrollerArgs.FlingActionType flingActionType;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public Size viewportSize;

    /* renamed from: m, reason: from kotlin metadata */
    public boolean viewSizeChanged;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public ScrollArgs currentScrollArgs;

    /* renamed from: com.onyx.android.sdk.universal.editor.gesture.FlingAction$a */
    /* loaded from: classes8.dex */
    public static final class C10388a<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ ScrollArgs f52131f;

        public C10388a(ScrollArgs scrollArgs) {
            this.f52131f = scrollArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends FlingAction> apply(@NotNull FlingAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new FlingAction(FlingAction.this.getEditorBundle(), this.f52131f).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.gesture.FlingAction$b */
    /* loaded from: classes8.dex */
    public static final class C10389b<T> implements Consumer {
        public C10389b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull VirtualDocViewInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.updateVirtualDocViewInfo(FlingAction.this.getEditorBundle(), it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.gesture.FlingAction$c */
    /* loaded from: classes8.dex */
    public static final class C10390c<T> implements Consumer {
        public C10390c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull VirtualDocViewInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.postEvent(FlingAction.this.getEditorBundle(), new VirtualDocViewInfoEvent(it2, false, 2, null));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.gesture.FlingAction$d */
    /* loaded from: classes8.dex */
    public static final class C10391d<T> implements Consumer {
        public C10391d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull VirtualDocViewInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            FlingAction.this.getEditorBundle().getUiBundle().getUiStateInfo().setFling(false);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.gesture.FlingAction$e */
    /* loaded from: classes8.dex */
    public static final class C10392e<T, R> implements Function {
        public C10392e() {
        }

        /* renamed from: a */
        public final void m40914a(@NotNull VirtualDocViewInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.renderManager(FlingAction.this.getEditorBundle()).displayBoxListAfterStopScroll(FlingAction.this.getEditorBundle(), it2.getVisibleBoxInfoList());
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            m40914a((VirtualDocViewInfo) obj);
            return Unit.INSTANCE;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.gesture.FlingAction$f */
    /* loaded from: classes8.dex */
    public static final class C10393f<T, R> implements Function {
        public C10393f() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DisplayActionsKt.preRender(FlingAction.this.getEditorBundle(), FlingAction.this.flingActionType);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.gesture.FlingAction$g */
    /* loaded from: classes8.dex */
    public static final class C10394g<T, R> implements Function {
        public C10394g() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final FlingAction apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return FlingAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.gesture.FlingAction$h */
    /* loaded from: classes8.dex */
    public static final class C10395h<T> implements Consumer {
        public C10395h() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ScrollArgs it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            FlingAction flingAction = FlingAction.this;
            flingAction.viewportSize = flingAction.getEditorBundle().getWorkBundle().getOpenDocArgs().getViewSize();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.gesture.FlingAction$j */
    /* loaded from: classes8.dex */
    public static final class C10397j<T, R> implements Function {
        public C10397j() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ScrollArgs> apply(@NotNull RxScrollerArgs it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return FlingAction.this.m40908s(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.gesture.FlingAction$l */
    /* loaded from: classes8.dex */
    public static final class C10399l<T> implements Consumer {
        public C10399l() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ScrollArgs it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.renderManager(FlingAction.this.getEditorBundle()).displayScrollingBoxList(FlingAction.this.getEditorBundle(), it2.getVisibleBoxList());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.gesture.FlingAction$m */
    /* loaded from: classes8.dex */
    public static final class C10400m<T> implements Predicate {

        /* renamed from: e */
        public static final C10400m<T> f52143e = new C10400m<>();

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull ScrollArgs it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return it2.getIsFlingFinished();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.gesture.FlingAction$n */
    /* loaded from: classes8.dex */
    public static final class C10401n<T> implements Consumer {
        public C10401n() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ScrollArgs it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            FlingAction.this.log(ScrollToRequest.INSTANCE.getScrollTimeHistogram());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.gesture.FlingAction$o */
    /* loaded from: classes8.dex */
    public static final class C10402o<T, R> implements Function {
        public C10402o() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final VirtualDocViewInfo apply(@NotNull ScrollArgs it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return WorkBundleKt.collectVirtualDocViewInfo(FlingAction.this.getEditorBundle().getWorkBundle());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.gesture.FlingAction$q */
    /* loaded from: classes8.dex */
    public static final class C10404q<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ ScrollArgs f52147e;

        /* renamed from: f */
        public final /* synthetic */ FlingAction f52148f;

        public C10404q(ScrollArgs scrollArgs, FlingAction flingAction) {
            this.f52147e = scrollArgs;
            this.f52148f = flingAction;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull ScrollToRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            this.f52147e.setVisibleBoxList(it2.getVirtualDocViewInfo().getVisibleBoxInfoList());
            EditorBundleKt.postEvent(this.f52148f.getEditorBundle(), new VirtualDocViewInfoEvent(it2.getVirtualDocViewInfo(), true));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.gesture.FlingAction$r */
    /* loaded from: classes8.dex */
    public static final class C10405r<T, R> implements Function {

        /* renamed from: e */
        public final /* synthetic */ ScrollArgs f52149e;

        public C10405r(ScrollArgs scrollArgs) {
            this.f52149e = scrollArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ScrollArgs apply(@NotNull ScrollToRequest it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return this.f52149e;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlingAction(@NotNull EditorBundle editorBundle, @NotNull ScrollArgs flingStartArgs) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(flingStartArgs, "flingStartArgs");
        this.flingStartArgs = flingStartArgs;
        this.flingActionType = RxScrollerArgs.FlingActionType.CONTINUOUS_SCROLL;
        this.viewportSize = AppConfig.INSTANCE.getDEFAULT_SIZE();
        this.currentScrollArgs = flingStartArgs;
    }

    /* renamed from: p */
    public static final void m40903p(FlingAction this$0, VirtualDocViewInfo it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        this$0.m40906o();
    }

    /* renamed from: q */
    public static final void m40904q(FlingAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.log("abortFling = " + this$0.abortFling);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<FlingAction> create() {
        getEditorBundle().getUiBundle().getUiStateInfo().setFling(true);
        Observable map = Observable.just(this.flingStartArgs).observeOn(EditorBundleKt.coreScheduler(getEditorBundle())).doOnNext(new C10395h()).map(new Function() { // from class: com.onyx.android.sdk.universal.editor.gesture.FlingAction.i
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final RxScrollerArgs apply(@NotNull ScrollArgs p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return FlingAction.this.m40907r(p0);
            }
        }).observeOn(AndroidSchedulers.mainThread()).flatMap(new C10397j()).flatMap(new Function() { // from class: com.onyx.android.sdk.universal.editor.gesture.FlingAction.k
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Observable<ScrollArgs> apply(@NotNull ScrollArgs p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return FlingAction.this.m40909t(p0);
            }
        }).doOnNext(new C10399l()).filter(C10400m.f52143e).observeOn(EditorBundleKt.coreScheduler(getEditorBundle())).doOnNext(new C10401n()).map(new C10402o());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        Observable doFinally = RxjavaKt.doOnNextIf(map, new Function1<VirtualDocViewInfo, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.gesture.FlingAction$create$9
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull VirtualDocViewInfo it2) {
                boolean z;
                Intrinsics.checkNotNullParameter(it2, "it");
                z = FlingAction.this.viewSizeChanged;
                return Boolean.valueOf(z);
            }
        }, new Consumer() { // from class: com.sunia.HTREnginev2.mng
            @Override // io.reactivex.rxjava3.functions.Consumer
            public final void accept(Object obj) {
                FlingAction.m40903p(FlingAction.this, (VirtualDocViewInfo) obj);
            }
        }).observeOn(AndroidSchedulers.mainThread()).doOnNext(new C10389b()).doOnNext(new C10390c()).doOnNext(new C10391d()).map(new C10392e()).flatMap(new C10393f()).map(new C10394g()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.nng
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                FlingAction.m40904q(FlingAction.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doFinally(...)");
        return RxjavaKt.onErrorReturnItemWithLog(doFinally, this);
    }

    @NotNull
    public final ScrollArgs getFlingStartArgs() {
        return this.flingStartArgs;
    }

    public final void log(String msg) {
    }

    /* renamed from: n */
    public final void m40905n(ScrollArgs scrollArgs) {
        if (this.viewSizeChanged || Intrinsics.areEqual(this.viewportSize, getEditorBundle().getWorkBundle().getOpenDocArgs().getViewSize())) {
            return;
        }
        this.viewSizeChanged = true;
        BoxInfo viewport = WorkBundleKt.obtainBoxManager(getEditorBundle().getWorkBundle()).getViewport();
        if (viewport.left() == scrollArgs.getNewX()) {
            if (viewport.top() == scrollArgs.getNewY()) {
                return;
            }
        }
        float left = viewport.left() - scrollArgs.getNewX();
        float pVar = viewport.top() - scrollArgs.getNewY();
        log("onViewportRectChanged, scroll deltaX = " + left + ", deltaY = " + pVar);
        this.currentScrollArgs.setOffsetX(left);
        this.currentScrollArgs.setOffsetY(pVar);
    }

    /* renamed from: o */
    public final void m40906o() {
        if (this.abortFling || DocOptionsActionsKt.isEnabledContinuousPage(getEditorBundle().getWorkBundle())) {
            return;
        }
        BoxManager obtainBoxManager = WorkBundleKt.obtainBoxManager(getEditorBundle().getWorkBundle());
        BoxInfo viewport = obtainBoxManager.getViewport();
        ScrollArgs createFling = ScrollArgs.INSTANCE.createFling(1.0f, 1.0f, obtainBoxManager.getCurrentBoxId());
        createFling.setScrollBeginX(viewport.left());
        createFling.setScrollBeginY(viewport.top());
        Observable.just(this).observeOn(AndroidSchedulers.mainThread()).flatMap(new C10388a(createFling)).subscribe();
    }

    /* renamed from: r */
    public final RxScrollerArgs m40907r(ScrollArgs args) {
        BoxManager obtainBoxManager = WorkBundleKt.obtainBoxManager(getEditorBundle().getWorkBundle());
        float max = Math.max(Math.abs(args.getVelocityX()), Math.abs(args.getVelocityY()));
        long upToDownTime = args.getUpToDownTime();
        ResManager resManager = ResManager.INSTANCE;
        boolean z = upToDownTime <= ((long) resManager.getInteger(C8045R.integer.correct_fling_up_to_down_time_threshold)) && max > ((float) resManager.getInteger(C8045R.integer.correct_fling_velocity_threshold)) && obtainBoxManager.getCurrentDisplayScale() <= 1.0f;
        log("upToDownTime = " + args.getUpToDownTime() + "ms, maxVelocity = " + max + ", isRestoreScrollBegin = " + z);
        return obtainBoxManager.createRxScrollerArgs(new BoxFlingArgs(args.getVelocityX(), args.getVelocityY(), args.getScrollBeginX(), args.getScrollBeginY(), args.getScrollBeginBoxId(), z));
    }

    /* renamed from: s */
    public final Observable<ScrollArgs> m40908s(RxScrollerArgs rxScrollerArgs) {
        if (this.abortFling) {
            log("abortFling, do not create scroller");
            ScrollArgs scrollArgs = new ScrollArgs();
            scrollArgs.setAction(1);
            scrollArgs.setNewX(rxScrollerArgs.getStartX());
            scrollArgs.setNewY(rxScrollerArgs.getStartY());
            scrollArgs.setFlingFinished(true);
            Observable<ScrollArgs> just = Observable.just(scrollArgs);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        this.flingActionType = rxScrollerArgs.getFlingActionType();
        EditorBundleKt.setEnabledAbortFlingAnimation(getEditorBundle(), rxScrollerArgs.getIsEnabledAbortFlingAnimation());
        RxScroller rxScroller = new RxScroller();
        this.scroller = rxScroller;
        Observable<RxScrollerInfo> fling = rxScroller.fling(rxScrollerArgs);
        final ScrollArgs.Companion companion = ScrollArgs.INSTANCE;
        Observable map = fling.map(new Function() { // from class: com.onyx.android.sdk.universal.editor.gesture.FlingAction.p
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final ScrollArgs apply(@NotNull RxScrollerInfo p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return ScrollArgs.Companion.this.createScrolling(p0);
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    public final void stopFling() {
        RxScroller rxScroller = this.scroller;
        if (rxScroller != null) {
            rxScroller.stop();
        }
        this.scroller = null;
        this.abortFling = true;
    }

    /* renamed from: t */
    public final Observable<ScrollArgs> m40909t(final ScrollArgs args) {
        Observable<ScrollArgs> map = DocCommonActionsKt.createCoreObservable(getEditorBundle(), new Function1<WorkBundle, ScrollToRequest>() { // from class: com.onyx.android.sdk.universal.editor.gesture.FlingAction$scrollTo$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final ScrollToRequest invoke(@NotNull WorkBundle it2) {
                ScrollArgs scrollArgs;
                ScrollArgs scrollArgs2;
                Intrinsics.checkNotNullParameter(it2, "it");
                FlingAction.this.m40905n(args);
                float newX = args.getNewX();
                scrollArgs = FlingAction.this.currentScrollArgs;
                float offsetX = newX + scrollArgs.getOffsetX();
                float newY = args.getNewY();
                scrollArgs2 = FlingAction.this.currentScrollArgs;
                ScrollToRequest scrollToRequest = new ScrollToRequest(FlingAction.this.getEditorBundle().getWorkBundle(), offsetX, newY + scrollArgs2.getOffsetY(), 0, 8, null);
                scrollToRequest.execute2();
                return scrollToRequest;
            }
        }).doOnNext(new C10404q(args, this)).map(new C10405r(args));
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }
}
