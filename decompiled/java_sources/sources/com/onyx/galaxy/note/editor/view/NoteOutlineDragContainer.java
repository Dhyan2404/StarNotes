package com.onyx.galaxy.note.editor.view;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.PointF;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.core.app.NotificationCompat;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.extension.ViewExtKt;
import com.onyx.galaxy.note.editor.view.NoteOutlineDragContainer;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import java.util.List;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.apache.commons.math3.linear.SymmLQ;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010!\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u00012\u00020\u0002:\u0001JB\u0019\u0012\u0006\u0010E\u001a\u00020D\u0012\b\u0010G\u001a\u0004\u0018\u00010F¢\u0006\u0004\bH\u0010IJ\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J0\u0010\r\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u0003H\u0014J\u0018\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016J\u0010\u0010\u0015\u001a\u00020\u00052\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013J\u0006\u0010\u0016\u001a\u00020\u0003J\u000e\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u0003J\u000e\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u0003J\u0014\u0010\u001d\u001a\u00020\u00052\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00030\u001bJ\u000e\u0010\u001e\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u0003J\u0006\u0010\u001f\u001a\u00020\u0005J\u000e\u0010!\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u0007J\u000e\u0010\"\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0007J\u0010\u0010$\u001a\u00020\u00052\u0006\u0010#\u001a\u00020\u000eH\u0002J\b\u0010%\u001a\u00020\u0005H\u0002J\b\u0010&\u001a\u00020\u0007H\u0002J\u0010\u0010'\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u0016\u0010*\u001a\u00020\u00052\f\u0010)\u001a\b\u0012\u0004\u0012\u00020\u00050(H\u0002J\u0016\u0010+\u001a\u00020\u00052\f\u0010)\u001a\b\u0012\u0004\u0012\u00020\u00050(H\u0002J\u0018\u0010.\u001a\u00020\u00032\u0006\u0010,\u001a\u00020\u00032\u0006\u0010-\u001a\u00020\u0003H\u0002J\u0010\u0010/\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u0003H\u0002J\u0010\u00100\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u0003H\u0002J\u0010\u00101\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u0003H\u0002R\u0014\u00103\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u00102R\u0016\u00107\u001a\u0002048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00106R\u0016\u00109\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u00108R\u0016\u0010:\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u00108R\u0016\u0010;\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00108R\u0016\u0010<\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u00108R\u0016\u0010=\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00108R\u001c\u0010@\u001a\b\u0012\u0004\u0012\u00020\u00030>8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010?R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010AR\u0016\u0010C\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bB\u00108¨\u0006K"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer;", "Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;", "Landroid/view/View$OnTouchListener;", "", NotificationCompat.WearableExtender.f5060z, "", "setDragViewGravity", "", "changed", "left", OneDriverConstants.TOP, gon.f71288n0, "bottom", "onLayout", "Landroid/view/View;", "v", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "onTouch", "Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer$Callback;", "callback", "setCallback", "getCurrentLevel", SymmLQ.f108603e, "setCollapseThreshold", "width", "setMaxDraggableWidth", "", "sizeList", "setAdjustableSizeList", "setDefaultWidth", Constants.RESET, "enable", "setEnableDrag", "setDragViewLocation", "imageView", "e", "m", C4921e.f26528e, "p", "Lkotlin/Function0;", "onAnimationEnd", C6997f.f39671c, C6999h.f39688c, "newWidth", "offsetX", "j", "l", C4921e.f26537n, GoogleApiAvailabilityLight.f29016b, "Landroid/view/View;", "dragView", "Landroid/graphics/PointF;", "i", "Landroid/graphics/PointF;", "downPoint", "I", "downViewWidth", "downViewX", "defaultWidth", "collapseThreshold", "maxDraggableWidth", "", "Ljava/util/List;", "adjustableSizeList", "Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer$Callback;", "q", "currentLevel", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attributeSet", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "Callback", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNoteOutlineDragContainer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteOutlineDragContainer.kt\ncom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 Animator.kt\nandroidx/core/animation/AnimatorKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,318:1\n326#2,4:319\n91#3,14:323\n378#4,7:337\n378#4,7:344\n*S KotlinDebug\n*F\n+ 1 NoteOutlineDragContainer.kt\ncom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer\n*L\n202#1:319,4\n236#1:323,14\n285#1:337,7\n295#1:344,7\n*E\n"})
/* loaded from: classes9.dex */
public final class NoteOutlineDragContainer extends TintFrameLayout implements View.OnTouchListener {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final View dragView;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public PointF downPoint;

    /* renamed from: j, reason: from kotlin metadata */
    public int downViewWidth;

    /* renamed from: k, reason: from kotlin metadata */
    public int downViewX;

    /* renamed from: l, reason: from kotlin metadata */
    public int defaultWidth;

    /* renamed from: m, reason: from kotlin metadata */
    public int collapseThreshold;

    /* renamed from: n, reason: from kotlin metadata */
    public int maxDraggableWidth;

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public List<Integer> adjustableSizeList;

