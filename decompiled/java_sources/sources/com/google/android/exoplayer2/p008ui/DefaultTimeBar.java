package com.google.android.exoplayer2.p008ui;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.C4649C;
import com.google.android.exoplayer2.p008ui.DefaultTimeBar;
import com.google.android.exoplayer2.p008ui.TimeBar;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import java.util.Collections;
import java.util.Formatter;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArraySet;

/* loaded from: classes5.dex */
public class DefaultTimeBar extends View implements TimeBar {
    public static final int BAR_GRAVITY_BOTTOM = 1;
    public static final int BAR_GRAVITY_CENTER = 0;
    public static final int DEFAULT_AD_MARKER_COLOR = -1291845888;
    public static final int DEFAULT_AD_MARKER_WIDTH_DP = 4;
    public static final int DEFAULT_BAR_HEIGHT_DP = 4;
    public static final int DEFAULT_BUFFERED_COLOR = -855638017;
    public static final int DEFAULT_PLAYED_AD_MARKER_COLOR = 872414976;
    public static final int DEFAULT_PLAYED_COLOR = -1;
    public static final int DEFAULT_SCRUBBER_COLOR = -1;
    public static final int DEFAULT_SCRUBBER_DISABLED_SIZE_DP = 0;
    public static final int DEFAULT_SCRUBBER_DRAGGED_SIZE_DP = 16;
    public static final int DEFAULT_SCRUBBER_ENABLED_SIZE_DP = 12;
    public static final int DEFAULT_TOUCH_TARGET_HEIGHT_DP = 26;
    public static final int DEFAULT_UNPLAYED_COLOR = 872415231;

    /* renamed from: H0 */
    public static final int f27483H0 = -50;

    /* renamed from: I0 */
    public static final int f27484I0 = 3;

    /* renamed from: J0 */
    public static final long f27485J0 = 1000;

    /* renamed from: K0 */
    public static final int f27486K0 = 20;

    /* renamed from: L0 */
    public static final float f27487L0 = 1.0f;

    /* renamed from: M0 */
    public static final float f27488M0 = 0.0f;

    /* renamed from: N0 */
    public static final String f27489N0 = "android.widget.SeekBar";

    /* renamed from: A0 */
    public long f27490A0;

    /* renamed from: B0 */
    public long f27491B0;

    /* renamed from: C0 */
    public long f27492C0;

    /* renamed from: D0 */
    public long f27493D0;

    /* renamed from: E0 */
    public int f27494E0;

    /* renamed from: F0 */
    @Nullable
    public long[] f27495F0;

    /* renamed from: G0 */
    @Nullable
    public boolean[] f27496G0;

    /* renamed from: J */
    public final Runnable f27497J;

    /* renamed from: O */
    public final CopyOnWriteArraySet<TimeBar.OnScrubListener> f27498O;

    /* renamed from: Q */
    public final Point f27499Q;

    /* renamed from: e */
    public final Rect f27500e;

    /* renamed from: f */
    public final Rect f27501f;

    /* renamed from: g */
    public final Rect f27502g;

    /* renamed from: h */
    public final Rect f27503h;

    /* renamed from: i */
    public final Paint f27504i;

    /* renamed from: j */
    public final Paint f27505j;

    /* renamed from: k */
    public final Paint f27506k;

    /* renamed from: k0 */
    public final float f27507k0;

    /* renamed from: l */
    public final Paint f27508l;

    /* renamed from: m */
    public final Paint f27509m;

    /* renamed from: n */
    public final Paint f27510n;

    /* renamed from: o */
    @Nullable
    public final Drawable f27511o;

    /* renamed from: p */
    public final int f27512p;

    /* renamed from: q */
    public final int f27513q;

    /* renamed from: q0 */
    public int f27514q0;

    /* renamed from: r */
    public final int f27515r;

    /* renamed from: s */
    public final int f27516s;

    /* renamed from: t */
    public final int f27517t;

    /* renamed from: t0 */
    public long f27518t0;

    /* renamed from: u */
    public final int f27519u;

    /* renamed from: u0 */
    public int f27520u0;

    /* renamed from: v */
    public final int f27521v;

    /* renamed from: v0 */
    public Rect f27522v0;

    /* renamed from: w */
    public final int f27523w;

    /* renamed from: w0 */
    public ValueAnimator f27524w0;

