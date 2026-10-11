package androidx.swiperefreshlayout.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Transformation;
import android.widget.ListView;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.VisibleForTesting;
import androidx.core.content.ContextCompat;
import androidx.core.view.NestedScrollingChild;
import androidx.core.view.NestedScrollingChildHelper;
import androidx.core.view.NestedScrollingParent;
import androidx.core.view.NestedScrollingParentHelper;
import androidx.core.view.ViewCompat;
import androidx.core.widget.ListViewCompat;
import com.sunia.HTREnginev2.otd;

/* loaded from: classes3.dex */
public class SwipeRefreshLayout extends ViewGroup implements NestedScrollingParent, NestedScrollingChild {
    public static final int DEFAULT = 1;
    public static final int DEFAULT_SLINGSHOT_DISTANCE = -1;

    /* renamed from: E0 */
    @VisibleForTesting
    public static final int f10400E0 = 40;

    /* renamed from: F0 */
    @VisibleForTesting
    public static final int f10401F0 = 56;

    /* renamed from: G0 */
    public static final String f10402G0 = "SwipeRefreshLayout";

    /* renamed from: H0 */
    public static final int f10403H0 = 255;

    /* renamed from: I0 */
    public static final int f10404I0 = 76;

    /* renamed from: J0 */
    public static final float f10405J0 = 2.0f;

    /* renamed from: K0 */
    public static final int f10406K0 = -1;

    /* renamed from: L0 */
    public static final float f10407L0 = 0.5f;
    public static final int LARGE = 0;

    /* renamed from: M0 */
    public static final float f10408M0 = 0.8f;

    /* renamed from: N0 */
    public static final int f10409N0 = 150;

    /* renamed from: O0 */
    public static final int f10410O0 = 300;

    /* renamed from: P0 */
    public static final int f10411P0 = 200;

    /* renamed from: Q0 */
    public static final int f10412Q0 = 200;

    /* renamed from: R0 */
    public static final int f10413R0 = -328966;

    /* renamed from: S0 */
    public static final int f10414S0 = 64;

    /* renamed from: T0 */
    public static final int[] f10415T0 = {R.attr.enabled};

    /* renamed from: A0 */
    public OnChildScrollUpCallback f10416A0;

    /* renamed from: B0 */
    public Animation.AnimationListener f10417B0;

    /* renamed from: C0 */
    public final Animation f10418C0;

    /* renamed from: D0 */
    public final Animation f10419D0;

    /* renamed from: J */
    public float f10420J;

    /* renamed from: O */
    public int f10421O;

    /* renamed from: Q */
    public int f10422Q;

    /* renamed from: e */
    public View f10423e;

    /* renamed from: f */
    public OnRefreshListener f10424f;

    /* renamed from: g */
    public boolean f10425g;

    /* renamed from: h */
    public int f10426h;

    /* renamed from: i */
    public float f10427i;

    /* renamed from: j */
    public float f10428j;

    /* renamed from: k */
    public final NestedScrollingParentHelper f10429k;

    /* renamed from: k0 */
    public CircularProgressDrawable f10430k0;

    /* renamed from: l */
    public final NestedScrollingChildHelper f10431l;

    /* renamed from: m */
    public final int[] f10432m;
    protected int mFrom;
    protected int mOriginalOffsetTop;

    /* renamed from: n */
    public final int[] f10433n;

    /* renamed from: o */
    public boolean f10434o;

    /* renamed from: p */
    public int f10435p;

    /* renamed from: q */
    public int f10436q;

    /* renamed from: q0 */
    public Animation f10437q0;

    /* renamed from: r */
    public float f10438r;

    /* renamed from: s */
    public float f10439s;

    /* renamed from: t */
    public boolean f10440t;

    /* renamed from: t0 */
    public Animation f10441t0;

    /* renamed from: u */
    public int f10442u;

    /* renamed from: u0 */
    public Animation f10443u0;

