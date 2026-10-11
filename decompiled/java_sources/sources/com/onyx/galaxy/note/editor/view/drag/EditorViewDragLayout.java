package com.onyx.galaxy.note.editor.view.drag;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.IntKt;
import com.onyx.android.sdk.base.extension.MotionEventKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.geometry.data.MarginPercent;
import com.onyx.android.sdk.geometry.data.MarginStyle;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateModel;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.android.sdk.universal.editor.display.EditorView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.databinding.EditorViewDragLayoutBinding;
import com.onyx.galaxy.note.editor.view.EditorViewAutoReLocLayout;
import com.onyx.galaxy.note.editor.view.custom.PageMarginView;
import com.onyx.galaxy.note.editor.view.custom.PageScroller;
import com.onyx.galaxy.note.editor.view.custom.ShapesLocationBar;
import com.onyx.galaxy.note.editor.view.custom.TemplateThumbnailView;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u009a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 c2\u00020\u0001:\u0001cB\u0011\b\u0016\u0012\u0006\u0010[\u001a\u00020Z¢\u0006\u0004\b\\\u0010]B\u001d\b\u0016\u0012\u0006\u0010[\u001a\u00020Z\u0012\n\b\u0002\u0010_\u001a\u0004\u0018\u00010^¢\u0006\u0004\b\\\u0010`B%\b\u0016\u0012\u0006\u0010[\u001a\u00020Z\u0012\n\b\u0002\u0010_\u001a\u0004\u0018\u00010^\u0012\u0006\u0010a\u001a\u00020\u0004¢\u0006\u0004\b\\\u0010bJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0018\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0002J\b\u0010\b\u001a\u00020\u0002H\u0002J#\u0010\f\u001a\u00020\u00022\u0012\u0010\u000b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\n0\t\"\u00020\nH\u0002¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0004H\u0002J\u0010\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0018\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0010\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\b\u0010\u001a\u001a\u00020\u0019H\u0002J\u0010\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\b\u0010\u001c\u001a\u00020\u0004H\u0002J\b\u0010\u001d\u001a\u00020\u0004H\u0002J\b\u0010\u001f\u001a\u00020\u001eH\u0002J\u0010\u0010!\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u0004H\u0002J\u0006\u0010#\u001a\u00020\"J\u0006\u0010$\u001a\u00020\nJ\u0006\u0010&\u001a\u00020%J\u0006\u0010(\u001a\u00020'J\u000e\u0010+\u001a\u00020\u00022\u0006\u0010*\u001a\u00020)J\u0006\u0010,\u001a\u00020\u0002J\u000e\u0010.\u001a\u00020\u00022\u0006\u0010-\u001a\u00020\u0004J\u0010\u00101\u001a\u00020\u00022\b\u00100\u001a\u0004\u0018\u00010/J\u0016\u00106\u001a\u00020\u00022\u0006\u00103\u001a\u0002022\u0006\u00105\u001a\u000204J\u0006\u00107\u001a\u00020\u0002J\u000e\u0010:\u001a\u00020\u00022\u0006\u00109\u001a\u000208J\u0016\u0010=\u001a\u00020\u00022\u0006\u0010;\u001a\u00020\u00042\u0006\u0010<\u001a\u00020\u0004J\u000e\u0010?\u001a\u00020\u00022\u0006\u0010>\u001a\u00020\u0019J\u000e\u0010A\u001a\u00020\u00022\u0006\u0010@\u001a\u00020\u0004J\u000e\u0010C\u001a\u00020\u00022\u0006\u0010B\u001a\u00020\u001eJ\u000e\u0010D\u001a\u00020\u00022\u0006\u0010B\u001a\u00020\u001eJ\u000e\u0010F\u001a\u00020\u00022\u0006\u0010E\u001a\u00020\u0012J\u0006\u0010G\u001a\u00020\u0002J\u0006\u0010I\u001a\u00020HR\"\u0010J\u001a\u00020\"8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\bJ\u0010K\u001a\u0004\bL\u0010M\"\u0004\bN\u0010OR\u0018\u0010*\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0003\u0010PR\u0016\u0010\u0013\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010QR\u0016\u0010S\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010RR\u0016\u0010T\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010RR\u0016\u0010U\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010RR\u0016\u0010W\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010VR\u0016\u0010X\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010VR\u0016\u0010Y\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010Q¨\u0006d"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;", "Landroid/widget/FrameLayout;", "", "e", "", "dx", "dy", "m", C6998g.f39679a, "", "Landroid/view/View;", "views", C6999h.f39688c, "([Landroid/view/View;)V", "i", "j", "Lcom/onyx/galaxy/note/editor/view/drag/DragProgressView;", "stateImage", "", "percentage", C4921e.f26537n, "Landroid/widget/TextView;", "stateText", "l", "c", "", C6997f.f39671c, "d", "getMaxThreshold", "getScreenPositionType", "Landroid/graphics/Rect;", "b", "sideBarWidth", "a", "Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;", "getEditorViewDragLayoutBinding", "getEditorView", "Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;", "getPageScroller", "Lcom/onyx/galaxy/note/editor/view/custom/ShapesLocationBar;", "getShapesLocationBar", "Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;", "callback", "setCallback", "requestDragViewInterceptTouchEvent", "layoutType", "setLayoutType", "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;", "templateModel", "loadPaperTemplate", "Lcom/onyx/android/sdk/geometry/data/MarginPercent;", "marginPercent", "Lcom/onyx/android/sdk/geometry/data/MarginStyle;", "marginStyle", "setPageMargin", "clearPageMargin", "Lcom/onyx/galaxy/note/editor/view/custom/PageScroller$PageNumViewUpdateData;", "data", "updateScrollerViewData", "pageIndex", "pageCount", "updatePageNum", "show", "showPageNumView", "width", "setToolBarRectWidth", "rect", "setRightSideBarRect", "setLeftSideBarRect", "translationX", "setContainerTranslationX", "refreshPageScrollerLayout", "Lcom/onyx/galaxy/note/editor/view/EditorViewAutoReLocLayout;", "getEditorViewLockLayout", "binding", "Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;", "getBinding", "()Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;", "setBinding", "(Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;)V", "Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;", "F", "I", "curPageIndex", "curPageCount", "toolbarRectWidth", "Landroid/graphics/Rect;", "rightSideBarRect", "leftSideBarRect", "containerTranslationX", "Landroid/content/Context;", "context", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyle", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Companion", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nEditorViewDragLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditorViewDragLayout.kt\ncom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,438:1\n13309#2,2:439\n*S KotlinDebug\n*F\n+ 1 EditorViewDragLayout.kt\ncom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout\n*L\n268#1:439,2\n*E\n"})
/* loaded from: classes9.dex */
public final class EditorViewDragLayout extends FrameLayout {

    /* renamed from: m */
    public static final int f59984m = ResManager.INSTANCE.getInteger(C10651R.integer.pull_drag_max_threshold_factor);

    /* renamed from: n */
    public static final int f59985n = 0;

    /* renamed from: o */
    public static final int f59986o = 1;

    /* renamed from: p */
    public static final int f59987p = 2;

    /* renamed from: q */
    public static final int f59988q = 3;

    /* renamed from: r */
    public static final int f59989r = 4;
    public EditorViewDragLayoutBinding binding;

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public ViewDragCallback callback;

    /* renamed from: f, reason: from kotlin metadata */
    public float percentage;

    /* renamed from: g, reason: from kotlin metadata */
    public int curPageIndex;

    /* renamed from: h, reason: from kotlin metadata */
    public int curPageCount;

    /* renamed from: i, reason: from kotlin metadata */
    public int toolbarRectWidth;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public Rect rightSideBarRect;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public Rect leftSideBarRect;

    /* renamed from: l, reason: from kotlin metadata */
    public float containerTranslationX;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public EditorViewDragLayout(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final int getMaxThreshold() {
        int i = f59984m;
        int measuredHeight = getBinding().viewDragView.isVerticalOrientation() ? getMeasuredHeight() / i : getMeasuredWidth() / i;
        return measuredHeight <= 0 ? ResManager.INSTANCE.getWindowDefaultWidth() / i : measuredHeight;
    }

    private final int getScreenPositionType() {
        Rect globalVisibleRect = ViewKt.globalVisibleRect(this);
        Rect globalVisibleRect2 = ViewKt.globalVisibleRect(ViewKt.getParentView(this));
        MathUtils mathUtils = MathUtils.INSTANCE;
        boolean areApproximatelyEqual = mathUtils.areApproximatelyEqual(globalVisibleRect.left, globalVisibleRect2.left, 1.0f);
        boolean areApproximatelyEqual2 = mathUtils.areApproximatelyEqual(globalVisibleRect.top, globalVisibleRect2.top, 1.0f);
        boolean areApproximatelyEqual3 = mathUtils.areApproximatelyEqual(globalVisibleRect.right, globalVisibleRect2.right, 1.0f);
        boolean areApproximatelyEqual4 = mathUtils.areApproximatelyEqual(globalVisibleRect.bottom, globalVisibleRect2.bottom, 1.0f);
        if (areApproximatelyEqual && areApproximatelyEqual2 && areApproximatelyEqual4 && !areApproximatelyEqual3) {
            return 1;
        }
        if (areApproximatelyEqual3 && areApproximatelyEqual2 && areApproximatelyEqual4 && !areApproximatelyEqual) {
            return 3;
        }
        if (areApproximatelyEqual2 && areApproximatelyEqual3 && areApproximatelyEqual && !areApproximatelyEqual4) {
            return 2;
        }
        return (areApproximatelyEqual4 && areApproximatelyEqual3 && areApproximatelyEqual && !areApproximatelyEqual2) ? 4 : 0;
    }

    /* renamed from: a */
    public final int m48261a(int sideBarWidth) {
        return IntKt.safeDivide(sideBarWidth, ResManager.INSTANCE.getInteger(C10651R.integer.editor_offset_ratio_when_sidebar_on));
    }

    /* renamed from: b */
    public final Rect m48262b() {
        int screenPositionType = getScreenPositionType();
        boolean z = screenPositionType == 1 || screenPositionType == 3;
        PageScroller.PageNumViewUpdateData viewData = getBinding().pageScroller.getViewData();
        Rect generateDrawingRect = ViewKt.generateDrawingRect(this);
        int width = this.rightSideBarRect.width();
        int width2 = this.leftSideBarRect.width();
        int barGravity = viewData.getBarGravity();
        boolean z2 = width > 0;
        boolean z3 = width2 > 0;
        boolean z4 = barGravity == 8388613;
        boolean z5 = barGravity == 8388611;
        int dimensionPixelSize = ResManager.INSTANCE.getDimensionPixelSize(C10651R.dimen.side_bar_layout_width);
        if (!z) {
            if (z5) {
                if (z2 && this.containerTranslationX < 0.0f) {
                    generateDrawingRect.left += m48261a(dimensionPixelSize);
                }
                if (z3) {
                    int i = generateDrawingRect.left + width2;
                    generateDrawingRect.left = i;
                    if (this.containerTranslationX > 0.0f) {
                        generateDrawingRect.left = i - m48261a(dimensionPixelSize);
                    }
                }
            }
            if (z4) {
                if (z2) {
                    int i2 = generateDrawingRect.right - width;
                    generateDrawingRect.right = i2;
                    if (this.containerTranslationX < 0.0f) {
                        generateDrawingRect.right = i2 + m48261a(dimensionPixelSize);
                    }
                }
                if (z3 && this.containerTranslationX > 0.0f) {
                    generateDrawingRect.right -= m48261a(dimensionPixelSize);
                }
            }
            return generateDrawingRect;
        }
        if (z5 && screenPositionType == 1) {
            if (z3) {
                int i3 = generateDrawingRect.left + width2;
                generateDrawingRect.left = i3;
                if (this.containerTranslationX > 0.0f) {
                    generateDrawingRect.left = i3 - m48261a(dimensionPixelSize);
                }
            }
            if (z2 && this.containerTranslationX < 0.0f) {
                generateDrawingRect.left += m48261a(dimensionPixelSize);
            }
        }
        if (z4 && screenPositionType == 3) {
            if (z3 && this.containerTranslationX > 0.0f) {
                generateDrawingRect.right -= m48261a(dimensionPixelSize);
            }
            if (z2) {
                int i4 = generateDrawingRect.right - width;
                generateDrawingRect.right = i4;
                if (this.containerTranslationX < 0.0f) {
                    generateDrawingRect.right = i4 + m48261a(dimensionPixelSize);
                }
            }
        }
        return generateDrawingRect;
    }

    /* renamed from: c */
    public final int m48263c(float percentage) {
        return m48266f() ? C10651R.drawable.ic_drag_up_state_complete : C10651R.drawable.ic_drag_up_state_full;
    }

    public final void clearPageMargin() {
        if (getBinding().viewDragView.isVerticalOrientation()) {
            getBinding().bottomLayout.templateThumbnail.clearPageMargin();
        } else {
            getBinding().rightLayout.templateThumbnail.clearPageMargin();
        }
    }

    /* renamed from: d */
    public final int m48264d(float percentage) {
        return percentage >= 1.0f ? C10651R.string.release_to_add_new_page : C10651R.string.pull_to_add_new_page;
    }

    /* renamed from: e */
    public final void m48265e() {
        EditorViewDragLayoutBinding inflate = EditorViewDragLayoutBinding.inflate(LayoutInflater.from(getContext()), this, true);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        setBinding(inflate);
        EditorView editorView = getBinding().editorView;
        TintView editorViewFocusRect = getBinding().editorViewFocusRect;
        Intrinsics.checkNotNullExpressionValue(editorViewFocusRect, "editorViewFocusRect");
        editorView.setFocusRectView(editorViewFocusRect);
        getBinding().viewDragView.setCallback(new ViewDragCallback() { // from class: com.onyx.galaxy.note.editor.view.drag.EditorViewDragLayout$initView$1

            /* renamed from: a, reason: from kotlin metadata */
            @NotNull
            public PointF downPoint = new PointF();

            /* renamed from: b, reason: from kotlin metadata */
            public boolean shouldShow;

            @Override // com.onyx.galaxy.note.editor.view.drag.ViewDragCallback
            public boolean canDrag() {
                ViewDragCallback viewDragCallback;
                viewDragCallback = EditorViewDragLayout.this.callback;
                if (viewDragCallback != null) {
                    return viewDragCallback.canDrag();
                }
                return false;
            }

            @Override // com.onyx.galaxy.note.editor.view.drag.ViewDragCallback
            public boolean canDragByFinger(@NotNull MotionEvent event) {
                ViewDragCallback viewDragCallback;
                Intrinsics.checkNotNullParameter(event, "event");
                viewDragCallback = EditorViewDragLayout.this.callback;
                if (viewDragCallback != null) {
                    return viewDragCallback.canDragByFinger(event);
                }
                return true;
            }

            @Override // com.onyx.galaxy.note.editor.view.drag.ViewDragCallback
            public boolean canDragByPen() {
                ViewDragCallback viewDragCallback;
                viewDragCallback = EditorViewDragLayout.this.callback;
                if (viewDragCallback != null) {
                    return viewDragCallback.canDragByPen();
                }
                return false;
            }

            @Override // com.onyx.galaxy.note.editor.view.drag.ViewDragCallback
            public boolean canQuickDrag() {
                ViewDragCallback viewDragCallback;
                viewDragCallback = EditorViewDragLayout.this.callback;
                if (viewDragCallback != null) {
                    return viewDragCallback.canQuickDrag();
                }
                return false;
            }

            @Override // com.onyx.galaxy.note.editor.view.drag.ViewDragCallback
            public void onInterceptTouchEvent(@NotNull MotionEvent event) {
                ViewDragCallback viewDragCallback;
                Intrinsics.checkNotNullParameter(event, "event");
                super.onInterceptTouchEvent(event);
                viewDragCallback = EditorViewDragLayout.this.callback;
                if (viewDragCallback != null) {
                    viewDragCallback.onInterceptTouchEvent(event);
                }
            }

            @Override // com.onyx.galaxy.note.editor.view.drag.ViewDragCallback
            public void onTouchEvent(@NotNull MotionEvent event) {
                ViewDragCallback viewDragCallback;
                Intrinsics.checkNotNullParameter(event, "event");
                super.onTouchEvent(event);
                viewDragCallback = EditorViewDragLayout.this.callback;
                if (viewDragCallback != null) {
                    viewDragCallback.onInterceptTouchEvent(event);
                }
            }

            @Override // com.onyx.galaxy.note.editor.view.drag.ViewDragCallback
            public void onViewDownTouch(@NotNull MotionEvent event) {
                ViewDragCallback viewDragCallback;
                Intrinsics.checkNotNullParameter(event, "event");
                viewDragCallback = EditorViewDragLayout.this.callback;
                if (viewDragCallback != null) {
                    viewDragCallback.onViewDownTouch(event);
                }
                EditorViewDragLayout.this.refreshPageScrollerLayout();
                this.downPoint.set(event.getX(), event.getY());
                this.shouldShow = false;
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public void onViewDragStateChanged(int state) {
                ViewDragCallback viewDragCallback;
                viewDragCallback = EditorViewDragLayout.this.callback;
                if (viewDragCallback != null) {
                    viewDragCallback.onViewDragStateChanged(state);
                }
                if (state == 0) {
                    EditorViewDragLayout.this.m48267g();
                }
            }

            @Override // com.onyx.galaxy.note.editor.view.drag.ViewDragCallback
            public void onViewMovingTouch(@NotNull MotionEvent event) {
                Intrinsics.checkNotNullParameter(event, "event");
                MathUtils mathUtils = MathUtils.INSTANCE;
                PointF pointF = this.downPoint;
                if (mathUtils.distance(pointF.x, pointF.y, event.getX(), event.getY()) > ResManager.INSTANCE.getDimens(C7384R.dimen.dp_8) && !this.shouldShow) {
                    this.shouldShow = true;
                }
                if (this.shouldShow) {
                    if (MotionEventKt.isPenTouchType(event) || canDragByFinger(event)) {
                        EditorViewDragLayout.this.getBinding().pageScroller.show(true);
                    }
                }
            }

            @Override // androidx.customview.widget.ViewDragHelper.Callback
            public void onViewPositionChanged(@NotNull View changedView, int left, int top, int dx, int dy) {
                Intrinsics.checkNotNullParameter(changedView, "changedView");
                EditorViewDragLayout.this.m48273m(dx, dy);
            }

            /* JADX WARN: Code restructure failed: missing block: B:3:0x0011, code lost:
            
                r0 = r0.f60000c.callback;
             */
            @Override // androidx.customview.widget.ViewDragHelper.Callback
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void onViewReleased(@org.jetbrains.annotations.NotNull android.view.View r1, float r2, float r3) {
                /*
                    r0 = this;
                    java.lang.String r2 = "releasedChild"
                    kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r1, r2)
                    com.onyx.galaxy.note.editor.view.drag.EditorViewDragLayout r2 = com.onyx.galaxy.note.editor.view.drag.EditorViewDragLayout.this
                    float r2 = com.onyx.galaxy.note.editor.view.drag.EditorViewDragLayout.access$getPercentage$p(r2)
                    r3 = 1065353216(0x3f800000, float:1.0)
                    int r2 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1))
                    if (r2 < 0) goto L1c
                    com.onyx.galaxy.note.editor.view.drag.EditorViewDragLayout r0 = com.onyx.galaxy.note.editor.view.drag.EditorViewDragLayout.this
                    com.onyx.galaxy.note.editor.view.drag.ViewDragCallback r0 = com.onyx.galaxy.note.editor.view.drag.EditorViewDragLayout.access$getCallback$p(r0)
                    if (r0 == 0) goto L1c
                    r0.onViewMaxReleased(r1)
                L1c:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.editor.view.drag.EditorViewDragLayout$initView$1.onViewReleased(android.view.View, float, float):void");
            }

            @Override // com.onyx.galaxy.note.editor.view.drag.ViewDragCallback
            public void onViewUpTouch(@NotNull MotionEvent event) {
                Intrinsics.checkNotNullParameter(event, "event");
                EditorViewDragLayout.this.getBinding().pageScroller.show(false);
            }
        });
    }

    /* renamed from: f */
    public final boolean m48266f() {
        return this.percentage >= 1.0f;
    }

    /* renamed from: g */
    public final void m48267g() {
        View root = getBinding().bottomLayout.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        View root2 = getBinding().rightLayout.getRoot();
        Intrinsics.checkNotNullExpressionValue(root2, "getRoot(...)");
        m48268h(root, root2);
        m48273m(0, 0);
    }

    @NotNull
    public final EditorViewDragLayoutBinding getBinding() {
        EditorViewDragLayoutBinding editorViewDragLayoutBinding = this.binding;
        if (editorViewDragLayoutBinding != null) {
            return editorViewDragLayoutBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("binding");
        return null;
    }

    @NotNull
    public final View getEditorView() {
        EditorView editorView = getBinding().editorView;
        Intrinsics.checkNotNullExpressionValue(editorView, "editorView");
        return editorView;
    }

    @NotNull
    public final EditorViewDragLayoutBinding getEditorViewDragLayoutBinding() {
        return getBinding();
    }

    @NotNull
    public final EditorViewAutoReLocLayout getEditorViewLockLayout() {
        EditorViewAutoReLocLayout editorViewLockLayout = getBinding().editorViewLockLayout;
        Intrinsics.checkNotNullExpressionValue(editorViewLockLayout, "editorViewLockLayout");
        return editorViewLockLayout;
    }

    @NotNull
    public final PageScroller getPageScroller() {
        PageScroller pageScroller = getBinding().pageScroller;
        Intrinsics.checkNotNullExpressionValue(pageScroller, "pageScroller");
        return pageScroller;
    }

    @NotNull
    public final ShapesLocationBar getShapesLocationBar() {
        ShapesLocationBar shapesLocationBar = getBinding().shapesLocationBar;
        Intrinsics.checkNotNullExpressionValue(shapesLocationBar, "shapesLocationBar");
        return shapesLocationBar;
    }

    /* renamed from: h */
    public final void m48268h(View... views) {
        for (View view : views) {
            view.setTranslationX(view.getTranslationX() + (-view.getTranslationX()));
            view.setTranslationY(view.getTranslationY() + (-view.getTranslationY()));
        }
    }

    /* renamed from: i */
    public final void m48269i(int dy) {
        this.percentage = Math.abs(getBinding().bottomLayout.getRoot().getTranslationY()) / getMaxThreshold();
        DragProgressView stateImage = getBinding().bottomLayout.stateImage;
        Intrinsics.checkNotNullExpressionValue(stateImage, "stateImage");
        m48271k(stateImage, this.percentage);
        TintTextView stateText = getBinding().bottomLayout.stateText;
        Intrinsics.checkNotNullExpressionValue(stateText, "stateText");
        m48272l(stateText, this.percentage);
        ViewKt.setViewVisibleOrInvisible(getBinding().bottomLayout.allowUp, !m48266f());
        View root = getBinding().bottomLayout.getRoot();
        root.setTranslationY(root.getTranslationY() + dy);
    }

    /* renamed from: j */
    public final void m48270j(int dx) {
        this.percentage = Math.abs(getBinding().rightLayout.getRoot().getTranslationX()) / getMaxThreshold();
        DragProgressView stateImage = getBinding().rightLayout.stateImage;
        Intrinsics.checkNotNullExpressionValue(stateImage, "stateImage");
        m48271k(stateImage, this.percentage);
        TintTextView stateText = getBinding().rightLayout.stateText;
        Intrinsics.checkNotNullExpressionValue(stateText, "stateText");
        m48272l(stateText, this.percentage);
        ViewKt.setViewVisibleOrInvisible(getBinding().rightLayout.allowLeft, !m48266f());
        View root = getBinding().rightLayout.getRoot();
        root.setTranslationX(root.getTranslationX() + dx);
    }

    /* renamed from: k */
    public final void m48271k(DragProgressView stateImage, float percentage) {
        stateImage.setImageResource(m48263c(percentage));
        stateImage.setProgress(percentage);
    }

    /* renamed from: l */
    public final void m48272l(TextView stateText, float percentage) {
        stateText.setEnabled(m48266f());
        stateText.setText(m48264d(percentage));
    }

    public final void loadPaperTemplate(@Nullable TemplateModel templateModel) {
        PageMarginView pageMarginView = getBinding().viewDragView.isVerticalOrientation() ? getBinding().bottomLayout.templateThumbnail : getBinding().rightLayout.templateThumbnail;
        Intrinsics.checkNotNull(pageMarginView);
        ViewKt.setViewVisibleOrInvisible(pageMarginView, templateModel != null);
        if (templateModel != null) {
            TemplateThumbnailView.loadPaperTemplate$default(pageMarginView, templateModel, null, 2, null);
        }
    }

    /* renamed from: m */
    public final void m48273m(int dx, int dy) {
        if (getBinding().viewDragView.isVerticalOrientation()) {
            m48269i(dy);
        } else {
            m48270j(dx);
        }
    }

    public final void refreshPageScrollerLayout() {
        getBinding().pageScroller.setMotionRegion(m48262b());
        getBinding().pageScroller.refreshOrientation();
        getBinding().pageScroller.notifyViewDataChange();
    }

    public final void requestDragViewInterceptTouchEvent() {
        getBinding().viewDragView.requestDisallowInterceptTouchEvent(false);
    }

    public final void setBinding(@NotNull EditorViewDragLayoutBinding editorViewDragLayoutBinding) {
        Intrinsics.checkNotNullParameter(editorViewDragLayoutBinding, "<set-?>");
        this.binding = editorViewDragLayoutBinding;
    }

    public final void setCallback(@NotNull ViewDragCallback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.callback = callback;
    }

    public final void setContainerTranslationX(float translationX) {
        this.containerTranslationX = translationX;
    }

    public final void setLayoutType(int layoutType) {
        getBinding().viewDragView.setOrientation(layoutType);
        getBinding().pageScroller.getViewData().setVertical(layoutType == 1);
        getBinding().pageScroller.refreshOrientation();
    }

    public final void setLeftSideBarRect(@NotNull Rect rect) {
        Intrinsics.checkNotNullParameter(rect, "rect");
        this.leftSideBarRect = RectFKt.copy(rect);
    }

    public final void setPageMargin(@NotNull MarginPercent marginPercent, @NotNull MarginStyle marginStyle) {
        Intrinsics.checkNotNullParameter(marginPercent, "marginPercent");
        Intrinsics.checkNotNullParameter(marginStyle, "marginStyle");
        PageMarginView pageMarginView = getBinding().viewDragView.isVerticalOrientation() ? getBinding().bottomLayout.templateThumbnail : getBinding().rightLayout.templateThumbnail;
        Intrinsics.checkNotNull(pageMarginView);
        pageMarginView.setPageMargin(marginPercent, marginStyle);
    }

    public final void setRightSideBarRect(@NotNull Rect rect) {
        Intrinsics.checkNotNullParameter(rect, "rect");
        this.rightSideBarRect = RectFKt.copy(rect);
    }

    public final void setToolBarRectWidth(int width) {
        this.toolbarRectWidth = width;
    }

    public final void showPageNumView(boolean show) {
        getBinding().pageNumView.setVisibility(show ? 0 : 8);
    }

    public final void updatePageNum(int pageIndex, int pageCount) {
        if (this.curPageIndex == pageIndex && this.curPageCount == pageCount) {
            return;
        }
        TintTextView tintTextView = getBinding().pageNumView;
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format("%d/%d", Arrays.copyOf(new Object[]{Integer.valueOf(pageIndex + 1), Integer.valueOf(pageCount)}, 2));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        tintTextView.setText(format);
        this.curPageIndex = pageIndex;
        this.curPageCount = pageCount;
    }

    public final void updateScrollerViewData(@NotNull PageScroller.PageNumViewUpdateData data) {
        Intrinsics.checkNotNullParameter(data, "data");
        getBinding().pageScroller.setViewData(data);
        getBinding().pageScroller.notifyViewDataChange();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public EditorViewDragLayout(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, -1);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ EditorViewDragLayout(Context context, AttributeSet attributeSet, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EditorViewDragLayout(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        this.curPageIndex = -1;
        this.curPageCount = -1;
        this.rightSideBarRect = new Rect();
        this.leftSideBarRect = new Rect();
        m48265e();
    }

    public /* synthetic */ EditorViewDragLayout(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, i);
    }
}
