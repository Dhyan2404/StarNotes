package com.onyx.galaxy.note.editor.view.magnifier;

import android.graphics.PointF;
import android.graphics.RectF;
import android.view.View;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.p018rx.RxFilter;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.base.utils.RxTimerUtil;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.extension.DocCommonActionsKt;
import com.onyx.android.sdk.universal.editor.action.magnifier.LocateSrcViewRectInTargetPageAction;
import com.onyx.android.sdk.universal.editor.data.PinchZoomDataInfo;
import com.onyx.android.sdk.universal.editor.data.ScalingArgs;
import com.onyx.android.sdk.universal.editor.data.ScrollArgs;
import com.onyx.android.sdk.universal.editor.events.app.ScalingArgsEvent;
import com.onyx.android.sdk.universal.editor.events.app.ScrollBeginEvent;
import com.onyx.android.sdk.universal.editor.events.app.ScrollingEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.gesture.AfterStopScrollAction;
import com.onyx.galaxy.note.editor.view.magnifier.MagnifierViewportStateChangedListener;
import com.onyx.galaxy.note.editor.view.magnifier.MagnifierViewportView;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\b\b\u0018\u00002\u00020\u0001:\u0003,-\u0017B'\u0012\u0006\u0010\u001a\u001a\u00020\u0018\u0012\u0006\u0010\u001b\u001a\u00020\u0018\u0012\u0006\u0010\u001e\u001a\u00020\u001c\u0012\u0006\u0010\"\u001a\u00020\u001f¢\u0006\u0004\b*\u0010+J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0006\u0010\b\u001a\u00020\u0006J0\u0010\u0010\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0010\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u000bH\u0002J\u0010\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u000bH\u0002J\u0014\u0010\u0015\u001a\u0006\u0012\u0002\b\u00030\u00142\u0006\u0010\u0011\u001a\u00020\u000bH\u0002J\b\u0010\u0017\u001a\u00020\u0016H\u0002R\u0014\u0010\u001a\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0019R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0019R\u0014\u0010\u001e\u001a\u00020\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u001dR\u0014\u0010\"\u001a\u00020\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!R\u0016\u0010%\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$R\u001a\u0010)\u001a\b\u0012\u0004\u0012\u00020\u00010&8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(¨\u0006."}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;", "Lcom/onyx/galaxy/note/editor/view/magnifier/BaseMagnifierViewStateChangedHandler;", "", "destroy", "Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;", "currentType", "", "accept", "isProcessing", "Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;", "view", "Landroid/graphics/RectF;", "oldRectF", "newRectF", "Landroid/graphics/PointF;", TypedValues.CycleType.S_WAVE_OFFSET, "onViewStateChanged", "viewRect", "b", "c", "Lio/reactivex/rxjava3/core/Observable;", "d", "", "a", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "magnifierViewportEditorBundle", "magnifierViewEditorBundle", "Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportContainer;", "Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportContainer;", "magnifierViewportContainer", "Landroid/view/View;", "e", "Landroid/view/View;", "magnifierEditorView", C6997f.f39671c, Constants.HASIDCALL_INDEX_SIG, "scrolling", "", C6998g.f39679a, "Ljava/util/List;", "handlers", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportContainer;Landroid/view/View;)V", "DragMagnifierViewStateChangedHandler", "LocateMagnifierViewStateChangedHandler", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nMagnifierViewportHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MagnifierViewportHandler.kt\ncom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,359:1\n1855#2,2:360\n1855#2,2:362\n1#3:364\n*S KotlinDebug\n*F\n+ 1 MagnifierViewportHandler.kt\ncom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener\n*L\n55#1:360,2\n73#1:362,2\n*E\n"})
/* loaded from: classes9.dex */
public final class MagnifierViewportStateChangedListener extends BaseMagnifierViewStateChangedHandler {

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle magnifierViewportEditorBundle;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle magnifierViewEditorBundle;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final MagnifierViewportContainer magnifierViewportContainer;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final View magnifierEditorView;

    /* renamed from: f, reason: from kotlin metadata */
    public boolean scrolling;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final List<BaseMagnifierViewStateChangedHandler> handlers;

    /* loaded from: classes9.dex */
    public class DragMagnifierViewStateChangedHandler extends BaseMagnifierViewStateChangedHandler {