    /* renamed from: v */
    public boolean f10444v;

    /* renamed from: v0 */
    public Animation f10445v0;

    /* renamed from: w */
    public boolean f10446w;

    /* renamed from: w0 */
    public Animation f10447w0;

    /* renamed from: x */
    public final DecelerateInterpolator f10448x;

    /* renamed from: x0 */
    public boolean f10449x0;

    /* renamed from: y */
    public otd f10450y;

    /* renamed from: y0 */
    public int f10451y0;

    /* renamed from: z */
    public int f10452z;

    /* renamed from: z0 */
    public boolean f10453z0;

    /* loaded from: classes3.dex */
    public interface OnChildScrollUpCallback {
        boolean canChildScrollUp(@NonNull SwipeRefreshLayout swipeRefreshLayout, @Nullable View view);
    }

    /* loaded from: classes3.dex */
    public interface OnRefreshListener {
        void onRefresh();
    }

    /* renamed from: androidx.swiperefreshlayout.widget.SwipeRefreshLayout$a */
    /* loaded from: classes3.dex */
    public class AnimationAnimationListenerC1451a implements Animation.AnimationListener {
        public AnimationAnimationListenerC1451a() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            OnRefreshListener onRefreshListener;
            SwipeRefreshLayout swipeRefreshLayout = SwipeRefreshLayout.this;
            if (!swipeRefreshLayout.f10425g) {
                swipeRefreshLayout.m6494j();
                return;
            }
            swipeRefreshLayout.f10430k0.setAlpha(255);
            SwipeRefreshLayout.this.f10430k0.start();
            SwipeRefreshLayout swipeRefreshLayout2 = SwipeRefreshLayout.this;
            if (swipeRefreshLayout2.f10449x0 && (onRefreshListener = swipeRefreshLayout2.f10424f) != null) {
                onRefreshListener.onRefresh();
            }
            SwipeRefreshLayout swipeRefreshLayout3 = SwipeRefreshLayout.this;
            swipeRefreshLayout3.f10436q = swipeRefreshLayout3.f10450y.getTop();
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* renamed from: androidx.swiperefreshlayout.widget.SwipeRefreshLayout$b */
    /* loaded from: classes3.dex */
    public class C1452b extends Animation {
        public C1452b() {
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f, Transformation transformation) {
            SwipeRefreshLayout.this.setAnimationProgress(f);
        }
    }

    /* renamed from: androidx.swiperefreshlayout.widget.SwipeRefreshLayout$c */
    /* loaded from: classes3.dex */
    public class C1453c extends Animation {
        public C1453c() {
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f, Transformation transformation) {
            SwipeRefreshLayout.this.setAnimationProgress(1.0f - f);
        }
    }

    /* renamed from: androidx.swiperefreshlayout.widget.SwipeRefreshLayout$d */
    /* loaded from: classes3.dex */
    public class C1454d extends Animation {

        /* renamed from: e */
        public final /* synthetic */ int f10457e;

        /* renamed from: f */
        public final /* synthetic */ int f10458f;

        public C1454d(int i, int i2) {
            this.f10457e = i;
            this.f10458f = i2;
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f, Transformation transformation) {
            SwipeRefreshLayout.this.f10430k0.setAlpha((int) (this.f10457e + ((this.f10458f - r0) * f)));
        }
    }

