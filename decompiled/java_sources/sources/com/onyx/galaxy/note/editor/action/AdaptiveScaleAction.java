package com.onyx.galaxy.note.editor.action;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.view.animation.AccelerateDecelerateInterpolator;
import com.blankj.utilcode.util.ToastUtils;
import com.liulishuo.okdownload.core.breakpoint.BreakpointSQLiteHelper;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.geometry.boxmanager.BoxManager;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.data.VirtualDocViewInfo;
import com.onyx.android.sdk.universal.editor.events.app.ScaleResultEvent;
import com.onyx.android.sdk.universal.editor.events.app.VirtualDocViewInfoEvent;
import com.onyx.android.sdk.universal.editor.events.note.QuitExcerptSelectionEvent;
import com.onyx.android.sdk.universal.editor.events.note.QuitTransformEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.WorkBundleKt;
import com.onyx.android.sdk.universal.editor.request.ScaleRequest;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.action.AdaptiveScaleAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.subjects.PublishSubject;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.lang3.Range;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010!\u001a\u00020 ¢\u0006\u0004\b\"\u0010#J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\u0016\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\b\u0010\f\u001a\u00020\u000bH\u0002J\u0010\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u0004H\u0002J\f\u0010\u000f\u001a\u0006\u0012\u0002\b\u00030\u0002H\u0002J\u001e\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00100\u00022\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0018\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u000e\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u0010\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0007\u001a\u00020\u0006H\u0002R\u0016\u0010\u0007\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001e¨\u0006$"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/action/AdaptiveScaleAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "t", "Landroid/graphics/Matrix;", "matrix", "", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "u", "", "x", BreakpointSQLiteHelper.f39283i, "s", "p", "", "matrixScale", "Landroid/graphics/RectF;", "viewport", "q", "scale", "B", "z", "Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;", "y", C6999h.f39688c, "Landroid/graphics/Matrix;", "Landroid/animation/Animator;", "i", "Landroid/animation/Animator;", "animator", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nAdaptiveScaleAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdaptiveScaleAction.kt\ncom/onyx/galaxy/note/editor/action/AdaptiveScaleAction\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt\n*L\n1#1,158:1\n91#2,14:159\n*S KotlinDebug\n*F\n+ 1 AdaptiveScaleAction.kt\ncom/onyx/galaxy/note/editor/action/AdaptiveScaleAction\n*L\n124#1:159,14\n*E\n"})
/* loaded from: classes9.dex */
public final class AdaptiveScaleAction extends RxBaseAppAction<AdaptiveScaleAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public Matrix matrix;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public Animator animator;

    /* renamed from: com.onyx.galaxy.note.editor.action.AdaptiveScaleAction$a */
    /* loaded from: classes9.dex */
    public static final class C11775a<T, R> implements Function {

        /* renamed from: f */
        public final /* synthetic */ RectF f58102f;

        public C11775a(RectF rectF) {
            this.f58102f = rectF;
        }

        @NotNull
        /* renamed from: a */
        public final ObservableSource<? extends Float> m45596a(float f) {
            return AdaptiveScaleAction.this.m45589q(f, this.f58102f);
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m45596a(((Number) obj).floatValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.AdaptiveScaleAction$b */
    /* loaded from: classes9.dex */
    public static final class C11776b<T, R> implements Function {
        public C11776b() {
        }

        @NotNull
        /* renamed from: a */
        public final Matrix m45597a(float f) {
            return WorkBundleKt.obtainBoxManager(AdaptiveScaleAction.this.getEditorBundle().getWorkBundle()).loadReboundMatrix(MatrixKt.copy(AdaptiveScaleAction.this.matrix));
        }

        @Override // io.reactivex.rxjava3.functions.Function
        public /* bridge */ /* synthetic */ Object apply(Object obj) {
            return m45597a(((Number) obj).floatValue());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.AdaptiveScaleAction$c */
    /* loaded from: classes9.dex */
    public static final class C11777c<T, R> implements Function {
        public C11777c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Pair<List<BoxInfo>, Matrix> apply(@NotNull Matrix it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new Pair<>(AdaptiveScaleAction.this.m45592u(it2), it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.AdaptiveScaleAction$d */
    /* loaded from: classes9.dex */
    public static final class C11778d<T> implements Consumer {
        public C11778d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Pair<? extends List<BoxInfo>, ? extends Matrix> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.renderManager(AdaptiveScaleAction.this.getEditorBundle()).displayScalingBoxList(AdaptiveScaleAction.this.getEditorBundle(), it2.getFirst(), it2.getSecond());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.AdaptiveScaleAction$e */
    /* loaded from: classes9.dex */
    public static final class C11779e<T> implements Predicate {
        public C11779e() {
        }

        @Override // io.reactivex.rxjava3.functions.Predicate
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final boolean test(@NotNull AdaptiveScaleAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return AdaptiveScaleAction.this.m45591t();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.AdaptiveScaleAction$f */
    /* loaded from: classes9.dex */
    public static final class C11780f<T> implements Consumer {
        public C11780f() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull AdaptiveScaleAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            AdaptiveScaleAction.this.m45593x();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.AdaptiveScaleAction$g */
    /* loaded from: classes9.dex */
    public static final class C11781g<T> implements Consumer {
        public C11781g() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull AdaptiveScaleAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            AdaptiveScaleAction.this.m45590s(true);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.AdaptiveScaleAction$h */
    /* loaded from: classes9.dex */
    public static final class C11782h<T, R> implements Function {
        public C11782h() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull AdaptiveScaleAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return AdaptiveScaleAction.this.m45588p();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.AdaptiveScaleAction$i */
    /* loaded from: classes9.dex */
    public static final class C11783i<T, R> implements Function {
        public C11783i() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends AdaptiveScaleAction> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return AdaptiveScaleAction.this.m45595z();
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.AdaptiveScaleAction$j */
    /* loaded from: classes9.dex */
    public static final class C11784j<T, R> implements Function {
        public C11784j() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final AdaptiveScaleAction apply(@NotNull AdaptiveScaleAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return AdaptiveScaleAction.this;
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.AdaptiveScaleAction$k */
    /* loaded from: classes9.dex */
    public static final class C11785k<T, R> implements Function {
        public C11785k() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final VirtualDocViewInfo apply(@NotNull AdaptiveScaleAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            AdaptiveScaleAction adaptiveScaleAction = AdaptiveScaleAction.this;
            return adaptiveScaleAction.m45594y(adaptiveScaleAction.matrix);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.AdaptiveScaleAction$l */
    /* loaded from: classes9.dex */
    public static final class C11786l<T> implements Consumer {
        public C11786l() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull VirtualDocViewInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.updateVirtualDocViewInfo(AdaptiveScaleAction.this.getEditorBundle(), it2);
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.AdaptiveScaleAction$m */
    /* loaded from: classes9.dex */
    public static final class C11787m<T> implements Consumer {
        public C11787m() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull VirtualDocViewInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.renderManager(AdaptiveScaleAction.this.getEditorBundle()).displayBoxListAfterStopScale(AdaptiveScaleAction.this.getEditorBundle(), it2.getVisibleBoxInfoList());
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.AdaptiveScaleAction$n */
    /* loaded from: classes9.dex */
    public static final class C11788n<T> implements Consumer {
        public C11788n() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull VirtualDocViewInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.postEvent(AdaptiveScaleAction.this.getEditorBundle(), new VirtualDocViewInfoEvent(it2, false, 2, null));
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.AdaptiveScaleAction$o */
    /* loaded from: classes9.dex */
    public static final class C11789o<T> implements Consumer {
        public C11789o() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull VirtualDocViewInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            EditorBundleKt.postEvent(AdaptiveScaleAction.this.getEditorBundle(), new ScaleResultEvent(EditorBundleKt.currentDisplayScale(AdaptiveScaleAction.this.getEditorBundle())));
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.action.AdaptiveScaleAction$p */
    /* loaded from: classes9.dex */
    public static final class C11790p<T, R> implements Function {
        public C11790p() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final AdaptiveScaleAction apply(@NotNull VirtualDocViewInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return AdaptiveScaleAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdaptiveScaleAction(@NotNull EditorBundle editorBundle) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.matrix = new Matrix();
    }

    /* renamed from: A */
    public static final void m45579A(AdaptiveScaleAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getEditorBundle().getUiBundle().getUiStateInfo().setScaleEnding(false);
    }

    /* renamed from: r */
    public static final void m45584r(ValueAnimator valueAnimator, AdaptiveScaleAction this$0, PublishSubject publishSubject, ValueAnimator it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(publishSubject, "$publishSubject");
        Intrinsics.checkNotNullParameter(it2, "it");
        Object animatedValue = valueAnimator.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        float floatValue = ((Float) animatedValue).floatValue();
        this$0.m45587B(floatValue, this$0.getEditorBundle().getWorkBundle().getOpenDocArgs().getViewSize().toRectF());
        publishSubject.onNext(Float.valueOf(floatValue));
    }

    /* renamed from: v */
    public static final void m45585v(AdaptiveScaleAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m45590s(false);
    }

    /* renamed from: w */
    public static final void m45586w(AdaptiveScaleAction this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Animator animator = this$0.animator;
        if (animator != null) {
            animator.cancel();
        }
    }

    /* renamed from: B */
    public final void m45587B(float scale, RectF viewport) {
        float f = 2;
        this.matrix.setScale(scale, scale, viewport.width() / f, viewport.height() / f);
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<AdaptiveScaleAction> create() {
        Observable<AdaptiveScaleAction> map = Observable.just(this).filter(new C11779e()).doOnNext(new C11780f()).doOnNext(new C11781g()).flatMap(new C11782h()).flatMap(new C11783i()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.h8
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                AdaptiveScaleAction.m45585v(AdaptiveScaleAction.this);
            }
        }).doOnDispose(new Action() { // from class: com.sunia.HTREnginev2.i8
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                AdaptiveScaleAction.m45586w(AdaptiveScaleAction.this);
            }
        }).map(new C11784j());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    /* renamed from: p */
    public final Observable<?> m45588p() {
        if (getEditorBundle().getUiBundle().getHandlerManager().getIsEnabledScale()) {
            final RectF rectF = getEditorBundle().getWorkBundle().getOpenDocArgs().getViewSize().toRectF();
            Observable doOnNext = DocCommonActionsKt.createCoreObservable(this, new Function1<WorkBundle, Float>() { // from class: com.onyx.galaxy.note.editor.action.AdaptiveScaleAction$adaptiveScale$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Float invoke(@NotNull WorkBundle it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    BoxManager obtainBoxManager = WorkBundleKt.obtainBoxManager(AdaptiveScaleAction.this.getEditorBundle().getWorkBundle());
                    RectF rectF2 = rectF;
                    float integer = ResManager.INSTANCE.getInteger(C10651R.integer.adaptive_scale_width_error_range);
                    Float minimum = WorkBundleKt.scaleRange(AdaptiveScaleAction.this.getEditorBundle().getWorkBundle()).getMinimum();
                    Intrinsics.checkNotNullExpressionValue(minimum, "getMinimum(...)");
                    return Float.valueOf(obtainBoxManager.calculateScaleRatioForViewport(rectF2, integer, minimum.floatValue()));
                }
            }).flatMap(new C11775a(rectF)).observeOn(EditorBundleKt.coreScheduler(getEditorBundle())).map(new C11776b()).map(new C11777c()).observeOn(getMainUIScheduler()).doOnNext(new C11778d());
            Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
            return RxjavaKt.takeLastOne(doOnNext);
        }
        ToastUtils.make().setGravity(17, 0, 0).show(C10651R.string.page_scale_locked);
        Observable<?> just = Observable.just(Float.valueOf(1.0f));
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    /* renamed from: q */
    public final Observable<Float> m45589q(final float matrixScale, final RectF viewport) {
        if (matrixScale == 1.0f) {
            Observable<Float> just = Observable.just(Float.valueOf(1.0f));
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        final PublishSubject create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        final ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, matrixScale);
        ofFloat.setDuration(ResManager.INSTANCE.getLong(C10651R.integer.adaptive_scale_time));
        ofFloat.setInterpolator(new AccelerateDecelerateInterpolator());
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sunia.HTREnginev2.j8
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                AdaptiveScaleAction.m45584r(ofFloat, this, create, valueAnimator);
            }
        });
        Intrinsics.checkNotNull(ofFloat);
        ofFloat.addListener(new Animator.AnimatorListener() { // from class: com.onyx.galaxy.note.editor.action.AdaptiveScaleAction$animateAdaptiveScale$$inlined$addListener$default$1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(@NotNull Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(@NotNull Animator animator) {
                AdaptiveScaleAction.this.m45587B(matrixScale, viewport);
                RxjavaKt.done(create, Float.valueOf(matrixScale));
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(@NotNull Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(@NotNull Animator animator) {
            }
        });
        this.animator = ofFloat;
        ofFloat.start();
        return create;
    }

    /* renamed from: s */
    public final void m45590s(boolean block) {
        EditorBundleKt.setEnabledAnimationUpdateEditorView(getEditorBundle(), block);
    }

    /* renamed from: t */
    public final boolean m45591t() {
        return !EditorBundleKt.handlerManager(getEditorBundle()).getShapeHandlerManager().isTransformHandler();
    }

    /* renamed from: u */
    public final List<BoxInfo> m45592u(Matrix matrix) {
        WorkBundle workBundle = getEditorBundle().getWorkBundle();
        BoxManager obtainBoxManager = WorkBundleKt.obtainBoxManager(workBundle);
        Range<Float> scaleRange = WorkBundleKt.scaleRange(workBundle);
        Intrinsics.checkNotNullExpressionValue(scaleRange, "scaleRange(...)");
        return obtainBoxManager.collectVisibleBoxList(obtainBoxManager.toBoxManagerViewArgs(matrix, scaleRange));
    }

    /* renamed from: x */
    public final void m45593x() {
        if (EditorBundleKt.handlerManager(getEditorBundle()).getShapeHandlerManager().isExcerptHandler()) {
            EditorBundleKt.postEvent(getEditorBundle(), new QuitExcerptSelectionEvent(false, null, 2, null));
        } else if (EditorBundleKt.handlerManager(getEditorBundle()).getShapeHandlerManager().isTextInputHandler() || EditorBundleKt.handlerManager(getEditorBundle()).getShapeHandlerManager().isUniversalShapeHandler()) {
            EditorBundleKt.postEvent(getEditorBundle(), new QuitTransformEvent(false, 1, null));
        }
    }

    /* renamed from: y */
    public final VirtualDocViewInfo m45594y(Matrix matrix) {
        ScaleRequest scaleRequest = new ScaleRequest(getEditorBundle().getWorkBundle(), matrix);
        scaleRequest.execute2();
        return scaleRequest.getVirtualDocViewInfo();
    }

    /* renamed from: z */
    public final Observable<AdaptiveScaleAction> m45595z() {
        getEditorBundle().getUiBundle().getUiStateInfo().setScaleEnding(true);
        Observable map = Observable.just(this).observeOn(EditorBundleKt.coreScheduler(getEditorBundle())).map(new C11785k()).observeOn(AndroidSchedulers.mainThread()).doOnNext(new C11786l()).doOnNext(new C11787m()).doFinally(new Action() { // from class: com.sunia.HTREnginev2.k8
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                AdaptiveScaleAction.m45579A(AdaptiveScaleAction.this);
            }
        }).doOnNext(new C11788n()).doOnNext(new C11789o()).map(new C11790p());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return RxjavaKt.onErrorReturnItemWithLog(map, this);
    }
}
