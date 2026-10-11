package androidx.customview.widget;

import android.content.Context;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.OverScroller;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.core.view.ViewCompat;
import com.google.android.material.motion.MotionUtils;
import java.util.Arrays;

/* loaded from: classes3.dex */
public class ViewDragHelper {

    /* renamed from: A */
    public static final int f6637A = 600;

    /* renamed from: B */
    public static final Interpolator f6638B = new InterpolatorC0949a();
    public static final int DIRECTION_ALL = 3;
    public static final int DIRECTION_HORIZONTAL = 1;
    public static final int DIRECTION_VERTICAL = 2;
    public static final int EDGE_ALL = 15;
    public static final int EDGE_BOTTOM = 8;
    public static final int EDGE_LEFT = 1;
    public static final int EDGE_RIGHT = 2;
    public static final int EDGE_TOP = 4;
    public static final int INVALID_POINTER = -1;
    public static final int STATE_DRAGGING = 1;
    public static final int STATE_IDLE = 0;
    public static final int STATE_SETTLING = 2;

    /* renamed from: x */
    public static final String f6639x = "ViewDragHelper";

    /* renamed from: y */
    public static final int f6640y = 20;

    /* renamed from: z */
    public static final int f6641z = 256;

    /* renamed from: a */
    public int f6642a;

    /* renamed from: b */
    public int f6643b;

    /* renamed from: d */
    public float[] f6645d;

    /* renamed from: e */
    public float[] f6646e;

    /* renamed from: f */
    public float[] f6647f;

    /* renamed from: g */
    public float[] f6648g;

    /* renamed from: h */
    public int[] f6649h;

    /* renamed from: i */
    public int[] f6650i;

    /* renamed from: j */
    public int[] f6651j;

    /* renamed from: k */
    public int f6652k;

    /* renamed from: l */
    public VelocityTracker f6653l;

    /* renamed from: m */
    public float f6654m;

    /* renamed from: n */
    public float f6655n;

    /* renamed from: o */
    public int f6656o;

    /* renamed from: p */
    public final int f6657p;

    /* renamed from: q */
    public int f6658q;

    /* renamed from: r */
    public OverScroller f6659r;

    /* renamed from: s */
    public final Callback f6660s;

    /* renamed from: t */
    public View f6661t;

    /* renamed from: u */
    public boolean f6662u;

    /* renamed from: v */
    public final ViewGroup f6663v;

    /* renamed from: c */
    public int f6644c = -1;

    /* renamed from: w */
    public final Runnable f6664w = new RunnableC0950b();

    /* loaded from: classes3.dex */
    public static abstract class Callback {
        public int clampViewPositionHorizontal(@NonNull View view, int i, int i2) {
            return 0;
        }

        public int clampViewPositionVertical(@NonNull View view, int i, int i2) {
            return 0;
        }

        public int getOrderedChildIndex(int i) {
            return i;
        }

        public int getViewHorizontalDragRange(@NonNull View view) {
            return 0;
        }

        public int getViewVerticalDragRange(@NonNull View view) {
            return 0;
        }

        public void onEdgeDragStarted(int i, int i2) {
        }

        public boolean onEdgeLock(int i) {
            return false;
        }

        public void onEdgeTouched(int i, int i2) {
        }

        public void onViewCaptured(@NonNull View view, int i) {
        }

        public void onViewDragStateChanged(int i) {
        }

        public void onViewPositionChanged(@NonNull View view, int i, int i2, @Px int i3, @Px int i4) {
        }

        public void onViewReleased(@NonNull View view, float f, float f2) {
        }

        public abstract boolean tryCaptureView(@NonNull View view, int i);
    }

    /* renamed from: androidx.customview.widget.ViewDragHelper$a */
    /* loaded from: classes3.dex */
    public class InterpolatorC0949a implements Interpolator {
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    }