    /* renamed from: p, reason: from kotlin metadata */
    @Nullable
    public Callback callback;

    /* renamed from: q, reason: from kotlin metadata */
    public int currentLevel;

    @Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u0018\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H&J\b\u0010\b\u001a\u00020\u0003H&J\b\u0010\t\u001a\u00020\u0003H&J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\fH&J\u0018\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0010H&¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/NoteOutlineDragContainer$Callback;", "", "onCollapse", "", "onLevelChanged", "level", "", "levelSize", "onStartDrag", "onStopDrag", "onTranslate", "translateX", "", "onWidthChanged", "newWidth", "isMinLevel", "", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public interface Callback {
        void onCollapse();

        void onLevelChanged(int level, int levelSize);

        void onStartDrag();

        void onStopDrag();

        void onTranslate(float translateX);

        void onWidthChanged(int newWidth, boolean isMinLevel);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NoteOutlineDragContainer(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        List<Integer> mutableListOf;
        Intrinsics.checkNotNullParameter(context, "context");
        this.downPoint = new PointF(0.0f, 0.0f);
        this.collapseThreshold = 20;
        this.maxDraggableWidth = Integer.MAX_VALUE;
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(Integer.valueOf(this.defaultWidth));
        this.adjustableSizeList = mutableListOf;
        ImageView imageView = new ImageView(context);
        imageView.setImageResource(C10651R.drawable.icon_outline_drag);
        ResManager resManager = ResManager.INSTANCE;
        int dimens = resManager.getDimens(C7384R.dimen.dp_16);
        imageView.setPadding(0, dimens, resManager.getDimens(C7384R.dimen.dp_4), dimens);
        m47392e(imageView);
        this.dragView = imageView;
        m47398m();
    }

    /* renamed from: g */
    public static final void m47389g(NoteOutlineDragContainer this$0, ValueAnimator it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        Object animatedValue = it2.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Int");
        ViewKt.setLayoutWidth(this$0, ((Integer) animatedValue).intValue());
    }

    /* renamed from: i */
    public static final void m47390i(NoteOutlineDragContainer this$0, ValueAnimator it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        Callback callback = this$0.callback;
        if (callback != null) {
            float f = -this$0.defaultWidth;
            Object animatedValue = it2.getAnimatedValue();
            Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
            callback.onTranslate(f - ((Float) animatedValue).floatValue());
        }
    }

    /* renamed from: q */
    public static final void m47391q(boolean z, NoteOutlineDragContainer this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (z && !ViewExtKt.isLayoutDirectionRtl(this$0)) {
            this$0.dragView.setScaleX(-1.0f);
        }
        if (z || !ViewExtKt.isLayoutDirectionRtl(this$0)) {
            return;
        }
        this$0.dragView.setScaleX(-1.0f);
    }

    private final void setDragViewGravity(int gravity) {
        View view = this.dragView;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            throw new NullPointerException("null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
        }
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
        layoutParams2.gravity = gravity;
        view.setLayoutParams(layoutParams2);
        int paddingRight = m47401p(gravity) ? this.dragView.getPaddingRight() : 0;
        View view2 = this.dragView;
        view2.setPadding(view2.getPaddingLeft(), this.dragView.getPaddingTop(), paddingRight, this.dragView.getPaddingBottom());
    }

    /* renamed from: e */
    public final void m47392e(View imageView) {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 16;
        addView(imageView, layoutParams);
    }