    /* renamed from: androidx.swiperefreshlayout.widget.SwipeRefreshLayout$e */
    /* loaded from: classes3.dex */
    public class AnimationAnimationListenerC1455e implements Animation.AnimationListener {
        public AnimationAnimationListenerC1455e() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            SwipeRefreshLayout swipeRefreshLayout = SwipeRefreshLayout.this;
            if (swipeRefreshLayout.f10444v) {
                return;
            }
            swipeRefreshLayout.m6500p(null);
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    /* renamed from: androidx.swiperefreshlayout.widget.SwipeRefreshLayout$f */
    /* loaded from: classes3.dex */
    public class C1456f extends Animation {
        public C1456f() {
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f, Transformation transformation) {
            SwipeRefreshLayout swipeRefreshLayout = SwipeRefreshLayout.this;
            int abs = !swipeRefreshLayout.f10453z0 ? swipeRefreshLayout.f10421O - Math.abs(swipeRefreshLayout.mOriginalOffsetTop) : swipeRefreshLayout.f10421O;
            SwipeRefreshLayout swipeRefreshLayout2 = SwipeRefreshLayout.this;
            SwipeRefreshLayout.this.setTargetOffsetTopAndBottom((swipeRefreshLayout2.mFrom + ((int) ((abs - r1) * f))) - swipeRefreshLayout2.f10450y.getTop());
            SwipeRefreshLayout.this.f10430k0.setArrowScale(1.0f - f);
        }
    }

    /* renamed from: androidx.swiperefreshlayout.widget.SwipeRefreshLayout$g */
    /* loaded from: classes3.dex */
    public class C1457g extends Animation {
        public C1457g() {
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f, Transformation transformation) {
            SwipeRefreshLayout.this.m6492h(f);
        }
    }

    /* renamed from: androidx.swiperefreshlayout.widget.SwipeRefreshLayout$h */
    /* loaded from: classes3.dex */
    public class C1458h extends Animation {
        public C1458h() {
        }

        @Override // android.view.animation.Animation
        public void applyTransformation(float f, Transformation transformation) {
            SwipeRefreshLayout swipeRefreshLayout = SwipeRefreshLayout.this;
            float f2 = swipeRefreshLayout.f10420J;
            swipeRefreshLayout.setAnimationProgress(f2 + ((-f2) * f));
            SwipeRefreshLayout.this.m6492h(f);
        }
    }

    public SwipeRefreshLayout(@NonNull Context context) {
        this(context, null);
    }

    private void setColorViewAlpha(int i) {
        this.f10450y.getBackground().setAlpha(i);
        this.f10430k0.setAlpha(i);
    }

    /* renamed from: a */
    public final void m6485a(int i, Animation.AnimationListener animationListener) {
        this.mFrom = i;
        this.f10418C0.reset();
        this.f10418C0.setDuration(200L);
        this.f10418C0.setInterpolator(this.f10448x);
        if (animationListener != null) {
            this.f10450y.m56151b(animationListener);
        }
        this.f10450y.clearAnimation();
        this.f10450y.startAnimation(this.f10418C0);
    }

    /* renamed from: b */
    public final void m6486b(int i, Animation.AnimationListener animationListener) {
        if (this.f10444v) {
            m6501q(i, animationListener);
            return;
        }
        this.mFrom = i;
        this.f10419D0.reset();
        this.f10419D0.setDuration(200L);
        this.f10419D0.setInterpolator(this.f10448x);
        if (animationListener != null) {
            this.f10450y.m56151b(animationListener);
        }
        this.f10450y.clearAnimation();
        this.f10450y.startAnimation(this.f10419D0);
    }

    /* renamed from: c */
    public final void m6487c() {
        this.f10450y = new otd(getContext(), f10413R0);
        CircularProgressDrawable circularProgressDrawable = new CircularProgressDrawable(getContext());
        this.f10430k0 = circularProgressDrawable;
        circularProgressDrawable.setStyle(1);
        this.f10450y.setImageDrawable(this.f10430k0);
        this.f10450y.setVisibility(8);
        addView(this.f10450y);
    }

    public boolean canChildScrollUp() {
        OnChildScrollUpCallback onChildScrollUpCallback = this.f10416A0;
        if (onChildScrollUpCallback != null) {
            return onChildScrollUpCallback.canChildScrollUp(this, this.f10423e);
        }
        View view = this.f10423e;
        return view instanceof ListView ? ListViewCompat.canScrollList((ListView) view, -1) : view.canScrollVertically(-1);
    }