    /* renamed from: x */
    public final int f27525x;

    /* renamed from: x0 */
    public float f27526x0;

    /* renamed from: y */
    public final StringBuilder f27527y;

    /* renamed from: y0 */
    public boolean f27528y0;

    /* renamed from: z */
    public final Formatter f27529z;

    /* renamed from: z0 */
    public boolean f27530z0;

    public DefaultTimeBar(Context context) {
        this(context, null);
    }

    /* renamed from: c */
    public static int m20924c(float f, int i) {
        return (int) ((i * f) + 0.5f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public /* synthetic */ void m20925g() {
        m20938q(false);
    }

    private long getPositionIncrement() {
        long j = this.f27518t0;
        if (j != C4649C.TIME_UNSET) {
            return j;
        }
        long j2 = this.f27491B0;
        if (j2 == C4649C.TIME_UNSET) {
            return 0L;
        }
        return j2 / this.f27514q0;
    }

    private String getProgressText() {
        return Util.getStringForTime(this.f27527y, this.f27529z, this.f27492C0);
    }

    private long getScrubberPosition() {
        if (this.f27501f.width() <= 0 || this.f27491B0 == C4649C.TIME_UNSET) {
            return 0L;
        }
        return (this.f27503h.width() * this.f27491B0) / this.f27501f.width();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public /* synthetic */ void m20926h(ValueAnimator valueAnimator) {
        this.f27526x0 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate(this.f27500e);
    }

    /* renamed from: j */
    public static int m20927j(float f, int i) {
        return (int) (i / f);
    }

    /* renamed from: n */
    public static boolean m20928n(Drawable drawable, int i) {
        return Util.SDK_INT >= 23 && drawable.setLayoutDirection(i);
    }

    @Override // com.google.android.exoplayer2.p008ui.TimeBar
    public void addListener(TimeBar.OnScrubListener onScrubListener) {
        Assertions.checkNotNull(onScrubListener);
        this.f27498O.add(onScrubListener);
    }

    /* renamed from: d */
    public final void m20929d(Canvas canvas) {
        if (this.f27491B0 <= 0) {
            return;
        }
        Rect rect = this.f27503h;
        int constrainValue = Util.constrainValue(rect.right, rect.left, this.f27501f.right);
        int centerY = this.f27503h.centerY();
        if (this.f27511o == null) {
            canvas.drawCircle(constrainValue, centerY, (int) ((((this.f27530z0 || isFocused()) ? this.f27521v : isEnabled() ? this.f27517t : this.f27519u) * this.f27526x0) / 2.0f), this.f27510n);
            return;
        }
        int intrinsicWidth = ((int) (r2.getIntrinsicWidth() * this.f27526x0)) / 2;
        int intrinsicHeight = ((int) (this.f27511o.getIntrinsicHeight() * this.f27526x0)) / 2;
        this.f27511o.setBounds(constrainValue - intrinsicWidth, centerY - intrinsicHeight, constrainValue + intrinsicWidth, centerY + intrinsicHeight);
        this.f27511o.draw(canvas);
    }

    @Override // android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        m20940s();
    }

    /* renamed from: e */
    public final void m20930e(Canvas canvas) {
        int height = this.f27501f.height();
        int centerY = this.f27501f.centerY() - (height / 2);
        int i = height + centerY;
        if (this.f27491B0 <= 0) {
            Rect rect = this.f27501f;
            canvas.drawRect(rect.left, centerY, rect.right, i, this.f27506k);
            return;
        }
        Rect rect2 = this.f27502g;
        int i2 = rect2.left;
        int i3 = rect2.right;
        int max = Math.max(Math.max(this.f27501f.left, i3), this.f27503h.right);
        int i4 = this.f27501f.right;
        if (max < i4) {
            canvas.drawRect(max, centerY, i4, i, this.f27506k);
        }
        int max2 = Math.max(i2, this.f27503h.right);
        if (i3 > max2) {
            canvas.drawRect(max2, centerY, i3, i, this.f27505j);
        }
        if (this.f27503h.width() > 0) {
            Rect rect3 = this.f27503h;
            canvas.drawRect(rect3.left, centerY, rect3.right, i, this.f27504i);
        }
        if (this.f27494E0 == 0) {
            return;
        }
        long[] jArr = (long[]) Assertions.checkNotNull(this.f27495F0);
        boolean[] zArr = (boolean[]) Assertions.checkNotNull(this.f27496G0);
        int i5 = this.f27516s / 2;
        for (int i6 = 0; i6 < this.f27494E0; i6++) {
            int width = ((int) ((this.f27501f.width() * Util.constrainValue(jArr[i6], 0L, this.f27491B0)) / this.f27491B0)) - i5;
            Rect rect4 = this.f27501f;
            canvas.drawRect(rect4.left + Math.min(rect4.width() - this.f27516s, Math.max(0, width)), centerY, r10 + this.f27516s, i, zArr[i6] ? this.f27509m : this.f27508l);
        }
    }

    /* renamed from: f */
    public final boolean m20931f(float f, float f2) {
        return this.f27500e.contains((int) f, (int) f2);
    }

    @Override // com.google.android.exoplayer2.p008ui.TimeBar
    public long getPreferredUpdateDelay() {
        int m20927j = m20927j(this.f27507k0, this.f27501f.width());
        if (m20927j != 0) {
            long j = this.f27491B0;
            if (j != 0 && j != C4649C.TIME_UNSET) {
                return j / m20927j;
            }
        }
        return Long.MAX_VALUE;
    }

    public void hideScrubber(boolean z) {
        if (this.f27524w0.isStarted()) {
            this.f27524w0.cancel();
        }
        this.f27528y0 = z;
        this.f27526x0 = 0.0f;
        invalidate(this.f27500e);
    }

    /* renamed from: i */
    public final void m20932i(float f) {
        Rect rect = this.f27503h;
        Rect rect2 = this.f27501f;
        rect.right = Util.constrainValue((int) f, rect2.left, rect2.right);
    }

    @Override // android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f27511o;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    /* renamed from: k */
    public final Point m20933k(MotionEvent motionEvent) {
        this.f27499Q.set((int) motionEvent.getX(), (int) motionEvent.getY());
        return this.f27499Q;
    }

    /* renamed from: l */
    public final boolean m20934l(long j) {
        long j2 = this.f27491B0;
        if (j2 <= 0) {
            return false;
        }
        long j3 = this.f27530z0 ? this.f27490A0 : this.f27492C0;
        long constrainValue = Util.constrainValue(j3 + j, 0L, j2);
        if (constrainValue == j3) {
            return false;
        }
        if (this.f27530z0) {
            m20941t(constrainValue);
        } else {
            m20937p(constrainValue);
        }
        m20939r();
        return true;
    }

    /* renamed from: m */
    public final boolean m20935m(Drawable drawable) {
        return Util.SDK_INT >= 23 && m20928n(drawable, getLayoutDirection());
    }

    @RequiresApi(29)
    /* renamed from: o */
    public final void m20936o(int i, int i2) {
        Rect rect = this.f27522v0;
        if (rect != null && rect.width() == i && this.f27522v0.height() == i2) {
            return;
        }
        Rect rect2 = new Rect(0, 0, i, i2);
        this.f27522v0 = rect2;
        setSystemGestureExclusionRects(Collections.singletonList(rect2));
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        canvas.save();
        m20930e(canvas);
        m20929d(canvas);
        canvas.restore();
    }

    @Override // android.view.View
    public void onFocusChanged(boolean z, int i, @Nullable Rect rect) {
        super.onFocusChanged(z, i, rect);
        if (!this.f27530z0 || z) {
            return;
        }
        m20938q(false);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (accessibilityEvent.getEventType() == 4) {
            accessibilityEvent.getText().add(getProgressText());
        }
        accessibilityEvent.setClassName(f27489N0);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(f27489N0);
        accessibilityNodeInfo.setContentDescription(getProgressText());
        if (this.f27491B0 <= 0) {
            return;
        }
        if (Util.SDK_INT >= 21) {
            accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_FORWARD);
            accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_BACKWARD);
        } else {
            accessibilityNodeInfo.addAction(4096);
            accessibilityNodeInfo.addAction(8192);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x000f. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:9:0x001a  */
    @Override // android.view.View, android.view.KeyEvent.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onKeyDown(int r5, android.view.KeyEvent r6) {
        /*
            r4 = this;
            boolean r0 = r4.isEnabled()
            if (r0 == 0) goto L30
            long r0 = r4.getPositionIncrement()
            r2 = 66
            r3 = 1
            if (r5 == r2) goto L27
            switch(r5) {
                case 21: goto L13;
                case 22: goto L14;
                case 23: goto L27;
                default: goto L12;
            }
        L12:
            goto L30
        L13:
            long r0 = -r0
        L14:
            boolean r0 = r4.m20934l(r0)
            if (r0 == 0) goto L30
            java.lang.Runnable r5 = r4.f27497J
            r4.removeCallbacks(r5)
            java.lang.Runnable r5 = r4.f27497J
            r0 = 1000(0x3e8, double:4.94E-321)
            r4.postDelayed(r5, r0)
            return r3
        L27:
            boolean r0 = r4.f27530z0
            if (r0 == 0) goto L30
            r5 = 0
            r4.m20938q(r5)
            return r3
        L30:
            boolean r4 = super.onKeyDown(r5, r6)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.p008ui.DefaultTimeBar.onKeyDown(int, android.view.KeyEvent):boolean");
    }

    @Override // android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7 = i3 - i;
        int i8 = i4 - i2;
        int paddingLeft = getPaddingLeft();
        int paddingRight = i7 - getPaddingRight();
        int i9 = this.f27528y0 ? 0 : this.f27523w;
        if (this.f27515r == 1) {
            i5 = (i8 - getPaddingBottom()) - this.f27513q;
            int paddingBottom = i8 - getPaddingBottom();
            int i10 = this.f27512p;
            i6 = (paddingBottom - i10) - Math.max(i9 - (i10 / 2), 0);
        } else {
            i5 = (i8 - this.f27513q) / 2;
            i6 = (i8 - this.f27512p) / 2;
        }
        this.f27500e.set(paddingLeft, i5, paddingRight, this.f27513q + i5);
        Rect rect = this.f27501f;
        Rect rect2 = this.f27500e;
        rect.set(rect2.left + i9, i6, rect2.right - i9, this.f27512p + i6);
        if (Util.SDK_INT >= 29) {
            m20936o(i7, i8);
        }
        m20939r();
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (mode == 0) {
            size = this.f27513q;
        } else if (mode != 1073741824) {
            size = Math.min(this.f27513q, size);
        }
        setMeasuredDimension(View.MeasureSpec.getSize(i), size);
        m20940s();
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i) {
        Drawable drawable = this.f27511o;
        if (drawable == null || !m20928n(drawable, i)) {
            return;
        }
        invalidate();
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0025, code lost:
    
        if (r3 != 3) goto L34;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r8) {
        /*
            r7 = this;
            boolean r0 = r7.isEnabled()
            r1 = 0
            if (r0 == 0) goto L76
            long r2 = r7.f27491B0
            r4 = 0
            int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r0 > 0) goto L10
            goto L76
        L10:
            android.graphics.Point r0 = r7.m20933k(r8)
            int r2 = r0.x
            int r0 = r0.y
            int r3 = r8.getAction()
            r4 = 1
            if (r3 == 0) goto L5d
            r5 = 3
            if (r3 == r4) goto L4e
            r6 = 2
            if (r3 == r6) goto L28
            if (r3 == r5) goto L4e
            goto L76
        L28:
            boolean r8 = r7.f27530z0
            if (r8 == 0) goto L76
            int r8 = r7.f27525x
            if (r0 >= r8) goto L3a
            int r8 = r7.f27520u0
            int r2 = r2 - r8
            int r2 = r2 / r5
            int r8 = r8 + r2
            float r8 = (float) r8
            r7.m20932i(r8)
            goto L40
        L3a:
            r7.f27520u0 = r2
            float r8 = (float) r2
            r7.m20932i(r8)
        L40:
            long r0 = r7.getScrubberPosition()
            r7.m20941t(r0)
            r7.m20939r()
            r7.invalidate()
            return r4
        L4e:
            boolean r0 = r7.f27530z0
            if (r0 == 0) goto L76
            int r8 = r8.getAction()
            if (r8 != r5) goto L59
            r1 = r4
        L59:
            r7.m20938q(r1)
            return r4
        L5d:
            float r8 = (float) r2
            float r0 = (float) r0
            boolean r0 = r7.m20931f(r8, r0)
            if (r0 == 0) goto L76
            r7.m20932i(r8)
            long r0 = r7.getScrubberPosition()
            r7.m20937p(r0)
            r7.m20939r()
            r7.invalidate()
            return r4
        L76:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.p008ui.DefaultTimeBar.onTouchEvent(android.view.MotionEvent):boolean");
    }

    /* renamed from: p */
    public final void m20937p(long j) {
        this.f27490A0 = j;
        this.f27530z0 = true;
        setPressed(true);
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
        Iterator<TimeBar.OnScrubListener> it2 = this.f27498O.iterator();
        while (it2.hasNext()) {
            it2.next().onScrubStart(this, j);
        }
    }

    @Override // android.view.View
    public boolean performAccessibilityAction(int i, @Nullable Bundle bundle) {
        if (super.performAccessibilityAction(i, bundle)) {
            return true;
        }
        if (this.f27491B0 <= 0) {
            return false;
        }
        if (i == 8192) {
            if (m20934l(-getPositionIncrement())) {
                m20938q(false);
            }
        } else {
            if (i != 4096) {
                return false;
            }
            if (m20934l(getPositionIncrement())) {
                m20938q(false);
            }
        }
        sendAccessibilityEvent(4);
        return true;
    }

    /* renamed from: q */
    public final void m20938q(boolean z) {
        removeCallbacks(this.f27497J);
        this.f27530z0 = false;
        setPressed(false);
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(false);
        }
        invalidate();
        Iterator<TimeBar.OnScrubListener> it2 = this.f27498O.iterator();
        while (it2.hasNext()) {
            it2.next().onScrubStop(this, this.f27490A0, z);
        }
    }

    /* renamed from: r */
    public final void m20939r() {
        this.f27502g.set(this.f27501f);
        this.f27503h.set(this.f27501f);
        long j = this.f27530z0 ? this.f27490A0 : this.f27492C0;
        if (this.f27491B0 > 0) {
            int width = (int) ((this.f27501f.width() * this.f27493D0) / this.f27491B0);
            Rect rect = this.f27502g;
            Rect rect2 = this.f27501f;
            rect.right = Math.min(rect2.left + width, rect2.right);
            int width2 = (int) ((this.f27501f.width() * j) / this.f27491B0);
            Rect rect3 = this.f27503h;
            Rect rect4 = this.f27501f;
            rect3.right = Math.min(rect4.left + width2, rect4.right);
        } else {
            Rect rect5 = this.f27502g;
            int i = this.f27501f.left;
            rect5.right = i;
            this.f27503h.right = i;
        }
        invalidate(this.f27500e);
    }

    @Override // com.google.android.exoplayer2.p008ui.TimeBar
    public void removeListener(TimeBar.OnScrubListener onScrubListener) {
        this.f27498O.remove(onScrubListener);
    }

    /* renamed from: s */
    public final void m20940s() {
        Drawable drawable = this.f27511o;
        if (drawable != null && drawable.isStateful() && this.f27511o.setState(getDrawableState())) {
            invalidate();
        }
    }

    @Override // com.google.android.exoplayer2.p008ui.TimeBar
    public void setAdGroupTimesMs(@Nullable long[] jArr, @Nullable boolean[] zArr, int i) {
        Assertions.checkArgument(i == 0 || !(jArr == null || zArr == null));
        this.f27494E0 = i;
        this.f27495F0 = jArr;
        this.f27496G0 = zArr;
        m20939r();
    }

    public void setAdMarkerColor(@ColorInt int i) {
        this.f27508l.setColor(i);
        invalidate(this.f27500e);
    }

    public void setBufferedColor(@ColorInt int i) {
        this.f27505j.setColor(i);
        invalidate(this.f27500e);
    }

    @Override // com.google.android.exoplayer2.p008ui.TimeBar
    public void setBufferedPosition(long j) {
        if (this.f27493D0 == j) {
            return;
        }
        this.f27493D0 = j;
        m20939r();
    }

    @Override // com.google.android.exoplayer2.p008ui.TimeBar
    public void setDuration(long j) {
        if (this.f27491B0 == j) {
            return;
        }
        this.f27491B0 = j;
        if (this.f27530z0 && j == C4649C.TIME_UNSET) {
            m20938q(true);
        }
        m20939r();
    }

    @Override // android.view.View, com.google.android.exoplayer2.p008ui.TimeBar
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        if (!this.f27530z0 || z) {
            return;
        }
        m20938q(true);
    }

