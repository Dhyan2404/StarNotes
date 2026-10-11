package com.onyx.android.sdk.universal.editor.gesture;

import android.graphics.Matrix;
import androidx.core.app.NotificationCompat;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.p018rx.ObservableHolder;
import com.onyx.android.sdk.base.utils.Benchmark;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.base.utils.histogram.TimeHistogram;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.boxmanager.BoxManager;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.data.PinchZoomDataInfo;
import com.onyx.android.sdk.universal.editor.data.ScalingArgs;
import com.onyx.android.sdk.universal.editor.data.VirtualDocViewInfo;
import com.onyx.android.sdk.universal.editor.events.app.ScaleBeginEvent;
import com.onyx.android.sdk.universal.editor.events.app.ScaleEndEvent;
import com.onyx.android.sdk.universal.editor.events.app.ScaleResultEvent;
import com.onyx.android.sdk.universal.editor.events.app.ScalingArgsEvent;
import com.onyx.android.sdk.universal.editor.events.app.ScalingEvent;
import com.onyx.android.sdk.universal.editor.events.app.ScalingResultEvent;
import com.onyx.android.sdk.universal.editor.events.app.VirtualDocViewInfoEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.WorkBundleKt;
import com.onyx.android.sdk.universal.editor.gesture.ScaleGestureHandlerAction;
import com.onyx.android.sdk.universal.editor.request.ScaleRequest;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.Range;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 82\b\u0012\u0004\u0012\u00020\u00000\u0001:\u00018B\u000f\u0012\u0006\u00105\u001a\u000204¢\u0006\u0004\b6\u00107J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0014J\b\u0010\b\u001a\u00020\u0006H\u0016J\u0010\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0007J\u0010\u0010\r\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\fH\u0007J\u0010\u0010\u000f\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000eH\u0007J\u0010\u0010\u0011\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0010H\u0007J\b\u0010\u0013\u001a\u00020\u0012H\u0002J\u0016\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\u0015\u001a\u00020\u0014H\u0002J\u0010\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0012H\u0002J\u0010\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0012H\u0002J\u0010\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0012H\u0002J\u0016\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00000\u00022\u0006\u0010\u0015\u001a\u00020\u0014H\u0002J\u0010\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0014H\u0002J\u0016\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u001e0\u001d2\u0006\u0010\u0015\u001a\u00020\u0014H\u0002J\u0010\u0010\"\u001a\u00020\u00062\u0006\u0010!\u001a\u00020 H\u0002J\u000e\u0010#\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u0010\u0010'\u001a\u00020&2\u0006\u0010%\u001a\u00020$H\u0002R\u001c\u0010+\u001a\b\u0012\u0004\u0012\u00020\u00140(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010*R\u0016\u0010/\u001a\u00020,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010.R\u0014\u00103\u001a\u0002008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b1\u00102¨\u00069"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lio/reactivex/rxjava3/disposables/Disposable;", "disposable", "", "onSubscribe", "dispose", "Lcom/onyx/android/sdk/universal/editor/events/app/ScalingArgsEvent;", NotificationCompat.CATEGORY_EVENT, "onScalingArgsEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/ScaleBeginEvent;", "onScaleBeginEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/ScalingEvent;", "onScalingEvent", "Lcom/onyx/android/sdk/universal/editor/events/app/ScaleEndEvent;", "onScaleEndEvent", "", "v", "Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;", "args", "q", NotificationCompat.CATEGORY_MESSAGE, "log", GoogleApiAvailabilityLight.f29016b, "m", "t", "w", "", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", C4921e.f26528e, "", "scale", "u", "r", "Landroid/graphics/Matrix;", "matrix", "Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;", "p", "Lcom/onyx/android/sdk/base/rx/ObservableHolder;", C6999h.f39688c, "Lcom/onyx/android/sdk/base/rx/ObservableHolder;", "scaleObservable", "Lcom/onyx/android/sdk/universal/editor/data/PinchZoomDataInfo;", "i", "Lcom/onyx/android/sdk/universal/editor/data/PinchZoomDataInfo;", "pinchZoomDataInfo", "Lcom/onyx/android/sdk/base/utils/Benchmark;", "j", "Lcom/onyx/android/sdk/base/utils/Benchmark;", "benchmark", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ScaleGestureHandlerAction extends RxBaseAppAction<ScaleGestureHandlerAction> {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: k */
    public static final boolean f52152k = false;

    /* renamed from: l */
    public static final float f52153l = 0.5f;

    /* renamed from: m */
    @NotNull
    public static final Lazy<TimeHistogram> f52154m;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public ObservableHolder<ScalingArgs> scaleObservable;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public PinchZoomDataInfo pinchZoomDataInfo;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final Benchmark benchmark;

    @Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000e\u0010\u000fR\u001b\u0010\u0007\u001a\u00020\u00028BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0014\u0010\f\u001a\u00020\u000b8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/gesture/ScaleGestureHandlerAction$Companion;", "", "Lcom/onyx/android/sdk/base/utils/histogram/TimeHistogram;", "scaleToDisplayTimeHistogram$delegate", "Lkotlin/Lazy;", "a", "()Lcom/onyx/android/sdk/base/utils/histogram/TimeHistogram;", "scaleToDisplayTimeHistogram", "", "DEBUG_SCALE_LOG", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "", "SCALE_FOCUS_DX_FACTOR", "F", Constants.CONSTRUCTOR_NAME, "()V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public final TimeHistogram m40941a() {
            return (TimeHistogram) ScaleGestureHandlerAction.f52154m.getValue();
        }

        public Companion() {
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.gesture.ScaleGestureHandlerAction$a */
    /* loaded from: classes8.dex */
    public static final class C10407a<T, R> implements Function {
        public C10407a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends ScaleGestureHandlerAction> apply(@NotNull ScalingArgs args) {
            Intrinsics.checkNotNullParameter(args, "args");
            int action = args.getAction();
            if (action == 0) {
                return ScaleGestureHandlerAction.this.m40935q(args);
            }
            if (action == 1) {
                return ScaleGestureHandlerAction.this.m40937t(args);
            }
            if (action == 2) {
                return ScaleGestureHandlerAction.this.m40936r();
            }
            Observable just = Observable.just(ScaleGestureHandlerAction.this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.gesture.ScaleGestureHandlerAction$b */
    /* loaded from: classes8.dex */
    public static final class C10408b<T, R> implements Function {
        public C10408b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ScaleGestureHandlerAction apply(@NotNull ScaleGestureHandlerAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ScaleGestureHandlerAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.gesture.ScaleGestureHandlerAction$c */
    /* loaded from: classes8.dex */
    public static final class C10409c<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ Matrix f52161f;

        public C10409c(Matrix matrix) {
            this.f52161f = matrix;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final VirtualDocViewInfo apply(@NotNull ScaleGestureHandlerAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ScaleGestureHandlerAction.this.m40934p(this.f52161f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.gesture.ScaleGestureHandlerAction$d */
    /* loaded from: classes8.dex */
    public static final class C10410d<T> implements Consumer {
        public C10410d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull VirtualDocViewInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.updateVirtualDocViewInfo(ScaleGestureHandlerAction.this.getEditorBundle(), it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.gesture.ScaleGestureHandlerAction$e */
    /* loaded from: classes8.dex */
    public static final class C10411e<T> implements Consumer {
        public C10411e() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull VirtualDocViewInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.renderManager(ScaleGestureHandlerAction.this.getEditorBundle()).displayBoxListAfterStopScale(ScaleGestureHandlerAction.this.getEditorBundle(), it2.getVisibleBoxInfoList());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.gesture.ScaleGestureHandlerAction$f */
    /* loaded from: classes8.dex */
    public static final class C10412f<T> implements Consumer {
        public C10412f() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull VirtualDocViewInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ScaleGestureHandlerAction.this.m40931m("scaleEnd finish");
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.gesture.ScaleGestureHandlerAction$g */
    /* loaded from: classes8.dex */
    public static final class C10413g<T> implements Consumer {
        public C10413g() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull VirtualDocViewInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.postEvent(ScaleGestureHandlerAction.this.getEditorBundle(), new VirtualDocViewInfoEvent(it2, false, 2, null));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.gesture.ScaleGestureHandlerAction$h */
    /* loaded from: classes8.dex */
    public static final class C10414h<T> implements Consumer {
        public C10414h() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull VirtualDocViewInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ScaleGestureHandlerAction.this.log(ScaleGestureHandlerAction.INSTANCE.m40941a().getTimeHistogramIf());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.gesture.ScaleGestureHandlerAction$i */
    /* loaded from: classes8.dex */
    public static final class C10415i<T, R> implements Function {
        public C10415i() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ScaleGestureHandlerAction apply(@NotNull VirtualDocViewInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ScaleGestureHandlerAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.gesture.ScaleGestureHandlerAction$k */
    /* loaded from: classes8.dex */
    public static final class C10417k<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ ScalingArgs f52170f;

        public C10417k(ScalingArgs scalingArgs) {
            this.f52170f = scalingArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<BoxInfo> apply(@NotNull ScaleGestureHandlerAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ScaleGestureHandlerAction.this.m40933o(this.f52170f);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.gesture.ScaleGestureHandlerAction$l */
    /* loaded from: classes8.dex */
    public static final class C10418l<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ ScalingArgs f52172f;

        public C10418l(ScalingArgs scalingArgs) {
            this.f52172f = scalingArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<BoxInfo> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.postEvent(ScaleGestureHandlerAction.this.getEditorBundle(), new ScalingResultEvent(this.f52172f));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.gesture.ScaleGestureHandlerAction$m */
    /* loaded from: classes8.dex */
    public static final class C10419m<T> implements Consumer {

        /* renamed from: f */
        public final /* synthetic */ ScalingArgs f52174f;

        public C10419m(ScalingArgs scalingArgs) {
            this.f52174f = scalingArgs;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<BoxInfo> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.renderManager(ScaleGestureHandlerAction.this.getEditorBundle()).displayScalingBoxList(ScaleGestureHandlerAction.this.getEditorBundle(), it2, MatrixKt.copy(this.f52174f.getMatrix()));
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.gesture.ScaleGestureHandlerAction$n */
    /* loaded from: classes8.dex */
    public static final class C10420n<T> implements Consumer {

        /* renamed from: e */
        public final /* synthetic */ Benchmark f52175e;

        public C10420n(Benchmark benchmark) {
            this.f52175e = benchmark;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<BoxInfo> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ScaleGestureHandlerAction.INSTANCE.m40941a().addTimeIf(this.f52175e.duration());
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.gesture.ScaleGestureHandlerAction$o */
    /* loaded from: classes8.dex */
    public static final class C10421o<T, R> implements Function {
        public C10421o() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ScaleGestureHandlerAction apply(@NotNull List<BoxInfo> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return ScaleGestureHandlerAction.this;
        }
    }

    static {
        Lazy<TimeHistogram> lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<TimeHistogram>() { // from class: com.onyx.android.sdk.universal.editor.gesture.ScaleGestureHandlerAction$Companion$scaleToDisplayTimeHistogram$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final TimeHistogram invoke() {
                return new TimeHistogram("scaleToDisplay", false);
            }
        });
        f52154m = lazy;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScaleGestureHandlerAction(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.scaleObservable = new ObservableHolder<>();
        this.pinchZoomDataInfo = new PinchZoomDataInfo();
        this.benchmark = new Benchmark();
    }

    /* renamed from: s */
    public static final void m40930s(ScaleGestureHandlerAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getEditorBundle().getUiBundle().getUiStateInfo().setScaleEnding(false);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<ScaleGestureHandlerAction> create() {
        Observable<ScaleGestureHandlerAction> map = this.scaleObservable.getObservable().concatMap(new C10407a()).map(new C10408b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction, io.reactivex.rxjava3.disposables.Disposable
    public void dispose() {
        super.dispose();
        EditorBundleKt.unregister(getEditorBundle(), this);
    }

    public final void log(String msg) {
    }

    /* renamed from: m */
    public final void m40931m(String msg) {
    }

    /* renamed from: n */
    public final void m40932n(String msg) {
    }

    /* renamed from: o */
    public final List<BoxInfo> m40933o(ScalingArgs args) {
        WorkBundle workBundle = getEditorBundle().getWorkBundle();
        BoxManager obtainBoxManager = WorkBundleKt.obtainBoxManager(workBundle);
        Matrix matrix = args.getMatrix();
        Range<Float> scaleRange = WorkBundleKt.scaleRange(workBundle);
        Intrinsics.checkNotNullExpressionValue(scaleRange, "scaleRange(...)");
        return obtainBoxManager.collectVisibleBoxList(obtainBoxManager.toBoxManagerViewArgs(matrix, scaleRange));
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onScaleBeginEvent(@NotNull ScaleBeginEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        ScalingArgs create = ScalingArgs.INSTANCE.create(event.getDetector());
        create.setAction(0);
        this.scaleObservable.onNext(create);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onScaleEndEvent(@NotNull ScaleEndEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        ScalingArgs scalingArgs = new ScalingArgs();
        scalingArgs.setAction(2);
        this.scaleObservable.onNext(scalingArgs);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onScalingArgsEvent(@NotNull ScalingArgsEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.scaleObservable.onNext(event.getArgs());
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onScalingEvent(@NotNull ScalingEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        ScalingArgs create = ScalingArgs.INSTANCE.create(event.getDetector());
        create.setAction(1);
        this.scaleObservable.onNext(create);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    public void onSubscribe(@NotNull Disposable disposable) {
        Intrinsics.checkNotNullParameter(disposable, "disposable");
        super.onSubscribe(disposable);
        EditorBundleKt.register(getEditorBundle(), this);
    }

    /* renamed from: p */
    public final VirtualDocViewInfo m40934p(Matrix matrix) {
        ScaleRequest scaleRequest = new ScaleRequest(getEditorBundle().getWorkBundle(), matrix);
        scaleRequest.execute2();
        return scaleRequest.getVirtualDocViewInfo();
    }

    /* renamed from: q */
    public final Observable<ScaleGestureHandlerAction> m40935q(ScalingArgs args) {
        PinchZoomDataInfo pinchZoomDataInfo = this.pinchZoomDataInfo;
        pinchZoomDataInfo.getLastScalingDisplayMatrix().reset();
        pinchZoomDataInfo.setLastScaleFactor(1.0f);
        pinchZoomDataInfo.setInitialFocusX(args.getFocusX());
        pinchZoomDataInfo.setInitialFocusY(args.getFocusY());
        log("beforeScale");
        Observable<ScaleGestureHandlerAction> just = Observable.just(this);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    /* renamed from: r */
    public final Observable<ScaleGestureHandlerAction> m40936r() {
        m40932n("scaleEnd start");
        getEditorBundle().getUiBundle().getUiStateInfo().setScaleEnding(true);
        Observable map = Observable.just(this).observeOn(EditorBundleKt.coreScheduler(getEditorBundle())).map(new C10409c(MatrixKt.copy(this.pinchZoomDataInfo.getLastScalingDisplayMatrix()))).observeOn(AndroidSchedulers.mainThread()).doOnNext(new C10410d()).doOnNext(new C10411e()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.h1m
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                ScaleGestureHandlerAction.m40930s(ScaleGestureHandlerAction.this);
            }
        }).doOnNext(new C10412f()).doOnNext(new C10413g()).doOnNext(new C10414h()).map(new C10415i());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return RxjavaKt.onErrorReturnItemWithLog(map, this);
    }

    /* renamed from: t */
    public final Observable<ScaleGestureHandlerAction> m40937t(ScalingArgs args) {
        Observable map = Observable.just(args).observeOn(EditorBundleKt.coreScheduler(getEditorBundle())).map(new Function() { // from class: com.onyx.android.sdk.universal.editor.gesture.ScaleGestureHandlerAction.j
            @Override // io.reactivex.rxjava3.functions.Function
            @NotNull
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final ScaleGestureHandlerAction apply(@NotNull ScalingArgs p0) {
                Intrinsics.checkNotNullParameter(p0, "p0");
                return ScaleGestureHandlerAction.this.m40940w(p0);
            }
        }).map(new C10417k(args)).observeOn(AndroidSchedulers.mainThread()).doOnNext(new C10418l(args)).doOnNext(new C10419m(args)).doOnNext(new C10420n(new Benchmark())).map(new C10421o());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return RxjavaKt.onErrorReturnItemWithLog(map, this);
    }

    /* renamed from: u */
    public final void m40938u(float scale) {
        log("scale = " + scale);
        EditorBundleKt.postEvent(getEditorBundle(), new ScaleResultEvent(scale));
    }

    /* renamed from: v */
    public final String m40939v() {
        return AnyKt.toSimpleNameString(this);
    }

    /* renamed from: w */
    public final ScaleGestureHandlerAction m40940w(ScalingArgs args) {
        WorkBundle workBundle = getEditorBundle().getWorkBundle();
        BoxManager obtainBoxManager = WorkBundleKt.obtainBoxManager(workBundle);
        float currentDisplayScale = obtainBoxManager.getCurrentDisplayScale();
        Range<Float> scaleRange = WorkBundleKt.scaleRange(workBundle);
        Range between = Range.between(Float.valueOf(scaleRange.getMinimum().floatValue() / currentDisplayScale), Float.valueOf(scaleRange.getMaximum().floatValue() / currentDisplayScale));
        float scaleFactor = args.getScaleFactor();
        float focusX = args.getFocusX();
        float focusY = args.getFocusY();
        PinchZoomDataInfo pinchZoomDataInfo = this.pinchZoomDataInfo;
        float initialFocusX = pinchZoomDataInfo.getInitialFocusX();
        float initialFocusY = pinchZoomDataInfo.getInitialFocusY();
        Matrix matrix = new Matrix();
        float lastScaleFactor = pinchZoomDataInfo.getLastScaleFactor();
        MathUtils mathUtils = MathUtils.INSTANCE;
        Float valueOf = Float.valueOf(scaleFactor * lastScaleFactor);
        Object minimum = between.getMinimum();
        Intrinsics.checkNotNullExpressionValue(minimum, "getMinimum(...)");
        Object maximum = between.getMaximum();
        Intrinsics.checkNotNullExpressionValue(maximum, "getMaximum(...)");
        float floatValue = ((Number) mathUtils.clamp(valueOf, (Comparable) minimum, (Comparable) maximum)).floatValue();
        if (obtainBoxManager.isEnabledContinuousScroll()) {
            matrix.setScale(floatValue, floatValue, initialFocusX, initialFocusY);
            float initialFocusX2 = (focusX - pinchZoomDataInfo.getInitialFocusX()) * 0.5f;
            float initialFocusY2 = (focusY - pinchZoomDataInfo.getInitialFocusY()) * 0.5f;
            matrix.postTranslate(initialFocusX2, initialFocusY2);
            Debug.INSTANCE.m32038d(AnyKt.toSimpleNameString(this), "focusDx = " + initialFocusX2 + ", focusDy = " + initialFocusY2, new Object[0]);
        } else {
            matrix.set(pinchZoomDataInfo.getLastScalingDisplayMatrix());
            float f = floatValue / lastScaleFactor;
            matrix.postScale(f, f, focusX, focusY);
        }
        float displayScale = WorkBundleKt.displayScale(workBundle, currentDisplayScale * floatValue);
        args.setDisplayScale(displayScale);
        m40938u(displayScale);
        args.setMatrix(obtainBoxManager.loadReboundMatrix(MatrixKt.copy(matrix)));
        pinchZoomDataInfo.setLastScaleFactor(floatValue);
        pinchZoomDataInfo.setLastScalingDisplayMatrix(MatrixKt.copy(args.getMatrix()));
        return this;
    }
}
