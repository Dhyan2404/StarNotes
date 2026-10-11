package com.google.android.material.behavior;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.customview.widget.ViewDragHelper;

/* loaded from: classes6.dex */
public class SwipeDismissBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {
    public static final int STATE_DRAGGING = 1;
    public static final int STATE_IDLE = 0;
    public static final int STATE_SETTLING = 2;
    public static final int SWIPE_DIRECTION_ANY = 2;
    public static final int SWIPE_DIRECTION_END_TO_START = 1;
    public static final int SWIPE_DIRECTION_START_TO_END = 0;

    /* renamed from: p */
    public static final float f30349p = 0.5f;

    /* renamed from: q */
    public static final float f30350q = 0.0f;

    /* renamed from: r */
    public static final float f30351r = 0.5f;

    /* renamed from: e */
    public ViewDragHelper f30352e;

    /* renamed from: f */
    public OnDismissListener f30353f;

    /* renamed from: g */
    public boolean f30354g;

    /* renamed from: h */
    public boolean f30355h;

    /* renamed from: j */
    public boolean f30357j;

    /* renamed from: i */
    public float f30356i = 0.0f;

    /* renamed from: k */
    public int f30358k = 2;

    /* renamed from: l */
    public float f30359l = 0.5f;

    /* renamed from: m */
    public float f30360m = 0.0f;

    /* renamed from: n */
    public float f30361n = 0.5f;

    /* renamed from: o */
    public final ViewDragHelper.Callback f30362o = new C5154a();

    /* loaded from: classes6.dex */
    public interface OnDismissListener {
        void onDismiss(View view);

        void onDragStateChanged(int i);
    }

    /* renamed from: com.google.android.material.behavior.SwipeDismissBehavior$a */
    /* loaded from: classes6.dex */
    public class C5154a extends ViewDragHelper.Callback {

        /* renamed from: d */
        public static final int f30363d = -1;

        /* renamed from: a */
        public int f30364a;

        /* renamed from: b */
        public int f30365b = -1;

        public C5154a() {
        }

