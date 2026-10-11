package com.onyx.galaxy.note.editor.view.drag;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.app.NotificationCompat;
import androidx.customview.widget.ViewDragHelper;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.MotionEventKt;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001:\u0001$B'\b\u0007\u0012\u0006\u0010\u001e\u001a\u00020\u001d\u0012\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u001f\u0012\b\b\u0002\u0010!\u001a\u00020\u0006¢\u0006\u0004\b\"\u0010#J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\n\u001a\u00020\tJ\u0010\u0010\r\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000bH\u0016J\u0010\u0010\u000e\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000bH\u0016J\b\u0010\u000f\u001a\u00020\u0004H\u0016J\u0010\u0010\u0010\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000bH\u0002J\u0010\u0010\u0011\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u000bH\u0002J\b\u0010\u0012\u001a\u00020\tH\u0002R\u0016\u0010\u0016\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0016\u0010\u001c\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001b¨\u0006%"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;", "Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;", "Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;", "callback", "", "setCallback", "", "orientation", "setOrientation", "", "isVerticalOrientation", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "onInterceptTouchEvent", "onTouchEvent", "computeScroll", "d", "b", "c", "Landroidx/customview/widget/ViewDragHelper;", C6999h.f39688c, "Landroidx/customview/widget/ViewDragHelper;", "viewDragHelper", "i", "Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;", "Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;", "j", "Lcom/onyx/galaxy/note/editor/view/drag/DragDetector;", "dragDetector", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "defStyle", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "CustomCallback", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class DragHelperView extends TintFrameLayout {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public ViewDragHelper viewDragHelper;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public ViewDragCallback callback;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public DragDetector dragDetector;

    @Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u000f\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b$\u0010%J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\t\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0002H\u0016J0\u0010\u000f\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u0002H\u0016J \u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0011H\u0016J\u0018\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0002H\u0016J \u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u0002H\u0016J \u0010\u001b\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u0002H\u0016R\u0016\u0010\u001e\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0016\u0010!\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0016\u0010#\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010 ¨\u0006&"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView$CustomCallback;", "Landroidx/customview/widget/ViewDragHelper$Callback;", "", "state", "", "onViewDragStateChanged", "Landroid/view/View;", "capturedChild", "activePointerId", "onViewCaptured", "changedView", "left", OneDriverConstants.TOP, "dx", "dy", "onViewPositionChanged", "releasedChild", "", "xvel", "yvel", "onViewReleased", "view", "pointerId", "", "tryCaptureView", "child", "clampViewPositionHorizontal", "clampViewPositionVertical", "a", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, "viewCaptured", "b", "I", "capturedViewLeft", "c", "capturedViewTop", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/galaxy/note/editor/view/drag/DragHelperView;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes9.dex */
    public final class CustomCallback extends ViewDragHelper.Callback {

        /* renamed from: a, reason: from kotlin metadata */
        public boolean viewCaptured;

        /* renamed from: b, reason: from kotlin metadata */
        public int capturedViewLeft;

        /* renamed from: c, reason: from kotlin metadata */
        public int capturedViewTop;

        public CustomCallback() {
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int clampViewPositionHorizontal(@NotNull View child, int left, int dx) {
            Intrinsics.checkNotNullParameter(child, "child");
            if (DragHelperView.this.isVerticalOrientation()) {
                return 0;
            }
            return left;
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int clampViewPositionVertical(@NotNull View child, int top, int dy) {
            Intrinsics.checkNotNullParameter(child, "child");
            if (DragHelperView.this.isVerticalOrientation()) {
                return top;
            }
            return 0;
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewCaptured(@NotNull View capturedChild, int activePointerId) {
            Intrinsics.checkNotNullParameter(capturedChild, "capturedChild");
            if (!this.viewCaptured) {
                this.capturedViewLeft = capturedChild.getLeft();
                this.capturedViewTop = capturedChild.getTop();
            }
            this.viewCaptured = true;
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewDragStateChanged(int state) {
            ViewDragCallback viewDragCallback = DragHelperView.this.callback;
            if (viewDragCallback != null) {
                viewDragCallback.onViewDragStateChanged(state);
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewPositionChanged(@NotNull View changedView, int left, int top, int dx, int dy) {
            Intrinsics.checkNotNullParameter(changedView, "changedView");
            ViewDragCallback viewDragCallback = DragHelperView.this.callback;
            if (viewDragCallback != null) {
                viewDragCallback.onViewPositionChanged(changedView, left, top, dx, dy);
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewReleased(@NotNull View releasedChild, float xvel, float yvel) {
            Intrinsics.checkNotNullParameter(releasedChild, "releasedChild");
            ViewDragCallback viewDragCallback = DragHelperView.this.callback;
            if (viewDragCallback != null) {
                viewDragCallback.onViewReleased(releasedChild, xvel, yvel);
            }
            DragHelperView.this.viewDragHelper.settleCapturedViewAt(this.capturedViewLeft, this.capturedViewTop);
            this.viewCaptured = false;
            DragHelperView.this.invalidate();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public boolean tryCaptureView(@NotNull View view, int pointerId) {
            Intrinsics.checkNotNullParameter(view, "view");
            ViewDragCallback viewDragCallback = DragHelperView.this.callback;
            if (viewDragCallback != null) {
                return viewDragCallback.tryCaptureView(view, pointerId);
            }
            return true;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public DragHelperView(@NotNull Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* renamed from: b */
    public final boolean m48258b(MotionEvent event) {
        ViewDragCallback viewDragCallback;
        if (MotionEventKt.isDoneAction(event) || (viewDragCallback = this.callback) == null) {
            return false;
        }
        return viewDragCallback.canDrag();
    }

    /* renamed from: c */
    public final boolean m48259c() {
        ViewDragCallback viewDragCallback = this.callback;
        if (viewDragCallback != null) {
            return viewDragCallback.canDragByPen();
        }
        return false;
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.viewDragHelper.continueSettling(true)) {
            invalidate();
        }
    }

    /* renamed from: d */
    public final boolean m48260d(MotionEvent event) {
        ViewDragCallback viewDragCallback;
        if (MotionEventKt.isDoneAction(event) || (viewDragCallback = this.callback) == null) {
            return false;
        }
        return viewDragCallback.canQuickDrag();
    }

    public final boolean isVerticalOrientation() {
        return this.dragDetector.isVerticalOrientation();
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0030, code lost:
    
        if (r0 != 3) goto L29;
     */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onInterceptTouchEvent(@org.jetbrains.annotations.NotNull final android.view.MotionEvent r5) {
        /*
            r4 = this;
            java.lang.String r0 = "event"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            com.onyx.galaxy.note.editor.view.drag.ViewDragCallback r0 = r4.callback
            if (r0 == 0) goto Lc
            r0.onInterceptTouchEvent(r5)
        Lc:
            androidx.customview.widget.ViewDragHelper r0 = r4.viewDragHelper
            int r0 = r0.getViewDragState()
            r1 = 2
            r2 = 0
            if (r0 != r1) goto L17
            return r2
        L17:
            boolean r0 = com.onyx.android.sdk.base.extension.MotionEventKt.isPenTouchType(r5)
            if (r0 == 0) goto L24
            boolean r0 = r4.m48259c()
            if (r0 != 0) goto L24
            return r2
        L24:
            int r0 = r5.getActionMasked()
            r3 = 1
            if (r0 == 0) goto L52
            if (r0 == r3) goto L45
            if (r0 == r1) goto L33
            r1 = 3
            if (r0 == r1) goto L45
            goto L5e
        L33:
            com.onyx.galaxy.note.editor.view.drag.DragDetector r0 = r4.dragDetector
            com.onyx.galaxy.note.editor.view.drag.DragHelperView$onInterceptTouchEvent$1 r1 = new com.onyx.galaxy.note.editor.view.drag.DragHelperView$onInterceptTouchEvent$1
            r1.<init>()
            r0.detect(r5, r1)
            com.onyx.galaxy.note.editor.view.drag.ViewDragCallback r0 = r4.callback
            if (r0 == 0) goto L5e
            r0.onViewMovingTouch(r5)
            goto L5e
        L45:
            com.onyx.galaxy.note.editor.view.drag.DragDetector r0 = r4.dragDetector
            r0.onUp(r5)
            com.onyx.galaxy.note.editor.view.drag.ViewDragCallback r0 = r4.callback
            if (r0 == 0) goto L5e
            r0.onViewUpTouch(r5)
            goto L5e
        L52:
            com.onyx.galaxy.note.editor.view.drag.DragDetector r0 = r4.dragDetector
            r0.onDown(r5)
            com.onyx.galaxy.note.editor.view.drag.ViewDragCallback r0 = r4.callback
            if (r0 == 0) goto L5e
            r0.onViewDownTouch(r5)
        L5e:
            androidx.customview.widget.ViewDragHelper r0 = r4.viewDragHelper
            boolean r0 = r0.shouldInterceptTouchEvent(r5)
            if (r0 == 0) goto L75
            com.onyx.galaxy.note.editor.view.drag.DragDetector r0 = r4.dragDetector
            boolean r0 = r0.getTouchSlopCanDrag()
            if (r0 == 0) goto L75
            boolean r0 = r4.m48258b(r5)
            if (r0 == 0) goto L75
            r2 = r3
        L75:
            if (r2 != 0) goto L7d
            boolean r0 = com.onyx.android.sdk.base.extension.MotionEventKt.isDownAction(r5)
            if (r0 != 0) goto L83
        L7d:
            boolean r0 = com.onyx.android.sdk.base.extension.MotionEventKt.isDoneAction(r5)
            if (r0 == 0) goto L88
        L83:
            androidx.customview.widget.ViewDragHelper r4 = r4.viewDragHelper
            r4.processTouchEvent(r5)
        L88:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.editor.view.drag.DragHelperView.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View
    public boolean onTouchEvent(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        ViewDragCallback viewDragCallback = this.callback;
        if (viewDragCallback != null) {
            viewDragCallback.onTouchEvent(event);
        }
        this.viewDragHelper.processTouchEvent(event);
        if (MotionEventKt.isDoneAction(event)) {
            this.dragDetector.onUp(event);
            ViewDragCallback viewDragCallback2 = this.callback;
            if (viewDragCallback2 != null) {
                viewDragCallback2.onViewUpTouch(event);
            }
        }
        return this.dragDetector.getTouchSlopCanDrag();
    }

    public final void setCallback(@NotNull ViewDragCallback callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.callback = callback;
    }

    public final void setOrientation(int orientation) {
        this.dragDetector.setOrientation(orientation);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public DragHelperView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public /* synthetic */ DragHelperView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public DragHelperView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        this.dragDetector = new DragDetector(context);
        ViewDragHelper create = ViewDragHelper.create(this, new CustomCallback());
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        this.viewDragHelper = create;
    }
}
