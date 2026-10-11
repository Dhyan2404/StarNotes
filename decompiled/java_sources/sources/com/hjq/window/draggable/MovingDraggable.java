package com.hjq.window.draggable;

/* loaded from: classes4.dex */
public class MovingDraggable extends BaseDraggable {

    /* renamed from: p */
    public float f38962p;

    /* renamed from: q */
    public float f38963q;

    /* renamed from: r */
    public boolean f38964r;

    public boolean isTouchMoving() {
        return this.f38964r;
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
            if (r6 == 0) goto L67
            r1 = 1
            if (r6 == r1) goto L57
            r2 = 2
            if (r6 == r2) goto L11
            r7 = 3
            if (r6 == r7) goto L57
            goto L75
        L11:
            float r6 = r7.getRawX()
            int r2 = r5.getWindowInvisibleWidth()
            float r2 = (float) r2
            float r6 = r6 - r2
            float r2 = r7.getRawY()
            int r3 = r5.getWindowInvisibleHeight()
            float r3 = (float) r3
            float r2 = r2 - r3
            float r3 = r5.f38962p
            float r6 = r6 - r3
            r3 = 0
            float r6 = java.lang.Math.max(r6, r3)
            float r4 = r5.f38963q
            float r2 = r2 - r4
            float r2 = java.lang.Math.max(r2, r3)
            r5.updateLocation(r6, r2)
            boolean r6 = r5.f38964r
            if (r6 == 0) goto L3f
            r5.dispatchExecuteDraggingCallback()
            goto L75
        L3f:
            float r6 = r5.f38962p
            float r2 = r7.getX()
            float r3 = r5.f38963q
            float r7 = r7.getY()
            boolean r6 = r5.isFingerMove(r6, r2, r3, r7)
            if (r6 == 0) goto L75
            r5.f38964r = r1
            r5.dispatchStartDraggingCallback()
            goto L75
        L57:
            boolean r6 = r5.f38964r
            if (r6 == 0) goto L5e
            r5.dispatchStopDraggingCallback()
        L5e:
            boolean r6 = r5.f38964r     // Catch: java.lang.Throwable -> L63
            r5.f38964r = r0
            return r6
        L63:
            r6 = move-exception
            r5.f38964r = r0
            throw r6
        L67:
            float r6 = r7.getX()
            r5.f38962p = r6
            float r6 = r7.getY()
            r5.f38963q = r6
            r5.f38964r = r0
        L75:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hjq.window.draggable.MovingDraggable.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }
}
