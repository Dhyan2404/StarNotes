package com.onyx.galaxy.note.editor.utils;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.view.animation.DecelerateInterpolator;
import android.widget.LinearLayout;
import androidx.core.app.NotificationCompat;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.universal.common.events.ResetPenBoxPositionEvent;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.events.note.FullScreenAnimEndEvent;
import com.onyx.android.sdk.universal.editor.events.note.FullScreenEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.feature.touch.TouchModeFeatureManager;
import com.onyx.galaxy.note.editor.event.VisiblePenBoxByFullScreenEvent;
import com.onyx.galaxy.note.editor.p046ui.NoteScribbleFragment;
import com.onyx.galaxy.note.editor.utils.FullScreenHelper;
import com.onyx.galaxy.note.editor.view.toolbar.DockType;
import com.onyx.galaxy.note.editor.view.toolbar.ToolDragView;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u001d\u001a\u00020\u0018¢\u0006\u0004\b3\u00104J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0016\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\b\u0010\u000b\u001a\u00020\tH\u0002J\u000e\u0010\f\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0002J\u0016\u0010\r\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\b\u0010\u000e\u001a\u00020\tH\u0002J\u000e\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0002J\b\u0010\u0010\u001a\u00020\u0004H\u0002J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\b\u0010\u0012\u001a\u00020\u0004H\u0002J\b\u0010\u0014\u001a\u00020\u0013H\u0002J\b\u0010\u0015\u001a\u00020\u0004H\u0002J\u0010\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\b\u0010\u0017\u001a\u00020\u0004H\u0002R\u0017\u0010\u001d\u001a\u00020\u00188\u0006¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\u0016\u0010!\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0016\u0010$\u001a\u00020\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010#R\u0018\u0010'\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010&R\u001b\u0010+\u001a\u00020\"8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010(\u001a\u0004\b)\u0010*R\u001b\u0010-\u001a\u00020\"8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010(\u001a\u0004\b,\u0010*R\u001b\u00102\u001a\u00020.8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b/\u0010(\u001a\u0004\b0\u00101¨\u00065"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/utils/FullScreenHelper;", "", "Lcom/onyx/android/sdk/universal/editor/events/note/FullScreenEvent;", NotificationCompat.CATEGORY_EVENT, "", "onFullScreen", "", "isSupportTouchEdit", "", "Landroid/animation/Animator;", "p", "d", C6999h.f39688c, "q", "e", C6997f.f39671c, C4921e.f26528e, "t", C4921e.f26537n, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "j", "r", "s", "c", "Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;", "a", "Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;", "getScribbleFragment", "()Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;", "scribbleFragment", "", "b", "J", "animatorDuration", "", "I", "titleHeight", "Landroid/animation/AnimatorSet;", "Landroid/animation/AnimatorSet;", "fullScreenAnimator", "Lkotlin/Lazy;", "m", "()I", "fullScreenSize", "l", "fullScreenMargin", "Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;", C6998g.f39679a, GoogleApiAvailabilityLight.f29016b, "()Lcom/onyx/galaxy/note/editor/view/toolbar/ToolDragView;", "toolDragView", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/editor/ui/NoteScribbleFragment;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nFullScreenHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FullScreenHelper.kt\ncom/onyx/galaxy/note/editor/utils/FullScreenHelper\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,180:1\n41#2:181\n91#2,14:182\n30#2:196\n91#2,14:197\n30#2:211\n91#2,14:212\n256#3,2:226\n254#3:228\n256#3,2:229\n254#3:231\n*S KotlinDebug\n*F\n+ 1 FullScreenHelper.kt\ncom/onyx/galaxy/note/editor/utils/FullScreenHelper\n*L\n56#1:181\n56#1:182,14\n59#1:196\n59#1:197,14\n114#1:211\n114#1:212,14\n140#1:226,2\n145#1:228\n146#1:229,2\n151#1:231\n*E\n"})
/* loaded from: classes9.dex */
public final class FullScreenHelper {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final NoteScribbleFragment scribbleFragment;

    /* renamed from: b, reason: from kotlin metadata */
    public long animatorDuration;

    /* renamed from: c, reason: from kotlin metadata */
    public int titleHeight;

    /* renamed from: d, reason: from kotlin metadata */
    @Nullable
    public AnimatorSet fullScreenAnimator;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Lazy fullScreenSize;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Lazy fullScreenMargin;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Lazy toolDragView;