    /* renamed from: androidx.customview.widget.ViewDragHelper$b */
    /* loaded from: classes3.dex */
    public class RunnableC0950b implements Runnable {
        public RunnableC0950b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewDragHelper.this.m4036t(0);
        }
    }

    public ViewDragHelper(@NonNull Context context, @NonNull ViewGroup viewGroup, @NonNull Callback callback) {
        if (viewGroup == null) {
            throw new IllegalArgumentException("Parent view may not be null");
        }
        if (callback == null) {
            throw new IllegalArgumentException("Callback may not be null");
        }
        this.f6663v = viewGroup;
        this.f6660s = callback;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        int i = (int) ((context.getResources().getDisplayMetrics().density * 20.0f) + 0.5f);
        this.f6657p = i;
        this.f6656o = i;
        this.f6643b = viewConfiguration.getScaledTouchSlop();
        this.f6654m = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f6655n = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f6659r = new OverScroller(context, f6638B);
    }

    public static ViewDragHelper create(@NonNull ViewGroup viewGroup, @NonNull Callback callback) {
        return new ViewDragHelper(viewGroup.getContext(), viewGroup, callback);
    }

    /* renamed from: a */
    public final boolean m4017a(float f, float f2, int i, int i2) {
        float abs = Math.abs(f);
        float abs2 = Math.abs(f2);
        if ((this.f6649h[i] & i2) != i2 || (this.f6658q & i2) == 0 || (this.f6651j[i] & i2) == i2 || (this.f6650i[i] & i2) == i2) {
            return false;
        }
        int i3 = this.f6643b;
        if (abs <= i3 && abs2 <= i3) {
            return false;
        }
        if (abs >= abs2 * 0.5f || !this.f6660s.onEdgeLock(i2)) {
            return (this.f6650i[i] & i2) == 0 && abs > ((float) this.f6643b);
        }
        int[] iArr = this.f6651j;
        iArr[i] = iArr[i] | i2;
        return false;
    }

    public void abort() {
        cancel();
        if (this.f6642a == 2) {
            int currX = this.f6659r.getCurrX();
            int currY = this.f6659r.getCurrY();
            this.f6659r.abortAnimation();
            int currX2 = this.f6659r.getCurrX();
            int currY2 = this.f6659r.getCurrY();
            this.f6660s.onViewPositionChanged(this.f6661t, currX2, currY2, currX2 - currX, currY2 - currY);
        }
        m4036t(0);
    }

    /* renamed from: b */
    public final boolean m4018b(View view, float f, float f2) {
        if (view == null) {
            return false;
        }
        boolean z = this.f6660s.getViewHorizontalDragRange(view) > 0;
        boolean z2 = this.f6660s.getViewVerticalDragRange(view) > 0;
        if (!z || !z2) {
            return z ? Math.abs(f) > ((float) this.f6643b) : z2 && Math.abs(f2) > ((float) this.f6643b);
        }
        float f3 = (f * f) + (f2 * f2);
        int i = this.f6643b;
        return f3 > ((float) (i * i));
    }

    /* renamed from: c */
    public final float m4019c(float f, float f2, float f3) {
        float abs = Math.abs(f);
        if (abs < f2) {
            return 0.0f;
        }
        return abs > f3 ? f > 0.0f ? f3 : -f3 : f;
    }

    public boolean canScroll(@NonNull View view, boolean z, int i, int i2, int i3, int i4) {
        int i5;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int i6 = i3 + scrollX;
                if (i6 >= childAt.getLeft() && i6 < childAt.getRight() && (i5 = i4 + scrollY) >= childAt.getTop() && i5 < childAt.getBottom() && canScroll(childAt, true, i, i2, i6 - childAt.getLeft(), i5 - childAt.getTop())) {
                    return true;
                }
            }
        }
        return z && (view.canScrollHorizontally(-i) || view.canScrollVertically(-i2));
    }

    public void cancel() {
        this.f6644c = -1;
        m4021e();
        VelocityTracker velocityTracker = this.f6653l;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f6653l = null;
        }
    }

    public void captureChildView(@NonNull View view, int i) {
        if (view.getParent() == this.f6663v) {
            this.f6661t = view;
            this.f6644c = i;
            this.f6660s.onViewCaptured(view, i);
            m4036t(1);
            return;
        }
        throw new IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + this.f6663v + MotionUtils.f31762d);
    }

    public boolean checkTouchSlop(int i) {
        int length = this.f6645d.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (checkTouchSlop(i, i2)) {
                return true;
            }
        }
        return false;
    }

    public boolean continueSettling(boolean z) {
        if (this.f6642a == 2) {
            boolean computeScrollOffset = this.f6659r.computeScrollOffset();
            int currX = this.f6659r.getCurrX();
            int currY = this.f6659r.getCurrY();
            int left = currX - this.f6661t.getLeft();
            int top = currY - this.f6661t.getTop();
            if (left != 0) {
                ViewCompat.offsetLeftAndRight(this.f6661t, left);
            }
            if (top != 0) {
                ViewCompat.offsetTopAndBottom(this.f6661t, top);
            }
            if (left != 0 || top != 0) {
                this.f6660s.onViewPositionChanged(this.f6661t, currX, currY, left, top);
            }
            if (computeScrollOffset && currX == this.f6659r.getFinalX() && currY == this.f6659r.getFinalY()) {
                this.f6659r.abortAnimation();
                computeScrollOffset = false;
            }
            if (!computeScrollOffset) {
                if (z) {
                    this.f6663v.post(this.f6664w);
                } else {
                    m4036t(0);
                }
            }
        }
        return this.f6642a == 2;
    }

    /* renamed from: d */
    public final int m4020d(int i, int i2, int i3) {
        int abs = Math.abs(i);
        if (abs < i2) {
            return 0;
        }
        return abs > i3 ? i > 0 ? i3 : -i3 : i;
    }

    /* renamed from: e */
    public final void m4021e() {
        float[] fArr = this.f6645d;
        if (fArr == null) {
            return;
        }
        Arrays.fill(fArr, 0.0f);
        Arrays.fill(this.f6646e, 0.0f);
        Arrays.fill(this.f6647f, 0.0f);
        Arrays.fill(this.f6648g, 0.0f);
        Arrays.fill(this.f6649h, 0);
        Arrays.fill(this.f6650i, 0);
        Arrays.fill(this.f6651j, 0);
        this.f6652k = 0;
    }

    /* renamed from: f */
    public final void m4022f(int i) {
        if (this.f6645d == null || !isPointerDown(i)) {
            return;
        }
        this.f6645d[i] = 0.0f;
        this.f6646e[i] = 0.0f;
        this.f6647f[i] = 0.0f;
        this.f6648g[i] = 0.0f;
        this.f6649h[i] = 0;
        this.f6650i[i] = 0;
        this.f6651j[i] = 0;
        this.f6652k = (~(1 << i)) & this.f6652k;
    }

    @Nullable
    public View findTopChildUnder(int i, int i2) {
        for (int childCount = this.f6663v.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = this.f6663v.getChildAt(this.f6660s.getOrderedChildIndex(childCount));
            if (i >= childAt.getLeft() && i < childAt.getRight() && i2 >= childAt.getTop() && i2 < childAt.getBottom()) {
                return childAt;
            }
        }
        return null;
    }

    public void flingCapturedView(int i, int i2, int i3, int i4) {
        if (!this.f6662u) {
            throw new IllegalStateException("Cannot flingCapturedView outside of a call to Callback#onViewReleased");
        }
        this.f6659r.fling(this.f6661t.getLeft(), this.f6661t.getTop(), (int) this.f6653l.getXVelocity(this.f6644c), (int) this.f6653l.getYVelocity(this.f6644c), i, i3, i2, i4);
        m4036t(2);
    }

    /* renamed from: g */
    public final int m4023g(int i, int i2, int i3) {
        if (i == 0) {
            return 0;
        }
        int width = this.f6663v.getWidth();
        float f = width / 2;
        float m4026j = f + (m4026j(Math.min(1.0f, Math.abs(i) / width)) * f);
        int abs = Math.abs(i2);
        return Math.min(abs > 0 ? Math.round(Math.abs(m4026j / abs) * 1000.0f) * 4 : (int) (((Math.abs(i) / i3) + 1.0f) * 256.0f), 600);
    }

    public int getActivePointerId() {
        return this.f6644c;
    }

    @Nullable
    public View getCapturedView() {
        return this.f6661t;
    }

    @Px
    public int getDefaultEdgeSize() {
        return this.f6657p;
    }

    @Px
    public int getEdgeSize() {
        return this.f6656o;
    }

    public float getMinVelocity() {
        return this.f6655n;
    }

    @Px
    public int getTouchSlop() {
        return this.f6643b;
    }

    public int getViewDragState() {
        return this.f6642a;
    }

    /* renamed from: h */
    public final int m4024h(View view, int i, int i2, int i3, int i4) {
        float f;
        float f2;
        float f3;
        float f4;
        int m4020d = m4020d(i3, (int) this.f6655n, (int) this.f6654m);
        int m4020d2 = m4020d(i4, (int) this.f6655n, (int) this.f6654m);
        int abs = Math.abs(i);
        int abs2 = Math.abs(i2);
        int abs3 = Math.abs(m4020d);
        int abs4 = Math.abs(m4020d2);
        int i5 = abs3 + abs4;
        int i6 = abs + abs2;
        if (m4020d != 0) {
            f = abs3;
            f2 = i5;
        } else {
            f = abs;
            f2 = i6;
        }
        float f5 = f / f2;
        if (m4020d2 != 0) {
            f3 = abs4;
            f4 = i5;
        } else {
            f3 = abs2;
            f4 = i6;
        }
        return (int) ((m4023g(i, m4020d, this.f6660s.getViewHorizontalDragRange(view)) * f5) + (m4023g(i2, m4020d2, this.f6660s.getViewVerticalDragRange(view)) * (f3 / f4)));
    }

    /* renamed from: i */
    public final void m4025i(float f, float f2) {
        this.f6662u = true;
        this.f6660s.onViewReleased(this.f6661t, f, f2);
        this.f6662u = false;
        if (this.f6642a == 1) {
            m4036t(0);
        }
    }

    public boolean isCapturedViewUnder(int i, int i2) {
        return isViewUnder(this.f6661t, i, i2);
    }

    public boolean isEdgeTouched(int i) {
        int length = this.f6649h.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (isEdgeTouched(i, i2)) {
                return true;
            }
        }
        return false;
    }

    public boolean isPointerDown(int i) {
        return (this.f6652k & (1 << i)) != 0;
    }

    public boolean isViewUnder(@Nullable View view, int i, int i2) {
        return view != null && i >= view.getLeft() && i < view.getRight() && i2 >= view.getTop() && i2 < view.getBottom();
    }

    /* renamed from: j */
    public final float m4026j(float f) {
        return (float) Math.sin((f - 0.5f) * 0.47123894f);
    }

    /* renamed from: k */
    public final void m4027k(int i, int i2, int i3, int i4) {
        int left = this.f6661t.getLeft();
        int top = this.f6661t.getTop();
        if (i3 != 0) {
            i = this.f6660s.clampViewPositionHorizontal(this.f6661t, i, i3);
            ViewCompat.offsetLeftAndRight(this.f6661t, i - left);
        }
        int i5 = i;
        if (i4 != 0) {
            i2 = this.f6660s.clampViewPositionVertical(this.f6661t, i2, i4);
            ViewCompat.offsetTopAndBottom(this.f6661t, i2 - top);
        }
        int i6 = i2;
        if (i3 == 0 && i4 == 0) {
            return;
        }
        this.f6660s.onViewPositionChanged(this.f6661t, i5, i6, i5 - left, i6 - top);
    }

    /* renamed from: l */
    public final void m4028l(int i) {
        float[] fArr = this.f6645d;
        if (fArr == null || fArr.length <= i) {
            int i2 = i + 1;
            float[] fArr2 = new float[i2];
            float[] fArr3 = new float[i2];
            float[] fArr4 = new float[i2];
            float[] fArr5 = new float[i2];
            int[] iArr = new int[i2];
            int[] iArr2 = new int[i2];
            int[] iArr3 = new int[i2];
            if (fArr != null) {
                System.arraycopy(fArr, 0, fArr2, 0, fArr.length);
                float[] fArr6 = this.f6646e;
                System.arraycopy(fArr6, 0, fArr3, 0, fArr6.length);
                float[] fArr7 = this.f6647f;
                System.arraycopy(fArr7, 0, fArr4, 0, fArr7.length);
                float[] fArr8 = this.f6648g;
                System.arraycopy(fArr8, 0, fArr5, 0, fArr8.length);
                int[] iArr4 = this.f6649h;
                System.arraycopy(iArr4, 0, iArr, 0, iArr4.length);
                int[] iArr5 = this.f6650i;
                System.arraycopy(iArr5, 0, iArr2, 0, iArr5.length);
                int[] iArr6 = this.f6651j;
                System.arraycopy(iArr6, 0, iArr3, 0, iArr6.length);
            }
            this.f6645d = fArr2;
            this.f6646e = fArr3;
            this.f6647f = fArr4;
            this.f6648g = fArr5;
            this.f6649h = iArr;
            this.f6650i = iArr2;
            this.f6651j = iArr3;
        }
    }

    /* renamed from: m */
    public final boolean m4029m(int i, int i2, int i3, int i4) {
        int left = this.f6661t.getLeft();
        int top = this.f6661t.getTop();
        int i5 = i - left;
        int i6 = i2 - top;
        if (i5 == 0 && i6 == 0) {
            this.f6659r.abortAnimation();
            m4036t(0);
            return false;
        }
        this.f6659r.startScroll(left, top, i5, i6, m4024h(this.f6661t, i5, i6, i3, i4));
        m4036t(2);
        return true;
    }

    /* renamed from: n */
    public final int m4030n(int i, int i2) {
        int i3 = i < this.f6663v.getLeft() + this.f6656o ? 1 : 0;
        if (i2 < this.f6663v.getTop() + this.f6656o) {
            i3 |= 4;
        }
        if (i > this.f6663v.getRight() - this.f6656o) {
            i3 |= 2;
        }
        return i2 > this.f6663v.getBottom() - this.f6656o ? i3 | 8 : i3;
    }

    /* renamed from: o */
    public final boolean m4031o(int i) {
        if (isPointerDown(i)) {
            return true;
        }
        Log.e(f6639x, "Ignoring pointerId=" + i + " because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  ViewDragHelper did not receive all the events in the event stream.");
        return false;
    }

    /* renamed from: p */
    public final void m4032p() {
        this.f6653l.computeCurrentVelocity(1000, this.f6654m);
        m4025i(m4019c(this.f6653l.getXVelocity(this.f6644c), this.f6655n, this.f6654m), m4019c(this.f6653l.getYVelocity(this.f6644c), this.f6655n, this.f6654m));
    }

    public void processTouchEvent(@NonNull MotionEvent motionEvent) {
        int i;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            cancel();
        }
        if (this.f6653l == null) {
            this.f6653l = VelocityTracker.obtain();
        }
        this.f6653l.addMovement(motionEvent);
        int i2 = 0;
        if (actionMasked == 0) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            int pointerId = motionEvent.getPointerId(0);
            View findTopChildUnder = findTopChildUnder((int) x, (int) y);
            m4034r(x, y, pointerId);
            m4037u(findTopChildUnder, pointerId);
            int i3 = this.f6649h[pointerId];
            int i4 = this.f6658q;
            if ((i3 & i4) != 0) {
                this.f6660s.onEdgeTouched(i3 & i4, pointerId);
                return;
            }
            return;
        }
        if (actionMasked == 1) {
            if (this.f6642a == 1) {
                m4032p();
            }
            cancel();
            return;
        }
        if (actionMasked == 2) {
            if (this.f6642a == 1) {
                if (m4031o(this.f6644c)) {
                    int findPointerIndex = motionEvent.findPointerIndex(this.f6644c);
                    float x2 = motionEvent.getX(findPointerIndex);
                    float y2 = motionEvent.getY(findPointerIndex);
                    float[] fArr = this.f6647f;
                    int i5 = this.f6644c;
                    int i6 = (int) (x2 - fArr[i5]);
                    int i7 = (int) (y2 - this.f6648g[i5]);
                    m4027k(this.f6661t.getLeft() + i6, this.f6661t.getTop() + i7, i6, i7);
                    m4035s(motionEvent);
                    return;
                }
                return;
            }
            int pointerCount = motionEvent.getPointerCount();
            while (i2 < pointerCount) {
                int pointerId2 = motionEvent.getPointerId(i2);
                if (m4031o(pointerId2)) {
                    float x3 = motionEvent.getX(i2);
                    float y3 = motionEvent.getY(i2);
                    float f = x3 - this.f6645d[pointerId2];
                    float f2 = y3 - this.f6646e[pointerId2];
                    m4033q(f, f2, pointerId2);
                    if (this.f6642a != 1) {
                        View findTopChildUnder2 = findTopChildUnder((int) x3, (int) y3);
                        if (m4018b(findTopChildUnder2, f, f2) && m4037u(findTopChildUnder2, pointerId2)) {
                            break;
                        }
                    } else {
                        break;
                    }
                }
                i2++;
            }
            m4035s(motionEvent);
            return;
        }
        if (actionMasked == 3) {
            if (this.f6642a == 1) {
                m4025i(0.0f, 0.0f);
            }
            cancel();
            return;
        }
        if (actionMasked == 5) {
            int pointerId3 = motionEvent.getPointerId(actionIndex);
            float x4 = motionEvent.getX(actionIndex);
            float y4 = motionEvent.getY(actionIndex);
            m4034r(x4, y4, pointerId3);
            if (this.f6642a != 0) {
                if (isCapturedViewUnder((int) x4, (int) y4)) {
                    m4037u(this.f6661t, pointerId3);
                    return;
                }
                return;
            } else {
                m4037u(findTopChildUnder((int) x4, (int) y4), pointerId3);
                int i8 = this.f6649h[pointerId3];
                int i9 = this.f6658q;
                if ((i8 & i9) != 0) {
                    this.f6660s.onEdgeTouched(i8 & i9, pointerId3);
                    return;
                }
                return;
            }
        }
        if (actionMasked != 6) {
            return;
        }
        int pointerId4 = motionEvent.getPointerId(actionIndex);
        if (this.f6642a == 1 && pointerId4 == this.f6644c) {
            int pointerCount2 = motionEvent.getPointerCount();
            while (true) {
                if (i2 >= pointerCount2) {
                    i = -1;
                    break;
                }
                int pointerId5 = motionEvent.getPointerId(i2);
                if (pointerId5 != this.f6644c) {
                    View findTopChildUnder3 = findTopChildUnder((int) motionEvent.getX(i2), (int) motionEvent.getY(i2));
                    View view = this.f6661t;
                    if (findTopChildUnder3 == view && m4037u(view, pointerId5)) {
                        i = this.f6644c;
                        break;
                    }
                }
                i2++;
            }
            if (i == -1) {
                m4032p();
            }
        }
        m4022f(pointerId4);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v4, types: [int] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r2v1, types: [androidx.customview.widget.ViewDragHelper$Callback] */
    /* renamed from: q */
    public final void m4033q(float f, float f2, int i) {
        boolean m4017a = m4017a(f, f2, i, 1);
        boolean z = m4017a;
        if (m4017a(f2, f, i, 4)) {
            z = (m4017a ? 1 : 0) | 4;
        }
        boolean z2 = z;
        if (m4017a(f, f2, i, 2)) {
            z2 = (z ? 1 : 0) | 2;
        }
        ?? r0 = z2;
        if (m4017a(f2, f, i, 8)) {
            r0 = (z2 ? 1 : 0) | 8;
        }
        if (r0 != 0) {
            int[] iArr = this.f6650i;
            iArr[i] = iArr[i] | r0;
            this.f6660s.onEdgeDragStarted(r0, i);
        }
    }

    /* renamed from: r */
    public final void m4034r(float f, float f2, int i) {
        m4028l(i);
        float[] fArr = this.f6645d;
        this.f6647f[i] = f;
        fArr[i] = f;
        float[] fArr2 = this.f6646e;
        this.f6648g[i] = f2;
        fArr2[i] = f2;
        this.f6649h[i] = m4030n((int) f, (int) f2);
        this.f6652k |= 1 << i;
    }

    /* renamed from: s */
    public final void m4035s(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        for (int i = 0; i < pointerCount; i++) {
            int pointerId = motionEvent.getPointerId(i);
            if (m4031o(pointerId)) {
                float x = motionEvent.getX(i);
                float y = motionEvent.getY(i);
                this.f6647f[pointerId] = x;
                this.f6648g[pointerId] = y;
            }
        }
    }

    public void setEdgeSize(@IntRange(from = 0) @Px int i) {
        this.f6656o = i;
    }

    public void setEdgeTrackingEnabled(int i) {
        this.f6658q = i;
    }

    public void setMinVelocity(float f) {
        this.f6655n = f;
    }

    public boolean settleCapturedViewAt(int i, int i2) {
        if (this.f6662u) {
            return m4029m(i, i2, (int) this.f6653l.getXVelocity(this.f6644c), (int) this.f6653l.getYVelocity(this.f6644c));
        }
        throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x00dd, code lost:
    
        if (r12 != r11) goto L54;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean shouldInterceptTouchEvent(@androidx.annotation.NonNull android.view.MotionEvent r17) {
        /*
            Method dump skipped, instructions count: 315
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.customview.widget.ViewDragHelper.shouldInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    public boolean smoothSlideViewTo(@NonNull View view, int i, int i2) {
        this.f6661t = view;
        this.f6644c = -1;
        boolean m4029m = m4029m(i, i2, 0, 0);
        if (!m4029m && this.f6642a == 0 && this.f6661t != null) {
            this.f6661t = null;
        }
        return m4029m;
    }

    /* renamed from: t */
    public void m4036t(int i) {
        this.f6663v.removeCallbacks(this.f6664w);
        if (this.f6642a != i) {
            this.f6642a = i;
            this.f6660s.onViewDragStateChanged(i);
            if (this.f6642a == 0) {
                this.f6661t = null;
            }
        }
    }

    /* renamed from: u */
    public boolean m4037u(View view, int i) {
        if (view == this.f6661t && this.f6644c == i) {
            return true;
        }
        if (view == null || !this.f6660s.tryCaptureView(view, i)) {
            return false;
        }
        this.f6644c = i;
        captureChildView(view, i);
        return true;
    }

    public static ViewDragHelper create(@NonNull ViewGroup viewGroup, float f, @NonNull Callback callback) {
        ViewDragHelper create = create(viewGroup, callback);
        create.f6643b = (int) (create.f6643b * (1.0f / f));
        return create;
    }

    public boolean checkTouchSlop(int i, int i2) {
        if (!isPointerDown(i2)) {
            return false;
        }
        boolean z = (i & 1) == 1;
        boolean z2 = (i & 2) == 2;
        float f = this.f6647f[i2] - this.f6645d[i2];
        float f2 = this.f6648g[i2] - this.f6646e[i2];
        if (!z || !z2) {
            return z ? Math.abs(f) > ((float) this.f6643b) : z2 && Math.abs(f2) > ((float) this.f6643b);
        }
        float f3 = (f * f) + (f2 * f2);
        int i3 = this.f6643b;
        return f3 > ((float) (i3 * i3));
    }

    public boolean isEdgeTouched(int i, int i2) {
        return isPointerDown(i2) && (this.f6649h[i2] & i) != 0;
    }
}