        /* renamed from: b */
        public final float f60066b = 50.0f;

        /* renamed from: c */
        public final long f60067c = 50;

        /* renamed from: d */
        @NotNull
        public RxFilter<ScrollArgs> f60068d = new RxFilter<>();

        /* renamed from: com.onyx.galaxy.note.editor.view.magnifier.MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler$a */
        /* loaded from: classes9.dex */
        public static final class C12362a<T> implements Consumer {

            /* renamed from: e */
            public final /* synthetic */ MagnifierViewportStateChangedListener f60070e;

            /* renamed from: f */
            public final /* synthetic */ DragMagnifierViewStateChangedHandler f60071f;

            public C12362a(MagnifierViewportStateChangedListener magnifierViewportStateChangedListener, DragMagnifierViewStateChangedHandler dragMagnifierViewStateChangedHandler) {
                this.f60070e = magnifierViewportStateChangedListener;
                this.f60071f = dragMagnifierViewStateChangedHandler;
            }

            @Override // io.reactivex.rxjava3.functions.Consumer
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public final void accept(@NotNull ScrollArgs it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                int action = it2.getAction();
                if (action == 1) {
                    this.f60070e.scrolling = true;
                    this.f60071f.m48454l(this.f60070e.magnifierViewportEditorBundle, it2.getOffsetX(), it2.getOffsetY());
                    this.f60071f.m48454l(this.f60070e.magnifierViewEditorBundle, it2.getOffsetX() * this.f60070e.m48439a(), it2.getOffsetY() * this.f60070e.m48439a());
                } else {
                    if (action != 3) {
                        return;
                    }
                    DragMagnifierViewStateChangedHandler.m48447i(this.f60071f, this.f60070e.magnifierViewportEditorBundle, false, 2, null);
                    this.f60071f.m48453h(this.f60070e.magnifierViewEditorBundle, true);
                }
            }
        }

        public DragMagnifierViewStateChangedHandler() {
            m48458p();
        }

        /* renamed from: i */
        public static /* synthetic */ void m48447i(DragMagnifierViewStateChangedHandler dragMagnifierViewStateChangedHandler, EditorBundle editorBundle, boolean z, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onScrollEnd");
            }
            if ((i & 2) != 0) {
                z = false;
            }
            dragMagnifierViewStateChangedHandler.m48453h(editorBundle, z);
        }