    @Override // com.google.android.exoplayer2.p008ui.TimeBar
    public void setKeyCountIncrement(int i) {
        Assertions.checkArgument(i > 0);
        this.f27514q0 = i;
        this.f27518t0 = C4649C.TIME_UNSET;
    }

    @Override // com.google.android.exoplayer2.p008ui.TimeBar
    public void setKeyTimeIncrement(long j) {
        Assertions.checkArgument(j > 0);
        this.f27514q0 = -1;
        this.f27518t0 = j;
    }

    public void setPlayedAdMarkerColor(@ColorInt int i) {
        this.f27509m.setColor(i);
        invalidate(this.f27500e);
    }

    public void setPlayedColor(@ColorInt int i) {
        this.f27504i.setColor(i);
        invalidate(this.f27500e);
    }

    @Override // com.google.android.exoplayer2.p008ui.TimeBar
    public void setPosition(long j) {
        if (this.f27492C0 == j) {
            return;
        }
        this.f27492C0 = j;
        setContentDescription(getProgressText());
        m20939r();
    }

    public void setScrubberColor(@ColorInt int i) {
        this.f27510n.setColor(i);
        invalidate(this.f27500e);
    }

    public void setUnplayedColor(@ColorInt int i) {
        this.f27506k.setColor(i);
        invalidate(this.f27500e);
    }