    public FullScreenHelper(@NotNull NoteScribbleFragment scribbleFragment) {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Intrinsics.checkNotNullParameter(scribbleFragment, "scribbleFragment");
        this.scribbleFragment = scribbleFragment;
        this.animatorDuration = 300L;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Integer>() { // from class: com.onyx.galaxy.note.editor.utils.FullScreenHelper$fullScreenSize$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Integer invoke() {
                return Integer.valueOf(ResManager.INSTANCE.getDimens(C7384R.dimen.dp_36));
            }
        });
        this.fullScreenSize = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<Integer>() { // from class: com.onyx.galaxy.note.editor.utils.FullScreenHelper$fullScreenMargin$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Integer invoke() {
                return Integer.valueOf(ResManager.INSTANCE.getDimens(C7384R.dimen.dp_30));
            }
        });
        this.fullScreenMargin = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<ToolDragView>() { // from class: com.onyx.galaxy.note.editor.utils.FullScreenHelper$toolDragView$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ToolDragView invoke() {
                return FullScreenHelper.this.getScribbleFragment().getBinding$note_overseasRelease().shapeAndTool.getToolDragView();
            }
        });
        this.toolDragView = lazy3;
    }

    /* renamed from: g */
    public static final void m47070g(FullScreenHelper this$0, ValueAnimator it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        Object animatedValue = it2.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Int");
        if (((Integer) animatedValue).intValue() <= 0) {
            this$0.m47081n().updateFullScreenVisible(false);
        }
        if (this$0.m47081n().getIsDragging()) {
            return;
        }
        this$0.m47081n().flushUI();
    }

    /* renamed from: i */
    public static final void m47071i(FullScreenHelper this$0, ValueAnimator it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        Object animatedValue = it2.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Int");
        if (((Integer) animatedValue).intValue() > 0) {
            this$0.m47081n().updateFullScreenVisible(true);
        }
        if (this$0.m47081n().getIsDragging()) {
            return;
        }
        this$0.m47081n().flushUI();
    }

    /* renamed from: c */
    public final void m47072c() {
        AnimatorSet animatorSet = this.fullScreenAnimator;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
    }

    /* renamed from: d */
    public final Animator m47073d() {
        LinearLayout editTitleLayout = this.scribbleFragment.getBinding$note_overseasRelease().editTitleLayout;
        Intrinsics.checkNotNullExpressionValue(editTitleLayout, "editTitleLayout");
        return ViewAnimatorExtensionsKt.heightAnimator(editTitleLayout, this.titleHeight, 0);
    }

    /* renamed from: e */
    public final Animator m47074e() {
        final LinearLayout editTitleLayout = this.scribbleFragment.getBinding$note_overseasRelease().editTitleLayout;
        Intrinsics.checkNotNullExpressionValue(editTitleLayout, "editTitleLayout");
        ValueAnimator heightAnimator = ViewAnimatorExtensionsKt.heightAnimator(editTitleLayout, 0, this.titleHeight);
        heightAnimator.addListener(new Animator.AnimatorListener() { // from class: com.onyx.galaxy.note.editor.utils.FullScreenHelper$createTitleExpandAnimator$lambda$9$$inlined$doOnEnd$1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(@NotNull Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(@NotNull Animator animator) {
                editTitleLayout.getLayoutParams().height = -2;
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(@NotNull Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(@NotNull Animator animator) {
            }
        });
        return heightAnimator;
    }

    /* renamed from: f */
    public final List<Animator> m47075f() {
        TintImageView ivFullScreen = m47081n().getBinding().ivFullScreen;
        Intrinsics.checkNotNullExpressionValue(ivFullScreen, "ivFullScreen");
        ArrayList arrayList = new ArrayList();
        CollectionKt.safeAdd(arrayList, ViewAnimatorExtensionsKt.marginAnimator(ivFullScreen, MarginDirection.RIGHT, m47079l(), 0));
        ValueAnimator resizeAnimator = ViewAnimatorExtensionsKt.resizeAnimator(ivFullScreen, m47080m(), 0);
        resizeAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sunia.HTREnginev2.owg
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                FullScreenHelper.m47070g(FullScreenHelper.this, valueAnimator);
            }
        });
        CollectionKt.safeAdd(arrayList, resizeAnimator);
        return arrayList;
    }

    @NotNull
    public final NoteScribbleFragment getScribbleFragment() {
        return this.scribbleFragment;
    }

    /* renamed from: h */
    public final List<Animator> m47076h() {
        TintImageView ivFullScreen = m47081n().getBinding().ivFullScreen;
        Intrinsics.checkNotNullExpressionValue(ivFullScreen, "ivFullScreen");
        ArrayList arrayList = new ArrayList();
        CollectionKt.safeAdd(arrayList, ViewAnimatorExtensionsKt.marginAnimator(ivFullScreen, MarginDirection.RIGHT, 0, m47079l()));
        ValueAnimator resizeAnimator = ViewAnimatorExtensionsKt.resizeAnimator(ivFullScreen, 0, m47080m());
        resizeAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sunia.HTREnginev2.nwg
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                FullScreenHelper.m47071i(FullScreenHelper.this, valueAnimator);
            }
        });
        CollectionKt.safeAdd(arrayList, resizeAnimator);
        return arrayList;
    }

    /* renamed from: j */
    public final EditorBundle m47077j() {
        return this.scribbleFragment.editorBundle$note_overseasRelease();
    }

    /* renamed from: k */
    public final void m47078k() {
        LinearLayout editTitleLayout = this.scribbleFragment.getBinding$note_overseasRelease().editTitleLayout;
        Intrinsics.checkNotNullExpressionValue(editTitleLayout, "editTitleLayout");
        if ((editTitleLayout.getVisibility() == 0) && this.scribbleFragment.getBinding$note_overseasRelease().editTitleLayout.getLayoutParams().height == -2) {
            this.titleHeight = this.scribbleFragment.getBinding$note_overseasRelease().editTitleLayout.getHeight();
        }
    }

    /* renamed from: l */
    public final int m47079l() {
        return ((Number) this.fullScreenMargin.getValue()).intValue();
    }

    /* renamed from: m */
    public final int m47080m() {
        return ((Number) this.fullScreenSize.getValue()).intValue();
    }

    /* renamed from: n */
    public final ToolDragView m47081n() {
        return (ToolDragView) this.toolDragView.getValue();
    }

    /* renamed from: o */
    public final void m47082o() {
        if (m47081n().getDockType() != DockType.BOTTOM || m47081n().getIsDragging()) {
            return;
        }
        m47081n().setVisibility(8);
    }

    public final void onFullScreen(@NotNull FullScreenEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m47078k();
        m47072c();
        final boolean supportEdit = TouchModeFeatureManager.INSTANCE.getCurrentTouchModeFeature().supportEdit();
        List<Animator> m47083p = event.getIsEnter() ? m47083p(supportEdit) : m47084q(supportEdit);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(m47083p);
        animatorSet.setDuration(this.animatorDuration);
        animatorSet.setInterpolator(new DecelerateInterpolator());
        this.fullScreenAnimator = animatorSet;
        animatorSet.addListener(new Animator.AnimatorListener() { // from class: com.onyx.galaxy.note.editor.utils.FullScreenHelper$onFullScreen$lambda$2$$inlined$doOnStart$1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(@NotNull Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(@NotNull Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(@NotNull Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(@NotNull Animator animator) {
                FullScreenHelper.this.m47085r();
            }
        });
        animatorSet.addListener(new Animator.AnimatorListener() { // from class: com.onyx.galaxy.note.editor.utils.FullScreenHelper$onFullScreen$lambda$2$$inlined$doOnEnd$1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(@NotNull Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(@NotNull Animator animator) {
                FullScreenHelper.this.m47086s(supportEdit);
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(@NotNull Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(@NotNull Animator animator) {
            }
        });
        animatorSet.start();
    }

    /* renamed from: p */
    public final List<Animator> m47083p(boolean isSupportTouchEdit) {
        ArrayList arrayList = new ArrayList();
        CollectionKt.safeAdd(arrayList, m47073d());
        if (isSupportTouchEdit) {
            CollectionKt.safeAddAll(arrayList, m47076h());
        } else {
            CollectionKt.safeAdd(arrayList, ViewAnimatorExtensionsKt.fadeInAnimator$default(this.scribbleFragment.getBinding$note_overseasRelease().shapeAndTool.getFullScreenView(), 0.0f, 0.0f, 3, null));
        }
        return arrayList;
    }

    /* renamed from: q */
    public final List<Animator> m47084q(boolean isSupportTouchEdit) {
        ArrayList arrayList = new ArrayList();
        CollectionKt.safeAdd(arrayList, m47074e());
        if (isSupportTouchEdit) {
            CollectionKt.safeAddAll(arrayList, m47075f());
        } else {
            CollectionKt.safeAdd(arrayList, ViewAnimatorExtensionsKt.fadeOutAnimator$default(this.scribbleFragment.getBinding$note_overseasRelease().shapeAndTool.getFullScreenView(), 0.0f, 0.0f, 3, null));
        }
        return arrayList;
    }

    /* renamed from: r */
    public final void m47085r() {
        m47082o();
        EditorBundleKt.postEvent(m47077j(), new VisiblePenBoxByFullScreenEvent(false));
    }

    /* renamed from: s */
    public final void m47086s(boolean isSupportTouchEdit) {
        m47087t(isSupportTouchEdit);
        EditorBundleKt.postEvent(m47077j(), new VisiblePenBoxByFullScreenEvent(true));
        EditorBundleKt.postEvent(m47077j(), new ResetPenBoxPositionEvent());
        GlobalBundle.INSTANCE.postEvent(new FullScreenAnimEndEvent());
    }

    /* renamed from: t */
    public final void m47087t(boolean isSupportTouchEdit) {
        if ((m47081n().getVisibility() == 0) || !isSupportTouchEdit) {
            return;
        }
        this.scribbleFragment.getBinding$note_overseasRelease().shapeAndTool.getToolDragView().setVisibility(0);
    }
}