        /* renamed from: a */
        public final boolean m23067a(@NonNull View view, float f) {
            if (f == 0.0f) {
                return Math.abs(view.getLeft() - this.f30364a) >= Math.round(((float) view.getWidth()) * SwipeDismissBehavior.this.f30359l);
            }
            boolean z = ViewCompat.getLayoutDirection(view) == 1;
            int i = SwipeDismissBehavior.this.f30358k;
            if (i == 2) {
                return true;
            }
            if (i == 0) {
                if (z) {
                    if (f >= 0.0f) {
                        return false;
                    }
                } else if (f <= 0.0f) {
                    return false;
                }
                return true;
            }
            if (i != 1) {
                return false;
            }
            if (z) {
                if (f <= 0.0f) {
                    return false;
                }
            } else if (f >= 0.0f) {
                return false;
            }
            return true;
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int clampViewPositionHorizontal(@NonNull View view, int i, int i2) {
            int width;
            int width2;
            int width3;
            boolean z = ViewCompat.getLayoutDirection(view) == 1;
            int i3 = SwipeDismissBehavior.this.f30358k;
            if (i3 == 0) {
                if (z) {
                    width = this.f30364a - view.getWidth();
                    width2 = this.f30364a;
                } else {
                    width = this.f30364a;
                    width3 = view.getWidth();
                    width2 = width3 + width;
                }
            } else if (i3 != 1) {
                width = this.f30364a - view.getWidth();
                width2 = this.f30364a + view.getWidth();
            } else if (z) {
                width = this.f30364a;
                width3 = view.getWidth();
                width2 = width3 + width;
            } else {
                width = this.f30364a - view.getWidth();
                width2 = this.f30364a;
            }
            return SwipeDismissBehavior.m23063c(width, i, width2);
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int clampViewPositionVertical(@NonNull View view, int i, int i2) {
            return view.getTop();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int getViewHorizontalDragRange(@NonNull View view) {
            return view.getWidth();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewCaptured(@NonNull View view, int i) {
            this.f30365b = i;
            this.f30364a = view.getLeft();
            ViewParent parent = view.getParent();
            if (parent != null) {
                SwipeDismissBehavior.this.f30355h = true;
                parent.requestDisallowInterceptTouchEvent(true);
                SwipeDismissBehavior.this.f30355h = false;
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewDragStateChanged(int i) {
            OnDismissListener onDismissListener = SwipeDismissBehavior.this.f30353f;
            if (onDismissListener != null) {
                onDismissListener.onDragStateChanged(i);
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewPositionChanged(@NonNull View view, int i, int i2, int i3, int i4) {
            float width = view.getWidth() * SwipeDismissBehavior.this.f30360m;
            float width2 = view.getWidth() * SwipeDismissBehavior.this.f30361n;
            float abs = Math.abs(i - this.f30364a);
            if (abs <= width) {
                view.setAlpha(1.0f);
            } else if (abs >= width2) {
                view.setAlpha(0.0f);
            } else {
                view.setAlpha(SwipeDismissBehavior.m23062b(0.0f, 1.0f - SwipeDismissBehavior.m23064e(width, width2, abs), 1.0f));
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewReleased(@NonNull View view, float f, float f2) {
            int i;
            boolean z;
            OnDismissListener onDismissListener;
            this.f30365b = -1;
            int width = view.getWidth();
            if (m23067a(view, f)) {
                if (f >= 0.0f) {
                    int left = view.getLeft();
                    int i2 = this.f30364a;
                    if (left >= i2) {
                        i = i2 + width;
                        z = true;
                    }
                }
                i = this.f30364a - width;
                z = true;
            } else {
                i = this.f30364a;
                z = false;
            }
            if (SwipeDismissBehavior.this.f30352e.settleCapturedViewAt(i, view.getTop())) {
                ViewCompat.postOnAnimation(view, new RunnableC5156c(view, z));
            } else {
                if (!z || (onDismissListener = SwipeDismissBehavior.this.f30353f) == null) {
                    return;
                }
                onDismissListener.onDismiss(view);
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public boolean tryCaptureView(View view, int i) {
            int i2 = this.f30365b;
            return (i2 == -1 || i2 == i) && SwipeDismissBehavior.this.canSwipeDismissView(view);
        }
    }

    /* renamed from: com.google.android.material.behavior.SwipeDismissBehavior$b */
    /* loaded from: classes6.dex */
    public class C5155b implements AccessibilityViewCommand {
        public C5155b() {
        }

        @Override // androidx.core.view.accessibility.AccessibilityViewCommand
        public boolean perform(@NonNull View view, @Nullable AccessibilityViewCommand.CommandArguments commandArguments) {
            boolean z = false;
            if (!SwipeDismissBehavior.this.canSwipeDismissView(view)) {
                return false;
            }
            boolean z2 = ViewCompat.getLayoutDirection(view) == 1;
            int i = SwipeDismissBehavior.this.f30358k;
            if ((i == 0 && z2) || (i == 1 && !z2)) {
                z = true;
            }
            int width = view.getWidth();
            if (z) {
                width = -width;
            }
            ViewCompat.offsetLeftAndRight(view, width);
            view.setAlpha(0.0f);
            OnDismissListener onDismissListener = SwipeDismissBehavior.this.f30353f;
            if (onDismissListener != null) {
                onDismissListener.onDismiss(view);
            }
            return true;
        }
    }

    /* renamed from: com.google.android.material.behavior.SwipeDismissBehavior$c */
    /* loaded from: classes6.dex */
    public class RunnableC5156c implements Runnable {

        /* renamed from: e */
        public final View f30368e;

        /* renamed from: f */
        public final boolean f30369f;

        public RunnableC5156c(View view, boolean z) {
            this.f30368e = view;
            this.f30369f = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            OnDismissListener onDismissListener;
            ViewDragHelper viewDragHelper = SwipeDismissBehavior.this.f30352e;
            if (viewDragHelper != null && viewDragHelper.continueSettling(true)) {
                ViewCompat.postOnAnimation(this.f30368e, this);
            } else {
                if (!this.f30369f || (onDismissListener = SwipeDismissBehavior.this.f30353f) == null) {
                    return;
                }
                onDismissListener.onDismiss(this.f30368e);
            }
        }
    }

    /* renamed from: b */
    public static float m23062b(float f, float f2, float f3) {
        return Math.min(Math.max(f, f2), f3);
    }

    /* renamed from: c */
    public static int m23063c(int i, int i2, int i3) {
        return Math.min(Math.max(i, i2), i3);
    }

    /* renamed from: e */
    public static float m23064e(float f, float f2, float f3) {
        return (f3 - f) / (f2 - f);
    }

    public boolean canSwipeDismissView(@NonNull View view) {
        return true;
    }

    /* renamed from: d */
    public final void m23065d(ViewGroup viewGroup) {
        if (this.f30352e == null) {
            this.f30352e = this.f30357j ? ViewDragHelper.create(viewGroup, this.f30356i, this.f30362o) : ViewDragHelper.create(viewGroup, this.f30362o);
        }
    }

    /* renamed from: f */
    public final void m23066f(View view) {
        ViewCompat.removeAccessibilityAction(view, 1048576);
        if (canSwipeDismissView(view)) {
            ViewCompat.replaceAccessibilityAction(view, AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_DISMISS, null, new C5155b());
        }
    }

    public int getDragState() {
        ViewDragHelper viewDragHelper = this.f30352e;
        if (viewDragHelper != null) {
            return viewDragHelper.getViewDragState();
        }
        return 0;
    }

    @Nullable
    @VisibleForTesting
    public OnDismissListener getListener() {
        return this.f30353f;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onInterceptTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull MotionEvent motionEvent) {
        boolean z = this.f30354g;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            z = coordinatorLayout.isPointInChildBounds(v, (int) motionEvent.getX(), (int) motionEvent.getY());
            this.f30354g = z;
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.f30354g = false;
        }
        if (!z) {
            return false;
        }
        m23065d(coordinatorLayout);
        return !this.f30355h && this.f30352e.shouldInterceptTouchEvent(motionEvent);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, int i) {
        boolean onLayoutChild = super.onLayoutChild(coordinatorLayout, v, i);
        if (ViewCompat.getImportantForAccessibility(v) == 0) {
            ViewCompat.setImportantForAccessibility(v, 1);
            m23066f(v);
        }
        return onLayoutChild;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onTouchEvent(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        if (this.f30352e == null) {
            return false;
        }
        if (this.f30355h && motionEvent.getActionMasked() == 3) {
            return true;
        }
        this.f30352e.processTouchEvent(motionEvent);
        return true;
    }

    public void setDragDismissDistance(float f) {
        this.f30359l = m23062b(0.0f, f, 1.0f);
    }

    public void setEndAlphaSwipeDistance(float f) {
        this.f30361n = m23062b(0.0f, f, 1.0f);
    }

    public void setListener(@Nullable OnDismissListener onDismissListener) {
        this.f30353f = onDismissListener;
    }

    public void setSensitivity(float f) {
        this.f30356i = f;
        this.f30357j = true;
    }

    public void setStartAlphaSwipeDistance(float f) {
        this.f30360m = m23062b(0.0f, f, 1.0f);
    }

    public void setSwipeDirection(int i) {
        this.f30358k = i;
    }
}