    public void showScrubber() {
        if (this.f27524w0.isStarted()) {
            this.f27524w0.cancel();
        }
        this.f27528y0 = false;
        this.f27526x0 = 1.0f;
        invalidate(this.f27500e);
    }

    /* renamed from: t */
    public final void m20941t(long j) {
        if (this.f27490A0 == j) {
            return;
        }
        this.f27490A0 = j;
        Iterator<TimeBar.OnScrubListener> it2 = this.f27498O.iterator();
        while (it2.hasNext()) {
            it2.next().onScrubMove(this, j);
        }
    }

    public DefaultTimeBar(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DefaultTimeBar(Context context, @Nullable AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, attributeSet);
    }

    public DefaultTimeBar(Context context, @Nullable AttributeSet attributeSet, int i, @Nullable AttributeSet attributeSet2) {
        this(context, attributeSet, i, attributeSet2, 0);
    }

    public DefaultTimeBar(Context context, @Nullable AttributeSet attributeSet, int i, @Nullable AttributeSet attributeSet2, int i2) {
        super(context, attributeSet, i);
        this.f27500e = new Rect();
        this.f27501f = new Rect();
        this.f27502g = new Rect();
        this.f27503h = new Rect();
        Paint paint = new Paint();
        this.f27504i = paint;
        Paint paint2 = new Paint();
        this.f27505j = paint2;
        Paint paint3 = new Paint();
        this.f27506k = paint3;
        Paint paint4 = new Paint();
        this.f27508l = paint4;
        Paint paint5 = new Paint();
        this.f27509m = paint5;
        Paint paint6 = new Paint();
        this.f27510n = paint6;
        paint6.setAntiAlias(true);
        this.f27498O = new CopyOnWriteArraySet<>();
        this.f27499Q = new Point();
        float f = context.getResources().getDisplayMetrics().density;
        this.f27507k0 = f;
        this.f27525x = m20924c(f, -50);
        int m20924c = m20924c(f, 4);
        int m20924c2 = m20924c(f, 26);
        int m20924c3 = m20924c(f, 4);
        int m20924c4 = m20924c(f, 12);
        int m20924c5 = m20924c(f, 0);
        int m20924c6 = m20924c(f, 16);
        if (attributeSet2 != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet2, C4970R.styleable.DefaultTimeBar, i, i2);
            try {
                Drawable drawable = obtainStyledAttributes.getDrawable(C4970R.styleable.DefaultTimeBar_scrubber_drawable);
                this.f27511o = drawable;
                if (drawable != null) {
                    m20935m(drawable);
                    m20924c2 = Math.max(drawable.getMinimumHeight(), m20924c2);
                }
                this.f27512p = obtainStyledAttributes.getDimensionPixelSize(C4970R.styleable.DefaultTimeBar_bar_height, m20924c);
                this.f27513q = obtainStyledAttributes.getDimensionPixelSize(C4970R.styleable.DefaultTimeBar_touch_target_height, m20924c2);
                this.f27515r = obtainStyledAttributes.getInt(C4970R.styleable.DefaultTimeBar_bar_gravity, 0);
                this.f27516s = obtainStyledAttributes.getDimensionPixelSize(C4970R.styleable.DefaultTimeBar_ad_marker_width, m20924c3);
                this.f27517t = obtainStyledAttributes.getDimensionPixelSize(C4970R.styleable.DefaultTimeBar_scrubber_enabled_size, m20924c4);
                this.f27519u = obtainStyledAttributes.getDimensionPixelSize(C4970R.styleable.DefaultTimeBar_scrubber_disabled_size, m20924c5);
                this.f27521v = obtainStyledAttributes.getDimensionPixelSize(C4970R.styleable.DefaultTimeBar_scrubber_dragged_size, m20924c6);
                int i3 = obtainStyledAttributes.getInt(C4970R.styleable.DefaultTimeBar_played_color, -1);
                int i4 = obtainStyledAttributes.getInt(C4970R.styleable.DefaultTimeBar_scrubber_color, -1);
                int i5 = obtainStyledAttributes.getInt(C4970R.styleable.DefaultTimeBar_buffered_color, DEFAULT_BUFFERED_COLOR);
                int i6 = obtainStyledAttributes.getInt(C4970R.styleable.DefaultTimeBar_unplayed_color, DEFAULT_UNPLAYED_COLOR);
                int i7 = obtainStyledAttributes.getInt(C4970R.styleable.DefaultTimeBar_ad_marker_color, DEFAULT_AD_MARKER_COLOR);
                int i8 = obtainStyledAttributes.getInt(C4970R.styleable.DefaultTimeBar_played_ad_marker_color, DEFAULT_PLAYED_AD_MARKER_COLOR);
                paint.setColor(i3);
                paint6.setColor(i4);
                paint2.setColor(i5);
                paint3.setColor(i6);
                paint4.setColor(i7);
                paint5.setColor(i8);
            } finally {
                obtainStyledAttributes.recycle();
            }
        } else {
            this.f27512p = m20924c;
            this.f27513q = m20924c2;
            this.f27515r = 0;
            this.f27516s = m20924c3;
            this.f27517t = m20924c4;
            this.f27519u = m20924c5;
            this.f27521v = m20924c6;
            paint.setColor(-1);
            paint6.setColor(-1);
            paint2.setColor(DEFAULT_BUFFERED_COLOR);
            paint3.setColor(DEFAULT_UNPLAYED_COLOR);
            paint4.setColor(DEFAULT_AD_MARKER_COLOR);
            paint5.setColor(DEFAULT_PLAYED_AD_MARKER_COLOR);
            this.f27511o = null;
        }
        StringBuilder sb = new StringBuilder();
        this.f27527y = sb;
        this.f27529z = new Formatter(sb, Locale.getDefault());
        this.f27497J = new Runnable() { // from class: com.sunia.HTREnginev2.r0f
            @Override // java.lang.Runnable
            public final void run() {
                DefaultTimeBar.this.m20925g();
            }
        };
        Drawable drawable2 = this.f27511o;
        if (drawable2 != null) {
            this.f27523w = (drawable2.getMinimumWidth() + 1) / 2;
        } else {
            this.f27523w = (Math.max(this.f27519u, Math.max(this.f27517t, this.f27521v)) + 1) / 2;
        }
        this.f27526x0 = 1.0f;
        ValueAnimator valueAnimator = new ValueAnimator();
        this.f27524w0 = valueAnimator;
        valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sunia.HTREnginev2.s0f
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                DefaultTimeBar.this.m20926h(valueAnimator2);
            }
        });
        this.f27491B0 = C4649C.TIME_UNSET;
        this.f27518t0 = C4649C.TIME_UNSET;
        this.f27514q0 = 20;
        setFocusable(true);
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
    }

    public void hideScrubber(long j) {
        if (this.f27524w0.isStarted()) {
            this.f27524w0.cancel();
        }
        this.f27524w0.setFloatValues(this.f27526x0, 0.0f);
        this.f27524w0.setDuration(j);
        this.f27524w0.start();
    }

    public void showScrubber(long j) {
        if (this.f27524w0.isStarted()) {
            this.f27524w0.cancel();
        }
        this.f27528y0 = false;
        this.f27524w0.setFloatValues(this.f27526x0, 1.0f);
        this.f27524w0.setDuration(j);
        this.f27524w0.start();
    }
}