    /* renamed from: f */
    public final void m47393f(final Function0<Unit> onAnimationEnd) {
        if (!(getTranslationX() == 0.0f)) {
            m47394h(onAnimationEnd);
            return;
        }
        ValueAnimator ofInt = ValueAnimator.ofInt(getLayoutParams().width, this.adjustableSizeList.get(this.currentLevel).intValue());
        ofInt.setDuration(ResManager.INSTANCE.getLong(C10651R.integer.side_bar_drag_animation_duration));
        ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sunia.HTREnginev2.azj
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                NoteOutlineDragContainer.m47389g(NoteOutlineDragContainer.this, valueAnimator);
            }
        });
        Intrinsics.checkNotNull(ofInt);
        ofInt.addListener(new Animator.AnimatorListener() { // from class: com.onyx.galaxy.note.editor.view.NoteOutlineDragContainer$animateSatisfyWidthToCurrent$$inlined$addListener$default$1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(@NotNull Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(@NotNull Animator animator) {
                Function0.this.invoke();
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(@NotNull Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(@NotNull Animator animator) {
            }
        });
        ofInt.start();
    }

    public final int getCurrentLevel() {
        return this.currentLevel;
    }

    /* renamed from: h */
    public final void m47394h(final Function0<Unit> onAnimationEnd) {
        animate().translationX(0.0f).setUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sunia.HTREnginev2.bzj
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                NoteOutlineDragContainer.m47390i(NoteOutlineDragContainer.this, valueAnimator);
            }
        }).setListener(new Animator.AnimatorListener() { // from class: com.onyx.galaxy.note.editor.view.NoteOutlineDragContainer$animateTranslateToDefault$2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(@NotNull Animator animation) {
                Intrinsics.checkNotNullParameter(animation, "animation");
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(@NotNull Animator animation) {
                Intrinsics.checkNotNullParameter(animation, "animation");
                onAnimationEnd.invoke();
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(@NotNull Animator animation) {
                Intrinsics.checkNotNullParameter(animation, "animation");
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(@NotNull Animator animation) {
                Intrinsics.checkNotNullParameter(animation, "animation");
            }
        }).setDuration(ResManager.INSTANCE.getLong(C10651R.integer.side_bar_drag_animation_duration)).start();
    }

    /* renamed from: j */
    public final int m47395j(int newWidth, int offsetX) {
        return Math.abs(offsetX) <= ViewConfiguration.get(getContext()).getScaledTouchSlop() ? this.currentLevel : offsetX > 0 ? m47396k(newWidth) : m47397l(newWidth);
    }

    /* renamed from: k */
    public final int m47396k(int width) {
        int i;
        if (width <= this.adjustableSizeList.get(0).intValue()) {
            return 0;
        }
        if (m47399n(width)) {
            return this.adjustableSizeList.size() - 1;
        }
        MathUtils mathUtils = MathUtils.INSTANCE;
        List<Integer> list = this.adjustableSizeList;
        ListIterator<Integer> listIterator = list.listIterator(list.size());
        while (true) {
            if (!listIterator.hasPrevious()) {
                i = -1;
                break;
            }
            if (width >= listIterator.previous().intValue()) {
                i = listIterator.nextIndex();
                break;
            }
        }
        return ((Number) mathUtils.atLeast(Integer.valueOf(i), 0)).intValue();
    }

    /* renamed from: l */
    public final int m47397l(int width) {
        if (m47399n(width)) {
            return this.adjustableSizeList.size() - 1;
        }
        List<Integer> list = this.adjustableSizeList;
        ListIterator<Integer> listIterator = list.listIterator(list.size());
        while (listIterator.hasPrevious()) {
            if (width > listIterator.previous().intValue()) {
                return listIterator.nextIndex();
            }
        }
        return -1;
    }

    /* renamed from: m */
    public final void m47398m() {
        this.dragView.setOnTouchListener(this);
    }

    /* renamed from: n */
    public final boolean m47399n(int width) {
        int intValue = this.adjustableSizeList.get(r0.size() - 2).intValue();
        List<Integer> list = this.adjustableSizeList;
        return intValue + ((list.get(list.size() - 1).intValue() - intValue) / 2) < width;
    }

    /* renamed from: o */
    public final boolean m47400o() {
        ViewGroup.LayoutParams layoutParams = this.dragView.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
        return m47401p(((FrameLayout.LayoutParams) layoutParams).gravity);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean changed, int left, int top, int right, int bottom) {
        super.onLayout(changed, left, top, right, bottom);
        this.dragView.bringToFront();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x002b, code lost:
    
        if (r0 != 3) goto L51;
     */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouch(@org.jetbrains.annotations.NotNull android.view.View r7, @org.jetbrains.annotations.NotNull android.view.MotionEvent r8) {
        /*
            Method dump skipped, instructions count: 281
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.editor.view.NoteOutlineDragContainer.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    /* renamed from: p */
    public final boolean m47401p(int gravity) {
        return gravity == 8388627;
    }

    public final void reset() {
        setTranslationX(0.0f);
        this.currentLevel = 0;
        if (this.defaultWidth <= 0 || getLayoutParams().width == this.defaultWidth) {
            return;
        }
        getLayoutParams().width = this.defaultWidth;
        this.downViewX = 0;
        this.downViewWidth = 0;
    }

    public final void setAdjustableSizeList(@NotNull List<Integer> sizeList) {
        Intrinsics.checkNotNullParameter(sizeList, "sizeList");
        this.adjustableSizeList.clear();
        this.adjustableSizeList.addAll(sizeList);
        CollectionsKt__MutableCollectionsJVMKt.sort(this.adjustableSizeList);
    }

    public final void setCallback(@Nullable Callback callback) {
        this.callback = callback;
    }

    public final void setCollapseThreshold(int threshold) {
        this.collapseThreshold = threshold;
    }

    public final void setDefaultWidth(int width) {
        this.defaultWidth = width;
    }

    public final void setDragViewLocation(final boolean left) {
        setDragViewGravity(left ? 8388629 : 8388627);
        post(new Runnable() { // from class: com.sunia.HTREnginev2.czj
            @Override // java.lang.Runnable
            public final void run() {
                NoteOutlineDragContainer.m47391q(left, this);
            }
        });
    }

    public final void setEnableDrag(boolean enable) {
        ViewKt.setViewVisibleOrGone(this.dragView, enable);
    }

    public final void setMaxDraggableWidth(int width) {
        this.maxDraggableWidth = width;
    }
}