    /* renamed from: d */
    public final void m6488d() {
        if (this.f10423e == null) {
            for (int i = 0; i < getChildCount(); i++) {
                View childAt = getChildAt(i);
                if (!childAt.equals(this.f10450y)) {
                    this.f10423e = childAt;
                    return;
                }
            }
        }
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedFling(float f, float f2, boolean z) {
        return this.f10431l.dispatchNestedFling(f, f2, z);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedPreFling(float f, float f2) {
        return this.f10431l.dispatchNestedPreFling(f, f2);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return this.f10431l.dispatchNestedPreScroll(i, i2, iArr, iArr2);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return this.f10431l.dispatchNestedScroll(i, i2, i3, i4, iArr);
    }

    /* renamed from: e */
    public final void m6489e(float f) {
        if (f > this.f10427i) {
            m6495k(true, true);
            return;
        }
        this.f10425g = false;
        this.f10430k0.setStartEndTrim(0.0f, 0.0f);
        m6486b(this.f10436q, !this.f10444v ? new AnimationAnimationListenerC1455e() : null);
        this.f10430k0.setArrowEnabled(false);
    }

    /* renamed from: f */
    public final boolean m6490f(Animation animation) {
        return (animation == null || !animation.hasStarted() || animation.hasEnded()) ? false : true;
    }

    /* renamed from: g */
    public final void m6491g(float f) {
        this.f10430k0.setArrowEnabled(true);
        float min = Math.min(1.0f, Math.abs(f / this.f10427i));
        float max = (((float) Math.max(min - 0.4d, 0.0d)) * 5.0f) / 3.0f;
        float abs = Math.abs(f) - this.f10427i;
        int i = this.f10422Q;
        if (i <= 0) {
            i = this.f10453z0 ? this.f10421O - this.mOriginalOffsetTop : this.f10421O;
        }
        float f2 = i;
        double max2 = Math.max(0.0f, Math.min(abs, f2 * 2.0f) / f2) / 4.0f;
        float pow = ((float) (max2 - Math.pow(max2, 2.0d))) * 2.0f;
        int i2 = this.mOriginalOffsetTop + ((int) ((f2 * min) + (f2 * pow * 2.0f)));
        if (this.f10450y.getVisibility() != 0) {
            this.f10450y.setVisibility(0);
        }
        if (!this.f10444v) {
            this.f10450y.setScaleX(1.0f);
            this.f10450y.setScaleY(1.0f);
        }
        if (this.f10444v) {
            setAnimationProgress(Math.min(1.0f, f / this.f10427i));
        }
        if (f < this.f10427i) {
            if (this.f10430k0.getAlpha() > 76 && !m6490f(this.f10443u0)) {
                m6499o();
            }
        } else if (this.f10430k0.getAlpha() < 255 && !m6490f(this.f10445v0)) {
            m6498n();
        }
        this.f10430k0.setStartEndTrim(0.0f, Math.min(0.8f, max * 0.8f));
        this.f10430k0.setArrowScale(Math.min(1.0f, max));
        this.f10430k0.setProgressRotation((((max * 0.4f) - 0.25f) + (pow * 2.0f)) * 0.5f);
        setTargetOffsetTopAndBottom(i2 - this.f10436q);
    }

    @Override // android.view.ViewGroup
    public int getChildDrawingOrder(int i, int i2) {
        int i3 = this.f10452z;
        return i3 < 0 ? i2 : i2 == i + (-1) ? i3 : i2 >= i3 ? i2 + 1 : i2;
    }

    @Override // android.view.ViewGroup, androidx.core.view.NestedScrollingParent
    public int getNestedScrollAxes() {
        return this.f10429k.getNestedScrollAxes();
    }

    public int getProgressCircleDiameter() {
        return this.f10451y0;
    }

    public int getProgressViewEndOffset() {
        return this.f10421O;
    }

    public int getProgressViewStartOffset() {
        return this.mOriginalOffsetTop;
    }

    /* renamed from: h */
    public void m6492h(float f) {
        setTargetOffsetTopAndBottom((this.mFrom + ((int) ((this.mOriginalOffsetTop - r0) * f))) - this.f10450y.getTop());
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean hasNestedScrollingParent() {
        return this.f10431l.hasNestedScrollingParent();
    }

    /* renamed from: i */
    public final void m6493i(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f10442u) {
            this.f10442u = motionEvent.getPointerId(actionIndex == 0 ? 1 : 0);
        }
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean isNestedScrollingEnabled() {
        return this.f10431l.isNestedScrollingEnabled();
    }

    public boolean isRefreshing() {
        return this.f10425g;
    }

    /* renamed from: j */
    public void m6494j() {
        this.f10450y.clearAnimation();
        this.f10430k0.stop();
        this.f10450y.setVisibility(8);
        setColorViewAlpha(255);
        if (this.f10444v) {
            setAnimationProgress(0.0f);
        } else {
            setTargetOffsetTopAndBottom(this.mOriginalOffsetTop - this.f10436q);
        }
        this.f10436q = this.f10450y.getTop();
    }

    /* renamed from: k */
    public final void m6495k(boolean z, boolean z2) {
        if (this.f10425g != z) {
            this.f10449x0 = z2;
            m6488d();
            this.f10425g = z;
            if (z) {
                m6485a(this.f10436q, this.f10417B0);
            } else {
                m6500p(this.f10417B0);
            }
        }
    }

    /* renamed from: l */
    public final Animation m6496l(int i, int i2) {
        C1454d c1454d = new C1454d(i, i2);
        c1454d.setDuration(300L);
        this.f10450y.m56151b(null);
        this.f10450y.clearAnimation();
        this.f10450y.startAnimation(c1454d);
        return c1454d;
    }

    /* renamed from: m */
    public final void m6497m(float f) {
        float f2 = this.f10439s;
        float f3 = f - f2;
        int i = this.f10426h;
        if (f3 <= i || this.f10440t) {
            return;
        }
        this.f10438r = f2 + i;
        this.f10440t = true;
        this.f10430k0.setAlpha(76);
    }

    /* renamed from: n */
    public final void m6498n() {
        this.f10445v0 = m6496l(this.f10430k0.getAlpha(), 255);
    }

    /* renamed from: o */
    public final void m6499o() {
        this.f10443u0 = m6496l(this.f10430k0.getAlpha(), 76);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m6494j();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        m6488d();
        int actionMasked = motionEvent.getActionMasked();
        if (this.f10446w && actionMasked == 0) {
            this.f10446w = false;
        }
        if (!isEnabled() || this.f10446w || canChildScrollUp() || this.f10425g || this.f10434o) {
            return false;
        }
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    int i = this.f10442u;
                    if (i == -1) {
                        Log.e(f10402G0, "Got ACTION_MOVE event but don't have an active pointer id.");
                        return false;
                    }
                    int findPointerIndex = motionEvent.findPointerIndex(i);
                    if (findPointerIndex < 0) {
                        return false;
                    }
                    m6497m(motionEvent.getY(findPointerIndex));
                } else if (actionMasked != 3) {
                    if (actionMasked == 6) {
                        m6493i(motionEvent);
                    }
                }
            }
            this.f10440t = false;
            this.f10442u = -1;
        } else {
            setTargetOffsetTopAndBottom(this.mOriginalOffsetTop - this.f10450y.getTop());
            int pointerId = motionEvent.getPointerId(0);
            this.f10442u = pointerId;
            this.f10440t = false;
            int findPointerIndex2 = motionEvent.findPointerIndex(pointerId);
            if (findPointerIndex2 < 0) {
                return false;
            }
            this.f10439s = motionEvent.getY(findPointerIndex2);
        }
        return this.f10440t;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        if (getChildCount() == 0) {
            return;
        }
        if (this.f10423e == null) {
            m6488d();
        }
        View view = this.f10423e;
        if (view == null) {
            return;
        }
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        view.layout(paddingLeft, paddingTop, ((measuredWidth - getPaddingLeft()) - getPaddingRight()) + paddingLeft, ((measuredHeight - getPaddingTop()) - getPaddingBottom()) + paddingTop);
        int measuredWidth2 = this.f10450y.getMeasuredWidth();
        int measuredHeight2 = this.f10450y.getMeasuredHeight();
        int i5 = measuredWidth / 2;
        int i6 = measuredWidth2 / 2;
        int i7 = this.f10436q;
        this.f10450y.layout(i5 - i6, i7, i5 + i6, measuredHeight2 + i7);
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f10423e == null) {
            m6488d();
        }
        View view = this.f10423e;
        if (view == null) {
            return;
        }
        view.measure(View.MeasureSpec.makeMeasureSpec((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), 1073741824), View.MeasureSpec.makeMeasureSpec((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), 1073741824));
        this.f10450y.measure(View.MeasureSpec.makeMeasureSpec(this.f10451y0, 1073741824), View.MeasureSpec.makeMeasureSpec(this.f10451y0, 1073741824));
        this.f10452z = -1;
        for (int i3 = 0; i3 < getChildCount(); i3++) {
            if (getChildAt(i3) == this.f10450y) {
                this.f10452z = i3;
                return;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        return dispatchNestedFling(f, f2, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedPreFling(View view, float f, float f2) {
        return dispatchNestedPreFling(f, f2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        if (i2 > 0) {
            float f = this.f10428j;
            if (f > 0.0f) {
                float f2 = i2;
                if (f2 > f) {
                    iArr[1] = i2 - ((int) f);
                    this.f10428j = 0.0f;
                } else {
                    this.f10428j = f - f2;
                    iArr[1] = i2;
                }
                m6491g(this.f10428j);
            }
        }
        if (this.f10453z0 && i2 > 0 && this.f10428j == 0.0f && Math.abs(i2 - iArr[1]) > 0) {
            this.f10450y.setVisibility(8);
        }
        int[] iArr2 = this.f10432m;
        if (dispatchNestedPreScroll(i - iArr[0], i2 - iArr[1], iArr2, null)) {
            iArr[0] = iArr[0] + iArr2[0];
            iArr[1] = iArr[1] + iArr2[1];
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        dispatchNestedScroll(i, i2, i3, i4, this.f10433n);
        if (i4 + this.f10433n[1] >= 0 || canChildScrollUp()) {
            return;
        }
        float abs = this.f10428j + Math.abs(r11);
        this.f10428j = abs;
        m6491g(abs);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedScrollAccepted(View view, View view2, int i) {
        this.f10429k.onNestedScrollAccepted(view, view2, i);
        startNestedScroll(i & 2);
        this.f10428j = 0.0f;
        this.f10434o = true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onStartNestedScroll(View view, View view2, int i) {
        return (!isEnabled() || this.f10446w || this.f10425g || (i & 2) == 0) ? false : true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onStopNestedScroll(View view) {
        this.f10429k.onStopNestedScroll(view);
        this.f10434o = false;
        float f = this.f10428j;
        if (f > 0.0f) {
            m6489e(f);
            this.f10428j = 0.0f;
        }
        stopNestedScroll();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (this.f10446w && actionMasked == 0) {
            this.f10446w = false;
        }
        if (!isEnabled() || this.f10446w || canChildScrollUp() || this.f10425g || this.f10434o) {
            return false;
        }
        if (actionMasked == 0) {
            this.f10442u = motionEvent.getPointerId(0);
            this.f10440t = false;
        } else {
            if (actionMasked == 1) {
                int findPointerIndex = motionEvent.findPointerIndex(this.f10442u);
                if (findPointerIndex < 0) {
                    Log.e(f10402G0, "Got ACTION_UP event but don't have an active pointer id.");
                    return false;
                }
                if (this.f10440t) {
                    float y = (motionEvent.getY(findPointerIndex) - this.f10438r) * 0.5f;
                    this.f10440t = false;
                    m6489e(y);
                }
                this.f10442u = -1;
                return false;
            }
            if (actionMasked == 2) {
                int findPointerIndex2 = motionEvent.findPointerIndex(this.f10442u);
                if (findPointerIndex2 < 0) {
                    Log.e(f10402G0, "Got ACTION_MOVE event but have an invalid active pointer id.");
                    return false;
                }
                float y2 = motionEvent.getY(findPointerIndex2);
                m6497m(y2);
                if (this.f10440t) {
                    float f = (y2 - this.f10438r) * 0.5f;
                    if (f <= 0.0f) {
                        return false;
                    }
                    m6491g(f);
                }
            } else {
                if (actionMasked == 3) {
                    return false;
                }
                if (actionMasked == 5) {
                    int actionIndex = motionEvent.getActionIndex();
                    if (actionIndex < 0) {
                        Log.e(f10402G0, "Got ACTION_POINTER_DOWN event but have an invalid action index.");
                        return false;
                    }
                    this.f10442u = motionEvent.getPointerId(actionIndex);
                } else if (actionMasked == 6) {
                    m6493i(motionEvent);
                }
            }
        }
        return true;
    }

    /* renamed from: p */
    public void m6500p(Animation.AnimationListener animationListener) {
        C1453c c1453c = new C1453c();
        this.f10441t0 = c1453c;
        c1453c.setDuration(150L);
        this.f10450y.m56151b(animationListener);
        this.f10450y.clearAnimation();
        this.f10450y.startAnimation(this.f10441t0);
    }

    /* renamed from: q */
    public final void m6501q(int i, Animation.AnimationListener animationListener) {
        this.mFrom = i;
        this.f10420J = this.f10450y.getScaleX();
        C1458h c1458h = new C1458h();
        this.f10447w0 = c1458h;
        c1458h.setDuration(150L);
        if (animationListener != null) {
            this.f10450y.m56151b(animationListener);
        }
        this.f10450y.clearAnimation();
        this.f10450y.startAnimation(this.f10447w0);
    }

    /* renamed from: r */
    public final void m6502r(Animation.AnimationListener animationListener) {
        this.f10450y.setVisibility(0);
        this.f10430k0.setAlpha(255);
        C1452b c1452b = new C1452b();
        this.f10437q0 = c1452b;
        c1452b.setDuration(this.f10435p);
        if (animationListener != null) {
            this.f10450y.m56151b(animationListener);
        }
        this.f10450y.clearAnimation();
        this.f10450y.startAnimation(this.f10437q0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        View view = this.f10423e;
        if (view == null || ViewCompat.isNestedScrollingEnabled(view)) {
            super.requestDisallowInterceptTouchEvent(z);
        }
    }

    public void setAnimationProgress(float f) {
        this.f10450y.setScaleX(f);
        this.f10450y.setScaleY(f);
    }

    @Deprecated
    public void setColorScheme(@ColorRes int... iArr) {
        setColorSchemeResources(iArr);
    }

    public void setColorSchemeColors(@ColorInt int... iArr) {
        m6488d();
        this.f10430k0.setColorSchemeColors(iArr);
    }

    public void setColorSchemeResources(@ColorRes int... iArr) {
        Context context = getContext();
        int[] iArr2 = new int[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            iArr2[i] = ContextCompat.getColor(context, iArr[i]);
        }
        setColorSchemeColors(iArr2);
    }

    public void setDistanceToTriggerSync(int i) {
        this.f10427i = i;
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        if (z) {
            return;
        }
        m6494j();
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public void setNestedScrollingEnabled(boolean z) {
        this.f10431l.setNestedScrollingEnabled(z);
    }

    public void setOnChildScrollUpCallback(@Nullable OnChildScrollUpCallback onChildScrollUpCallback) {
        this.f10416A0 = onChildScrollUpCallback;
    }

    public void setOnRefreshListener(@Nullable OnRefreshListener onRefreshListener) {
        this.f10424f = onRefreshListener;
    }

    @Deprecated
    public void setProgressBackgroundColor(int i) {
        setProgressBackgroundColorSchemeResource(i);
    }

    public void setProgressBackgroundColorSchemeColor(@ColorInt int i) {
        this.f10450y.setBackgroundColor(i);
    }

    public void setProgressBackgroundColorSchemeResource(@ColorRes int i) {
        setProgressBackgroundColorSchemeColor(ContextCompat.getColor(getContext(), i));
    }

    public void setProgressViewEndTarget(boolean z, int i) {
        this.f10421O = i;
        this.f10444v = z;
        this.f10450y.invalidate();
    }

    public void setProgressViewOffset(boolean z, int i, int i2) {
        this.f10444v = z;
        this.mOriginalOffsetTop = i;
        this.f10421O = i2;
        this.f10453z0 = true;
        m6494j();
        this.f10425g = false;
    }

    public void setRefreshing(boolean z) {
        if (!z || this.f10425g == z) {
            m6495k(z, false);
            return;
        }
        this.f10425g = z;
        setTargetOffsetTopAndBottom((!this.f10453z0 ? this.f10421O + this.mOriginalOffsetTop : this.f10421O) - this.f10436q);
        this.f10449x0 = false;
        m6502r(this.f10417B0);
    }

    public void setSize(int i) {
        if (i == 0 || i == 1) {
            DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
            if (i == 0) {
                this.f10451y0 = (int) (displayMetrics.density * 56.0f);
            } else {
                this.f10451y0 = (int) (displayMetrics.density * 40.0f);
            }
            this.f10450y.setImageDrawable(null);
            this.f10430k0.setStyle(i);
            this.f10450y.setImageDrawable(this.f10430k0);
        }
    }

    public void setSlingshotDistance(@Px int i) {
        this.f10422Q = i;
    }

    public void setTargetOffsetTopAndBottom(int i) {
        this.f10450y.bringToFront();
        ViewCompat.offsetTopAndBottom(this.f10450y, i);
        this.f10436q = this.f10450y.getTop();
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean startNestedScroll(int i) {
        return this.f10431l.startNestedScroll(i);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public void stopNestedScroll() {
        this.f10431l.stopNestedScroll();
    }

    public SwipeRefreshLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f10425g = false;
        this.f10427i = -1.0f;
        this.f10432m = new int[2];
        this.f10433n = new int[2];
        this.f10442u = -1;
        this.f10452z = -1;
        this.f10417B0 = new AnimationAnimationListenerC1451a();
        this.f10418C0 = new C1456f();
        this.f10419D0 = new C1457g();
        this.f10426h = ViewConfiguration.get(context).getScaledTouchSlop();
        this.f10435p = getResources().getInteger(R.integer.config_mediumAnimTime);
        setWillNotDraw(false);
        this.f10448x = new DecelerateInterpolator(2.0f);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.f10451y0 = (int) (displayMetrics.density * 40.0f);
        m6487c();
        setChildrenDrawingOrderEnabled(true);
        int i = (int) (displayMetrics.density * 64.0f);
        this.f10421O = i;
        this.f10427i = i;
        this.f10429k = new NestedScrollingParentHelper(this);
        this.f10431l = new NestedScrollingChildHelper(this);
        setNestedScrollingEnabled(true);
        int i2 = -this.f10451y0;
        this.f10436q = i2;
        this.mOriginalOffsetTop = i2;
        m6492h(1.0f);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f10415T0);
        setEnabled(obtainStyledAttributes.getBoolean(0, true));
        obtainStyledAttributes.recycle();
    }
}
