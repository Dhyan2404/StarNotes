package com.hjq.window.draggable;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import com.hjq.window.EasyWindow;
import com.hjq.window.draggable.SpringBackDraggable;

/* loaded from: classes4.dex */
public class SpringBackDraggable extends BaseDraggable {
    public static final int ORIENTATION_HORIZONTAL = 0;
    public static final int ORIENTATION_VERTICAL = 1;

    /* renamed from: p */
    public float f38965p;

    /* renamed from: q */
    public float f38966q;

    /* renamed from: r */
    public final int f38967r;

    /* renamed from: s */
    public boolean f38968s;

    /* renamed from: t */
    public SpringBackAnimCallback f38969t;

    /* loaded from: classes4.dex */
    public interface SpringBackAnimCallback {
        void onSpringBackAnimationEnd(EasyWindow<?> easyWindow, Animator animator);

        void onSpringBackAnimationStart(EasyWindow<?> easyWindow, Animator animator);
    }

    /* renamed from: com.hjq.window.draggable.SpringBackDraggable$a */
    /* loaded from: classes4.dex */
    public class C6944a extends AnimatorListenerAdapter {
        public C6944a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            SpringBackDraggable.this.dispatchSpringBackAnimationEndCallback(animator);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            SpringBackDraggable.this.dispatchSpringBackAnimationStartCallback(animator);
        }
    }

    public SpringBackDraggable() {
        this(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i */
    public /* synthetic */ void m30904i(float f, ValueAnimator valueAnimator) {
        updateLocation(((Float) valueAnimator.getAnimatedValue()).floatValue(), f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public /* synthetic */ void m30905j(float f, ValueAnimator valueAnimator) {
        updateLocation(f, ((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    public long calculateAnimationDuration(float f, float f2) {
        return Math.min(Math.max(Math.abs(f2 - f) / 2.0f, 200L), 800L);
    }

    public void dispatchSpringBackAnimationEndCallback(Animator animator) {
        SpringBackAnimCallback springBackAnimCallback = this.f38969t;
        if (springBackAnimCallback == null) {
            return;
        }
        springBackAnimCallback.onSpringBackAnimationEnd(getEasyWindow(), animator);
    }

    public void dispatchSpringBackAnimationStartCallback(Animator animator) {
        SpringBackAnimCallback springBackAnimCallback = this.f38969t;
        if (springBackAnimCallback == null) {
            return;
        }
        springBackAnimCallback.onSpringBackAnimationStart(getEasyWindow(), animator);
    }

    public void dispatchSpringBackViewToScreenEdge() {
        dispatchSpringBackViewToScreenEdge(getViewOnScreenX(), getViewOnScreenY());
    }

    public boolean equalsWithRelativeTolerance(float f, float f2) {
        return Math.abs(f - f2) < 1.0E-5f;
    }

    public boolean isTouchMoving() {
        return this.f38968s;
    }

    @Override // com.hjq.window.draggable.BaseDraggable
    public void onScreenRotateInfluenceCoordinateChangeFinish() {
        super.onScreenRotateInfluenceCoordinateChangeFinish();
        dispatchSpringBackViewToScreenEdge();
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x000e, code lost:
    
        if (r6 != 3) goto L27;
     */
    @Override // android.view.View.OnTouchListener
    @android.annotation.SuppressLint({"ClickableViewAccessibility"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouch(android.view.View r6, android.view.MotionEvent r7) {
        /*
            r5 = this;
            int r6 = r7.getAction()
            r0 = 0
            if (r6 == 0) goto L72
            r1 = 1
            if (r6 == r1) goto L57
            r2 = 2
            if (r6 == r2) goto L11
            r1 = 3
            if (r6 == r1) goto L57
            goto L80
        L11:
            float r6 = r7.getRawX()
            int r2 = r5.getWindowInvisibleWidth()
            float r2 = (float) r2
            float r6 = r6 - r2
            float r2 = r7.getRawY()
            int r3 = r5.getWindowInvisibleHeight()
            float r3 = (float) r3
            float r2 = r2 - r3
            float r3 = r5.f38965p
            float r6 = r6 - r3
            r3 = 0
            float r6 = java.lang.Math.max(r6, r3)
            float r4 = r5.f38966q
            float r2 = r2 - r4
            float r2 = java.lang.Math.max(r2, r3)
            r5.updateLocation(r6, r2)
            boolean r6 = r5.f38968s
            if (r6 == 0) goto L3f
            r5.dispatchExecuteDraggingCallback()
            goto L80
        L3f:
            float r6 = r5.f38965p
            float r2 = r7.getX()
            float r3 = r5.f38966q
            float r7 = r7.getY()
            boolean r6 = r5.isFingerMove(r6, r2, r3, r7)
            if (r6 == 0) goto L80
            r5.f38968s = r1
            r5.dispatchStartDraggingCallback()
            goto L80
        L57:
            boolean r6 = r5.f38968s
            if (r6 == 0) goto L69
            float r6 = r7.getRawX()
            float r7 = r7.getRawY()
            r5.dispatchSpringBackViewToScreenEdge(r6, r7)
            r5.dispatchStopDraggingCallback()
        L69:
            boolean r6 = r5.f38968s     // Catch: java.lang.Throwable -> L6e
            r5.f38968s = r0
            return r6
        L6e:
            r6 = move-exception
            r5.f38968s = r0
            throw r6
        L72:
            float r6 = r7.getX()
            r5.f38965p = r6
            float r6 = r7.getY()
            r5.f38966q = r6
            r5.f38968s = r0
        L80:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hjq.window.draggable.SpringBackDraggable.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    public void setSpringBackAnimCallback(SpringBackAnimCallback springBackAnimCallback) {
        this.f38969t = springBackAnimCallback;
    }

    public void startAnimation(float f, float f2, long j, ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(f, f2);
        ofFloat.setDuration(j);
        if (animatorUpdateListener != null) {
            ofFloat.addUpdateListener(animatorUpdateListener);
        }
        ofFloat.addListener(new C6944a());
        ofFloat.start();
    }

    public void startHorizontalAnimation(float f, float f2, float f3) {
        startHorizontalAnimation(f, f2, f3, calculateAnimationDuration(f, f2));
    }

    public void startVerticalAnimation(float f, float f2, float f3) {
        startVerticalAnimation(f, f2, f3, calculateAnimationDuration(f2, f3));
    }

    public SpringBackDraggable(int i) {
        this.f38967r = i;
        if (i != 0 && i != 1) {
            throw new IllegalArgumentException("You cannot pass in directions other than horizontal or vertical");
        }
    }

    public void dispatchSpringBackViewToScreenEdge(float f, float f2) {
        float max;
        float windowInvisibleWidth = f - getWindowInvisibleWidth();
        float windowInvisibleHeight = f2 - getWindowInvisibleHeight();
        int i = this.f38967r;
        if (i == 0) {
            float max2 = Math.max(windowInvisibleWidth - this.f38965p, 0.0f);
            float windowWidth = getWindowWidth();
            max = windowInvisibleWidth >= windowWidth / 2.0f ? Math.max(windowWidth - getViewWidth(), 0.0f) : 0.0f;
            float f3 = windowInvisibleHeight - this.f38966q;
            if (equalsWithRelativeTolerance(max2, max)) {
                return;
            }
            startHorizontalAnimation(max2, max, f3);
            return;
        }
        if (i != 1) {
            return;
        }
        float f4 = windowInvisibleWidth - this.f38965p;
        float max3 = Math.max(windowInvisibleHeight - this.f38966q, 0.0f);
        float windowHeight = getWindowHeight();
        max = windowInvisibleHeight >= windowHeight / 2.0f ? Math.max(windowHeight - getViewHeight(), 0.0f) : 0.0f;
        if (equalsWithRelativeTolerance(max3, max)) {
            return;
        }
        startVerticalAnimation(f4, max3, max);
    }

    public void startHorizontalAnimation(float f, float f2, final float f3, long j) {
        startAnimation(f, f2, j, new ValueAnimator.AnimatorUpdateListener() { // from class: com.sunia.HTREnginev2.wwm
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                SpringBackDraggable.this.m30904i(f3, valueAnimator);
            }
        });
    }

    public void startVerticalAnimation(final float f, float f2, float f3, long j) {
        startAnimation(f2, f3, j, new ValueAnimator.AnimatorUpdateListener() { // from class: com.sunia.HTREnginev2.vwm
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                SpringBackDraggable.this.m30905j(f, valueAnimator);
            }
        });
    }
}