        /* renamed from: j */
        public static final void m48448j(DragMagnifierViewStateChangedHandler this$0, AfterStopScrollAction it2) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(it2, "it");
            this$0.m48455m();
        }

        /* renamed from: k */
        public static final void m48449k(MagnifierViewportStateChangedListener this$0) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this$0.scrolling = false;
        }

        @Override // com.onyx.galaxy.note.editor.view.magnifier.BaseMagnifierViewStateChangedHandler
        public boolean accept(@NotNull MagnifierViewportView.Mode currentType) {
            Intrinsics.checkNotNullParameter(currentType, "currentType");
            return getPreviousMode().isDragging() || currentType.isDragging();
        }

        @Override // com.onyx.galaxy.note.editor.view.magnifier.BaseMagnifierViewStateChangedHandler
        public void destroy() {
            this.f60068d.dispose();
        }

        /* renamed from: e */
        public final float m48450e() {
            return this.f60066b;
        }

        /* renamed from: f */
        public final long m48451f() {
            return this.f60067c;
        }

        @NotNull
        /* renamed from: g */
        public final RxFilter<ScrollArgs> m48452g() {
            return this.f60068d;
        }

        /* renamed from: h */
        public final void m48453h(EditorBundle editorBundle, final boolean z) {
            Observable doOnNextIf = RxjavaKt.doOnNextIf(new AfterStopScrollAction(editorBundle).build(), new Function1<AfterStopScrollAction, Boolean>() { // from class: com.onyx.galaxy.note.editor.view.magnifier.MagnifierViewportStateChangedListener$DragMagnifierViewStateChangedHandler$onScrollEnd$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull AfterStopScrollAction it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return Boolean.valueOf(z);
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.d7j
                @Override // io.reactivex.rxjava3.functions.Consumer
                public final void accept(Object obj) {
                    MagnifierViewportStateChangedListener.DragMagnifierViewStateChangedHandler.m48448j(MagnifierViewportStateChangedListener.DragMagnifierViewStateChangedHandler.this, (AfterStopScrollAction) obj);
                }
            });
            final MagnifierViewportStateChangedListener magnifierViewportStateChangedListener = MagnifierViewportStateChangedListener.this;
            doOnNextIf.doFinally(new Action() { // from class: com.sunia.HTREnginev2.e7j
                @Override // io.reactivex.rxjava3.functions.Action
                public final void run() {
                    MagnifierViewportStateChangedListener.DragMagnifierViewStateChangedHandler.m48449k(MagnifierViewportStateChangedListener.this);
                }
            }).subscribe();
        }

        /* renamed from: l */
        public final void m48454l(EditorBundle editorBundle, float f, float f2) {
            EditorBundleKt.postEvent(editorBundle, new ScrollBeginEvent(0.0f, 0.0f));
            EditorBundleKt.postEvent(editorBundle, new ScrollingEvent(f, f2, 0, 4, null));
        }

        /* renamed from: m */
        public final void m48455m() {
            DocCommonActionsKt.postVirtualDocViewInfo(MagnifierViewportStateChangedListener.this.magnifierViewEditorBundle).subscribe();
        }

        /* renamed from: n */
        public final void m48456n(RectF rectF, RectF rectF2, PointF pointF, float f) {
            if (!MagnifierViewportStateChangedListener.this.m48440b(rectF2)) {
                MagnifierViewportStateChangedListener.this.m48441c(rectF2);
                return;
            }
            float f2 = rectF2.left;
            float f3 = f2 - rectF.left;
            float f4 = rectF2.top - rectF.top;
            if (f2 <= 0.0f) {
                f3 += -f;
            }
            if (rectF2.right >= MagnifierViewportStateChangedListener.this.magnifierViewportContainer.getWidth()) {
                f3 += f;
            }
            if (rectF2.bottom >= MagnifierViewportStateChangedListener.this.magnifierViewportContainer.getHeight()) {
                f4 += f;
            }
            if (rectF2.top <= 0.0f) {
                f4 += -f;
            }
            if (f3 == 0.0f) {
                f3 = Math.signum(pointF.x) * f;
            }
            if (f4 == 0.0f) {
                f4 = Math.signum(pointF.y) * f;
            }
            this.f60068d.onNext(ScrollArgs.INSTANCE.createScrolling(f3, f4));
        }

        /* renamed from: o */
        public final void m48457o(@NotNull RxFilter<ScrollArgs> rxFilter) {
            Intrinsics.checkNotNullParameter(rxFilter, "<set-?>");
            this.f60068d = rxFilter;
        }

        @Override // com.onyx.galaxy.note.editor.view.magnifier.MagnifierViewportView.OnViewStateChangedListener
        public void onViewStateChanged(@NotNull MagnifierViewportView view, @NotNull RectF oldRectF, @NotNull RectF newRectF, @NotNull PointF offset, @NotNull MagnifierViewportView.Mode currentType) {
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(oldRectF, "oldRectF");
            Intrinsics.checkNotNullParameter(newRectF, "newRectF");
            Intrinsics.checkNotNullParameter(offset, "offset");
            Intrinsics.checkNotNullParameter(currentType, "currentType");
            if (currentType.isEnterDrag(getPreviousMode())) {
                MagnifierViewportStateChangedListener.this.m48441c(newRectF);
            }
            if (currentType.isDragging()) {
                m48456n(oldRectF, newRectF, offset, this.f60066b);
            }
            if (currentType.isQuitDrag(getPreviousMode())) {
                this.f60068d.onNext(ScrollArgs.INSTANCE.createScrollEnd());
            }
            if (currentType == MagnifierViewportView.Mode.NONE) {
                MagnifierViewportStateChangedListener.this.m48441c(newRectF);
            }
        }

        /* renamed from: p */
        public final void m48458p() {
            this.f60068d.dispose();
            this.f60068d.subscribeThrottleLast(this.f60067c, new C12362a(MagnifierViewportStateChangedListener.this, this));
        }
    }

    /* loaded from: classes9.dex */
    public final class LocateMagnifierViewStateChangedHandler extends DragMagnifierViewStateChangedHandler {
        public LocateMagnifierViewStateChangedHandler() {
            super();
        }

        @Override // com.onyx.galaxy.note.editor.view.magnifier.MagnifierViewportStateChangedListener.DragMagnifierViewStateChangedHandler, com.onyx.galaxy.note.editor.view.magnifier.BaseMagnifierViewStateChangedHandler
        public boolean accept(@NotNull MagnifierViewportView.Mode currentType) {
            Intrinsics.checkNotNullParameter(currentType, "currentType");
            return (currentType.isNone() || currentType.isMove()) && getPreviousMode().isNone();
        }

        @Override // com.onyx.galaxy.note.editor.view.magnifier.MagnifierViewportStateChangedListener.DragMagnifierViewStateChangedHandler, com.onyx.galaxy.note.editor.view.magnifier.MagnifierViewportView.OnViewStateChangedListener
        public void onViewStateChanged(@NotNull MagnifierViewportView view, @NotNull RectF oldRectF, @NotNull RectF newRectF, @NotNull PointF offset, @NotNull MagnifierViewportView.Mode currentType) {
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(oldRectF, "oldRectF");
            Intrinsics.checkNotNullParameter(newRectF, "newRectF");
            Intrinsics.checkNotNullParameter(offset, "offset");
            Intrinsics.checkNotNullParameter(currentType, "currentType");
            if (!MagnifierViewportStateChangedListener.this.m48440b(newRectF)) {
                MagnifierViewportStateChangedListener.this.m48441c(newRectF);
                return;
            }
            if (EditorBundleKt.getUiFeature(MagnifierViewportStateChangedListener.this.magnifierViewportEditorBundle).limitShapeRectInCurrentPage()) {
                float f = newRectF.left - oldRectF.left;
                float f2 = newRectF.top - oldRectF.top;
                if (currentType == MagnifierViewportView.Mode.MOVE_LEFT && MathUtils.areApproximatelyEqual$default(MathUtils.INSTANCE, f, 0.0f, 0.0f, 4, null)) {
                    f -= 10.0f;
                } else if (currentType == MagnifierViewportView.Mode.MOVE_RIGHT && MathUtils.areApproximatelyEqual$default(MathUtils.INSTANCE, f, 0.0f, 0.0f, 4, null)) {
                    f += 10.0f;
                } else if (currentType == MagnifierViewportView.Mode.MOVE_UP && MathUtils.areApproximatelyEqual$default(MathUtils.INSTANCE, f2, 0.0f, 0.0f, 4, null)) {
                    f2 -= 10.0f;
                } else if (currentType == MagnifierViewportView.Mode.MOVE_DOWN && MathUtils.areApproximatelyEqual$default(MathUtils.INSTANCE, f2, 0.0f, 0.0f, 4, null)) {
                    f2 += 10.0f;
                } else {
                    if (currentType != MagnifierViewportView.Mode.MOVE_NEW_LINE || !MathUtils.areApproximatelyEqual$default(MathUtils.INSTANCE, f2, 0.0f, 0.0f, 4, null)) {
                        MagnifierViewportStateChangedListener.this.m48441c(newRectF);
                        return;
                    }
                    f2 += MagnifierViewportStateChangedListener.this.magnifierViewportContainer.getViewportView().getNewLineOffset();
                }
                m48452g().onNext(ScrollArgs.INSTANCE.createScrolling(f, f2));
                RxTimerUtil.INSTANCE.timer(m48451f(), TimeUnit.MILLISECONDS, new Function1<Long, Unit>() { // from class: com.onyx.galaxy.note.editor.view.magnifier.MagnifierViewportStateChangedListener$LocateMagnifierViewStateChangedHandler$onViewStateChanged$1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Long l) {
                        invoke(l.longValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(long j) {
                        MagnifierViewportStateChangedListener.LocateMagnifierViewStateChangedHandler.this.m48452g().onNext(ScrollArgs.INSTANCE.createScrollEnd());
                    }
                });
            }
        }
    }

    /* renamed from: com.onyx.galaxy.note.editor.view.magnifier.MagnifierViewportStateChangedListener$a */
    /* loaded from: classes9.dex */
    public final class C12365a extends BaseMagnifierViewStateChangedHandler {

        /* renamed from: b */
        @NotNull
        public PinchZoomDataInfo f60073b = new PinchZoomDataInfo();

        public C12365a() {
        }

        /* renamed from: a */
        public final void m48460a() {
            RectF localVisibleRectF = ViewKt.localVisibleRectF(MagnifierViewportStateChangedListener.this.magnifierEditorView);
            ScalingArgs scalingArgs = new ScalingArgs();
            scalingArgs.setAction(0);
            scalingArgs.setScaleFactor(1.0f);
            scalingArgs.setFocusX(localVisibleRectF.centerX());
            scalingArgs.setFocusY(localVisibleRectF.centerY());
            this.f60073b.setLastScaleFactor(scalingArgs.getScaleFactor());
            this.f60073b.setInitialFocusX(scalingArgs.getFocusX());
            this.f60073b.setInitialFocusY(scalingArgs.getFocusY());
            EditorBundleKt.postEvent(MagnifierViewportStateChangedListener.this.magnifierViewEditorBundle, new ScalingArgsEvent(scalingArgs));
        }

        @Override // com.onyx.galaxy.note.editor.view.magnifier.BaseMagnifierViewStateChangedHandler
        public boolean accept(@NotNull MagnifierViewportView.Mode currentType) {
            Intrinsics.checkNotNullParameter(currentType, "currentType");
            return getPreviousMode().isResizing() || currentType.isResizing();
        }

        /* renamed from: b */
        public final void m48461b() {
            ScalingArgs scalingArgs = new ScalingArgs();
            scalingArgs.setAction(2);
            EditorBundleKt.postEvent(MagnifierViewportStateChangedListener.this.magnifierViewEditorBundle, new ScalingArgsEvent(scalingArgs));
        }

        /* renamed from: c */
        public final void m48462c(MagnifierViewportView.Mode mode, RectF rectF, RectF rectF2) {
            if (mode.isEnterResize(getPreviousMode())) {
                m48460a();
            }
            if (mode.isQuitResize(getPreviousMode())) {
                m48461b();
            }
            if (mode.isResizing()) {
                m48463d(rectF, rectF2);
            }
        }

        /* renamed from: d */
        public final void m48463d(RectF rectF, RectF rectF2) {
            ScalingArgs scalingArgs = new ScalingArgs();
            scalingArgs.setAction(1);
            scalingArgs.setScaleFactor(rectF.width() / rectF2.width());
            PinchZoomDataInfo pinchZoomDataInfo = this.f60073b;
            pinchZoomDataInfo.setLastScaleFactor(pinchZoomDataInfo.getLastScaleFactor() * scalingArgs.getScaleFactor());
            float f = 2;
            float f2 = 1;
            scalingArgs.setFocusX((this.f60073b.getInitialFocusX() * f * (this.f60073b.getLastScaleFactor() - f2)) + this.f60073b.getInitialFocusX());
            scalingArgs.setFocusY((this.f60073b.getInitialFocusY() * f * (this.f60073b.getLastScaleFactor() - f2)) + this.f60073b.getInitialFocusY());
            EditorBundleKt.postEvent(MagnifierViewportStateChangedListener.this.magnifierViewEditorBundle, new ScalingArgsEvent(scalingArgs));
        }

        @Override // com.onyx.galaxy.note.editor.view.magnifier.MagnifierViewportView.OnViewStateChangedListener
        public void onViewStateChanged(@NotNull MagnifierViewportView view, @NotNull RectF oldRectF, @NotNull RectF newRectF, @NotNull PointF offset, @NotNull MagnifierViewportView.Mode currentType) {
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(oldRectF, "oldRectF");
            Intrinsics.checkNotNullParameter(newRectF, "newRectF");
            Intrinsics.checkNotNullParameter(offset, "offset");
            Intrinsics.checkNotNullParameter(currentType, "currentType");
            m48462c(currentType, oldRectF, newRectF);
        }
    }

    public MagnifierViewportStateChangedListener(@NotNull EditorBundle magnifierViewportEditorBundle, @NotNull EditorBundle magnifierViewEditorBundle, @NotNull MagnifierViewportContainer magnifierViewportContainer, @NotNull View magnifierEditorView) {
        Intrinsics.checkNotNullParameter(magnifierViewportEditorBundle, "magnifierViewportEditorBundle");
        Intrinsics.checkNotNullParameter(magnifierViewEditorBundle, "magnifierViewEditorBundle");
        Intrinsics.checkNotNullParameter(magnifierViewportContainer, "magnifierViewportContainer");
        Intrinsics.checkNotNullParameter(magnifierEditorView, "magnifierEditorView");
        this.magnifierViewportEditorBundle = magnifierViewportEditorBundle;
        this.magnifierViewEditorBundle = magnifierViewEditorBundle;
        this.magnifierViewportContainer = magnifierViewportContainer;
        this.magnifierEditorView = magnifierEditorView;
        ArrayList arrayList = new ArrayList();
        arrayList.add(new DragMagnifierViewStateChangedHandler());
        arrayList.add(new C12365a());
        arrayList.add(new LocateMagnifierViewStateChangedHandler());
        this.handlers = arrayList;
    }

    /* renamed from: a */
    public final float m48439a() {
        return this.magnifierEditorView.getWidth() / this.magnifierViewportContainer.getViewportView().getWidth();
    }

    @Override // com.onyx.galaxy.note.editor.view.magnifier.BaseMagnifierViewStateChangedHandler
    public boolean accept(@NotNull MagnifierViewportView.Mode currentType) {
        Intrinsics.checkNotNullParameter(currentType, "currentType");
        return true;
    }

    /* renamed from: b */
    public final boolean m48440b(RectF viewRect) {
        return !(viewRect.left > 0.0f && viewRect.top > 0.0f && viewRect.right < ((float) this.magnifierViewportContainer.getWidth()) && viewRect.bottom < ((float) this.magnifierViewportContainer.getHeight()));
    }

    /* renamed from: c */
    public final void m48441c(RectF viewRect) {
        m48442d(viewRect).subscribe();
    }

    /* renamed from: d */
    public final Observable<?> m48442d(RectF viewRect) {
        return new LocateSrcViewRectInTargetPageAction(this.magnifierViewportEditorBundle, this.magnifierViewEditorBundle, viewRect, null, 8, null).build();
    }

    @Override // com.onyx.galaxy.note.editor.view.magnifier.BaseMagnifierViewStateChangedHandler
    public void destroy() {
        this.scrolling = false;
        Iterator<T> it2 = this.handlers.iterator();
        while (it2.hasNext()) {
            ((BaseMagnifierViewStateChangedHandler) it2.next()).destroy();
        }
    }

    public final boolean isProcessing() {
        return this.scrolling || getPreviousMode() != MagnifierViewportView.Mode.NONE;
    }

    @Override // com.onyx.galaxy.note.editor.view.magnifier.MagnifierViewportView.OnViewStateChangedListener
    public void onViewStateChanged(@NotNull MagnifierViewportView view, @NotNull RectF oldRectF, @NotNull RectF newRectF, @NotNull PointF offset, @NotNull MagnifierViewportView.Mode currentType) {
        Object obj;
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(oldRectF, "oldRectF");
        Intrinsics.checkNotNullParameter(newRectF, "newRectF");
        Intrinsics.checkNotNullParameter(offset, "offset");
        Intrinsics.checkNotNullParameter(currentType, "currentType");
        Iterator<T> it2 = this.handlers.iterator();
        while (it2.hasNext()) {
            ((BaseMagnifierViewStateChangedHandler) it2.next()).setPreviousMode(getPreviousMode());
        }
        Iterator<T> it3 = this.handlers.iterator();
        while (true) {
            if (!it3.hasNext()) {
                obj = null;
                break;
            } else {
                obj = it3.next();
                if (((BaseMagnifierViewStateChangedHandler) obj).accept(currentType)) {
                    break;
                }
            }
        }
        BaseMagnifierViewStateChangedHandler baseMagnifierViewStateChangedHandler = (BaseMagnifierViewStateChangedHandler) obj;
        if (baseMagnifierViewStateChangedHandler == null) {
            m48441c(newRectF);
        } else {
            baseMagnifierViewStateChangedHandler.onViewStateChanged(view, oldRectF, newRectF, offset, currentType);
        }
        setPreviousMode(currentType);
    }
}
