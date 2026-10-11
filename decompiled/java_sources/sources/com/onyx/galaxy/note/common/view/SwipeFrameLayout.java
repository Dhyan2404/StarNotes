package com.onyx.galaxy.note.common.view;

import android.content.Context;
import android.graphics.PointF;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.widget.FrameLayout;
import androidx.core.app.NotificationCompat;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001:\u0001+B\u0011\b\u0016\u0012\u0006\u0010#\u001a\u00020\"¢\u0006\u0004\b$\u0010%B\u001b\b\u0016\u0012\u0006\u0010#\u001a\u00020\"\u0012\b\u0010'\u001a\u0004\u0018\u00010&¢\u0006\u0004\b$\u0010(B#\b\u0016\u0012\u0006\u0010#\u001a\u00020\"\u0012\b\u0010'\u001a\u0004\u0018\u00010&\u0012\u0006\u0010)\u001a\u00020\u000e¢\u0006\u0004\b$\u0010*J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006J\u0010\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0016J\u0010\u0010\r\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\tH\u0017R\u0016\u0010\u0011\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0015\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0018\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0016\u0010\u001a\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u0017R\u0016\u0010\u001c\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u0010R\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0016\u0010!\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010\u0017¨\u0006,"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/view/SwipeFrameLayout;", "Landroid/widget/FrameLayout;", "Lcom/onyx/galaxy/note/common/view/SwipeFrameLayout$OnSwipeChangeListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "", "setOnSwipeListener", "", "enable", "setEnableSwipeDetector", "Landroid/view/MotionEvent;", "ev", "onInterceptTouchEvent", NotificationCompat.CATEGORY_EVENT, "onTouchEvent", "", "e", "I", "activePointId", "Landroid/graphics/PointF;", C6997f.f39671c, "Landroid/graphics/PointF;", "downPointF", C6998g.f39679a, Constants.HASIDCALL_INDEX_SIG, "isSwipeHorizontal", C6999h.f39688c, "isSwipeVertical", "i", "touchSlop", "j", "Lcom/onyx/galaxy/note/common/view/SwipeFrameLayout$OnSwipeChangeListener;", "swipeListener", C4921e.f26537n, "isEnableSwipeDetector", "Landroid/content/Context;", "context", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "OnSwipeChangeListener", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class SwipeFrameLayout extends FrameLayout {

    /* renamed from: e, reason: from kotlin metadata */
    public int activePointId;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public PointF downPointF;

    /* renamed from: g, reason: from kotlin metadata */
    public boolean isSwipeHorizontal;

    /* renamed from: h, reason: from kotlin metadata */
    public boolean isSwipeVertical;

    /* renamed from: i, reason: from kotlin metadata */
    public int touchSlop;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public OnSwipeChangeListener swipeListener;

    /* renamed from: k, reason: from kotlin metadata */
    public boolean isEnableSwipeDetector;

    @Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&J\u0018\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0007H&¨\u0006\t"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/view/SwipeFrameLayout$OnSwipeChangeListener;", "", "onFinished", "", "onStart", "onSwiped", "x", "", "y", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public interface OnSwipeChangeListener {
        void onFinished();

        void onStart();

        void onSwiped(float x, float y);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SwipeFrameLayout(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.activePointId = -1;
        this.downPointF = new PointF();
        this.touchSlop = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        this.isEnableSwipeDetector = true;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(@NotNull MotionEvent ev) {
        int findPointerIndex;
        Intrinsics.checkNotNullParameter(ev, "ev");
        if (!this.isEnableSwipeDetector) {
            return super.onInterceptTouchEvent(ev);
        }
        int action = ev.getAction();
        if (action == 2 && this.isSwipeHorizontal) {
            return true;
        }
        int i = action & 255;
        if (i == 0) {
            this.isSwipeVertical = false;
            this.isSwipeHorizontal = false;
            this.activePointId = ev.getPointerId(0);
            this.downPointF.set(ev.getRawX(), ev.getRawY());
        } else if (i == 2 && (findPointerIndex = ev.findPointerIndex(this.activePointId)) != -1) {
            float rawX = ev.getRawX(findPointerIndex);
            float rawY = ev.getRawY(findPointerIndex);
            if (this.isSwipeHorizontal) {
                return true;
            }
            if (this.isSwipeVertical) {
                return false;
            }
            if (Math.abs(rawY - this.downPointF.y) > this.touchSlop) {
                this.isSwipeVertical = true;
                return false;
            }
            if (Math.abs(rawX - this.downPointF.x) > this.touchSlop) {
                OnSwipeChangeListener onSwipeChangeListener = this.swipeListener;
                if (onSwipeChangeListener != null) {
                    onSwipeChangeListener.onStart();
                }
                this.isSwipeHorizontal = true;
            }
        }
        return this.isSwipeHorizontal;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x001d, code lost:
    
        if (r0 != 3) goto L23;
     */
    @Override // android.view.View
    @android.annotation.SuppressLint({"ClickableViewAccessibility"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(@org.jetbrains.annotations.NotNull android.view.MotionEvent r5) {
        /*
            r4 = this;
            java.lang.String r0 = "event"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            boolean r0 = r4.isEnableSwipeDetector
            if (r0 != 0) goto Le
            boolean r4 = super.onTouchEvent(r5)
            return r4
        Le:
            boolean r0 = r4.isSwipeHorizontal
            r1 = 1
            if (r0 == 0) goto L40
            int r0 = r5.getAction()
            if (r0 == r1) goto L39
            r2 = 2
            if (r0 == r2) goto L20
            r2 = 3
            if (r0 == r2) goto L39
            goto L40
        L20:
            int r0 = r4.activePointId
            int r0 = r5.findPointerIndex(r0)
            r2 = -1
            if (r0 == r2) goto L40
            com.onyx.galaxy.note.common.view.SwipeFrameLayout$OnSwipeChangeListener r0 = r4.swipeListener
            if (r0 == 0) goto L40
            float r2 = r5.getX()
            float r3 = r5.getY()
            r0.onSwiped(r2, r3)
            goto L40
        L39:
            com.onyx.galaxy.note.common.view.SwipeFrameLayout$OnSwipeChangeListener r0 = r4.swipeListener
            if (r0 == 0) goto L40
            r0.onFinished()
        L40:
            boolean r0 = r4.isSwipeHorizontal
            if (r0 == 0) goto L45
            goto L49
        L45:
            boolean r1 = super.onTouchEvent(r5)
        L49:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.common.view.SwipeFrameLayout.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public final void setEnableSwipeDetector(boolean enable) {
        this.isEnableSwipeDetector = enable;
    }

    public final void setOnSwipeListener(@NotNull OnSwipeChangeListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.swipeListener = listener;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SwipeFrameLayout(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        this.activePointId = -1;
        this.downPointF = new PointF();
        this.touchSlop = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        this.isEnableSwipeDetector = true;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SwipeFrameLayout(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Intrinsics.checkNotNullParameter(context, "context");
        this.activePointId = -1;
        this.downPointF = new PointF();
        this.touchSlop = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        this.isEnableSwipeDetector = true;
    }
}
