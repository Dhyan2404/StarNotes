package androidx.coordinatorlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import androidx.annotation.AttrRes;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.FloatRange;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.coordinatorlayout.C0506R;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.util.ObjectsCompat;
import androidx.core.util.Pools;
import androidx.core.view.GravityCompat;
import androidx.core.view.NestedScrollingParent2;
import androidx.core.view.NestedScrollingParent3;
import androidx.core.view.NestedScrollingParentHelper;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.customview.view.AbsSavedState;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public class CoordinatorLayout extends ViewGroup implements NestedScrollingParent2, NestedScrollingParent3 {

    /* renamed from: J */
    public static final int f4698J = 0;

    /* renamed from: O */
    public static final int f4699O = 1;

    /* renamed from: Q */
    public static final Class<?>[] f4700Q;

    /* renamed from: k0 */
    public static final ThreadLocal<Map<String, Constructor<Behavior>>> f4701k0;

    /* renamed from: q0 */
    public static final int f4702q0 = 0;

    /* renamed from: t0 */
    public static final int f4703t0 = 1;

    /* renamed from: u0 */
    public static final int f4704u0 = 2;

    /* renamed from: v0 */
    public static final Comparator<View> f4705v0;

    /* renamed from: w0 */
    public static final Pools.Pool<Rect> f4706w0;

    /* renamed from: y */
    public static final String f4707y = "CoordinatorLayout";

    /* renamed from: z */
    public static final String f4708z;

    /* renamed from: e */
    public final List<View> f4709e;

    /* renamed from: f */
    public final DirectedAcyclicGraph<View> f4710f;

    /* renamed from: g */
    public final List<View> f4711g;

    /* renamed from: h */
    public final List<View> f4712h;

    /* renamed from: i */
    public Paint f4713i;

    /* renamed from: j */
    public final int[] f4714j;

    /* renamed from: k */
    public final int[] f4715k;

    /* renamed from: l */
    public boolean f4716l;

    /* renamed from: m */
    public boolean f4717m;

    /* renamed from: n */
    public int[] f4718n;

    /* renamed from: o */
    public View f4719o;

    /* renamed from: p */
    public View f4720p;

    /* renamed from: q */
    public ViewTreeObserverOnPreDrawListenerC0510c f4721q;

    /* renamed from: r */
    public boolean f4722r;

    /* renamed from: s */
    public WindowInsetsCompat f4723s;

    /* renamed from: t */
    public boolean f4724t;

    /* renamed from: u */
    public Drawable f4725u;

    /* renamed from: v */
    public ViewGroup.OnHierarchyChangeListener f4726v;

    /* renamed from: w */
    public OnApplyWindowInsetsListener f4727w;

    /* renamed from: x */
    public final NestedScrollingParentHelper f4728x;

    /* loaded from: classes3.dex */
    public interface AttachedBehavior {
        @NonNull
        Behavior getBehavior();
    }

    /* loaded from: classes3.dex */
    public static abstract class Behavior<V extends View> {
        public Behavior() {
        }

        @Nullable
        public static Object getTag(@NonNull View view) {
            return ((LayoutParams) view.getLayoutParams()).f4741m;
        }

        public static void setTag(@NonNull View view, @Nullable Object obj) {
            ((LayoutParams) view.getLayoutParams()).f4741m = obj;
        }

        public boolean blocksInteractionBelow(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v) {
            return getScrimOpacity(coordinatorLayout, v) > 0.0f;
        }

        public boolean getInsetDodgeRect(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull Rect rect) {
            return false;
        }

        @ColorInt
        public int getScrimColor(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v) {
            return -16777216;
        }

        @FloatRange(from = 0.0d, m280to = 1.0d)
        public float getScrimOpacity(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v) {
            return 0.0f;
        }

        public boolean layoutDependsOn(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view) {
            return false;
        }

        @NonNull
        public WindowInsetsCompat onApplyWindowInsets(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull WindowInsetsCompat windowInsetsCompat) {
            return windowInsetsCompat;
        }

        public void onAttachedToLayoutParams(@NonNull LayoutParams layoutParams) {
        }

        public boolean onDependentViewChanged(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view) {
            return false;
        }

        public void onDependentViewRemoved(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view) {
        }

        public void onDetachedFromLayoutParams() {
        }

        public boolean onInterceptTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull MotionEvent motionEvent) {
            return false;
        }

        public boolean onLayoutChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, int i) {
            return false;
        }

        public boolean onMeasureChild(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, int i, int i2, int i3, int i4) {
            return false;
        }

        public boolean onNestedFling(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, float f, float f2, boolean z) {
            return false;
        }

        public boolean onNestedPreFling(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, float f, float f2) {
            return false;
        }

        @Deprecated
        public void onNestedPreScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, int i, int i2, @NonNull int[] iArr) {
        }

        @Deprecated
        public void onNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, int i, int i2, int i3, int i4) {
        }

        @Deprecated
        public void onNestedScrollAccepted(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, @NonNull View view2, int i) {
        }

        public boolean onRequestChildRectangleOnScreen(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull Rect rect, boolean z) {
            return false;
        }

        public void onRestoreInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull Parcelable parcelable) {
        }

        @Nullable
        public Parcelable onSaveInstanceState(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v) {
            return View.BaseSavedState.EMPTY_STATE;
        }

        @Deprecated
        public boolean onStartNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, @NonNull View view2, int i) {
            return false;
        }

        @Deprecated
        public void onStopNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view) {
        }

        public boolean onTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull MotionEvent motionEvent) {
            return false;
        }

        public Behavior(Context context, AttributeSet attributeSet) {
        }

        public void onNestedPreScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, int i, int i2, @NonNull int[] iArr, int i3) {
            if (i3 == 0) {
                onNestedPreScroll(coordinatorLayout, v, view, i, i2, iArr);
            }
        }

        @Deprecated
        public void onNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, int i, int i2, int i3, int i4, int i5) {
            if (i5 == 0) {
                onNestedScroll(coordinatorLayout, v, view, i, i2, i3, i4);
            }
        }

        public void onNestedScrollAccepted(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, @NonNull View view2, int i, int i2) {
            if (i2 == 0) {
                onNestedScrollAccepted(coordinatorLayout, v, view, view2, i);
            }
        }

        public boolean onStartNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, @NonNull View view2, int i, int i2) {
            if (i2 == 0) {
                return onStartNestedScroll(coordinatorLayout, v, view, view2, i);
            }
            return false;
        }

        public void onStopNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, int i) {
            if (i == 0) {
                onStopNestedScroll(coordinatorLayout, v, view);
            }
        }

        public void onNestedScroll(@NonNull CoordinatorLayout coordinatorLayout, @NonNull V v, @NonNull View view, int i, int i2, int i3, int i4, int i5, @NonNull int[] iArr) {
            iArr[0] = iArr[0] + i3;
            iArr[1] = iArr[1] + i4;
            onNestedScroll(coordinatorLayout, v, view, i, i2, i3, i4, i5);
        }
    }

    @Retention(RetentionPolicy.RUNTIME)
    @Deprecated
    /* loaded from: classes3.dex */
    public @interface DefaultBehavior {
        Class<? extends Behavior> value();
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes3.dex */
    public @interface DispatchChangeEvent {
    }

    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$a */
    /* loaded from: classes3.dex */
    public class C0508a implements OnApplyWindowInsetsListener {
        public C0508a() {
        }

        @Override // androidx.core.view.OnApplyWindowInsetsListener
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            return CoordinatorLayout.this.m2248H(windowInsetsCompat);
        }
    }

    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$b */
    /* loaded from: classes3.dex */
    public class ViewGroupOnHierarchyChangeListenerC0509b implements ViewGroup.OnHierarchyChangeListener {
        public ViewGroupOnHierarchyChangeListenerC0509b() {
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewAdded(View view, View view2) {
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = CoordinatorLayout.this.f4726v;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewAdded(view, view2);
            }
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewRemoved(View view, View view2) {
            CoordinatorLayout.this.m2268u(2);
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = CoordinatorLayout.this.f4726v;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewRemoved(view, view2);
            }
        }
    }

    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$c */
    /* loaded from: classes3.dex */
    public class ViewTreeObserverOnPreDrawListenerC0510c implements ViewTreeObserver.OnPreDrawListener {
        public ViewTreeObserverOnPreDrawListenerC0510c() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            CoordinatorLayout.this.m2268u(0);
            return true;
        }
    }

    /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$d */
    /* loaded from: classes3.dex */
    public static class C0511d implements Comparator<View> {
        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(View view, View view2) {
            float z = ViewCompat.getZ(view);
            float z2 = ViewCompat.getZ(view2);
            if (z > z2) {
                return -1;
            }
            return z < z2 ? 1 : 0;
        }
    }

    static {
        Package r0 = CoordinatorLayout.class.getPackage();
        f4708z = r0 != null ? r0.getName() : null;
        f4705v0 = new C0511d();
        f4700Q = new Class[]{Context.class, AttributeSet.class};
        f4701k0 = new ThreadLocal<>();
        f4706w0 = new Pools.SynchronizedPool(12);
    }

    public CoordinatorLayout(@NonNull Context context) {
        this(context, null);
    }

    /* renamed from: C */
    public static int m2237C(int i) {
        if (i == 0) {
            return 17;
        }
        return i;
    }

    /* renamed from: D */
    public static int m2238D(int i) {
        if ((i & 7) == 0) {
            i |= GravityCompat.START;
        }
        return (i & 112) == 0 ? i | 48 : i;
    }

    /* renamed from: E */
    public static int m2239E(int i) {
        if (i == 0) {
            return 8388661;
        }
        return i;
    }

    @NonNull
    /* renamed from: a */
    public static Rect m2240a() {
        Rect acquire = f4706w0.acquire();
        return acquire == null ? new Rect() : acquire;
    }

    /* renamed from: c */
    public static int m2241c(int i, int i2, int i3) {
        return i < i2 ? i2 : i > i3 ? i3 : i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: v */
    public static Behavior m2242v(Context context, AttributeSet attributeSet, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.startsWith(".")) {
            str = context.getPackageName() + str;
        } else if (str.indexOf(46) < 0) {
            String str2 = f4708z;
            if (!TextUtils.isEmpty(str2)) {
                str = str2 + '.' + str;
            }
        }
        try {
            ThreadLocal<Map<String, Constructor<Behavior>>> threadLocal = f4701k0;
            Map<String, Constructor<Behavior>> map = threadLocal.get();
            if (map == null) {
                map = new HashMap<>();
                threadLocal.set(map);
            }
            Constructor<Behavior> constructor = map.get(str);
            if (constructor == null) {
                constructor = Class.forName(str, false, context.getClassLoader()).getConstructor(f4700Q);
                constructor.setAccessible(true);
                map.put(str, constructor);
            }
            return constructor.newInstance(context, attributeSet);
        } catch (Exception e) {
            throw new RuntimeException("Could not inflate Behavior subclass " + str, e);
        }
    }

    /* renamed from: z */
    public static void m2243z(@NonNull Rect rect) {
        rect.setEmpty();
        f4706w0.release(rect);
    }

    /* renamed from: A */
    public void m2244A() {
        if (this.f4717m && this.f4721q != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.f4721q);
        }
        this.f4722r = false;
    }

    /* renamed from: B */
    public final void m2245B(boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            Behavior behavior = ((LayoutParams) childAt.getLayoutParams()).getBehavior();
            if (behavior != null) {
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                if (z) {
                    behavior.onInterceptTouchEvent(this, childAt, obtain);
                } else {
                    behavior.onTouchEvent(this, childAt, obtain);
                }
                obtain.recycle();
            }
        }
        for (int i2 = 0; i2 < childCount; i2++) {
            ((LayoutParams) getChildAt(i2).getLayoutParams()).m2283l();
        }
        this.f4719o = null;
        this.f4716l = false;
    }

    /* renamed from: F */
    public final void m2246F(View view, int i) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int i2 = layoutParams.f4732d;
        if (i2 != i) {
            ViewCompat.offsetLeftAndRight(view, i - i2);
            layoutParams.f4732d = i;
        }
    }

    /* renamed from: G */
    public final void m2247G(View view, int i) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int i2 = layoutParams.f4733e;
        if (i2 != i) {
            ViewCompat.offsetTopAndBottom(view, i - i2);
            layoutParams.f4733e = i;
        }
    }

    /* renamed from: H */
    public final WindowInsetsCompat m2248H(WindowInsetsCompat windowInsetsCompat) {
        if (ObjectsCompat.equals(this.f4723s, windowInsetsCompat)) {
            return windowInsetsCompat;
        }
        this.f4723s = windowInsetsCompat;
        boolean z = windowInsetsCompat != null && windowInsetsCompat.getSystemWindowInsetTop() > 0;
        this.f4724t = z;
        setWillNotDraw(!z && getBackground() == null);
        WindowInsetsCompat m2252e = m2252e(windowInsetsCompat);
        requestLayout();
        return m2252e;
    }

    /* renamed from: I */
    public final void m2249I() {
        if (!ViewCompat.getFitsSystemWindows(this)) {
            ViewCompat.setOnApplyWindowInsetsListener(this, null);
            return;
        }
        if (this.f4727w == null) {
            this.f4727w = new C0508a();
        }
        ViewCompat.setOnApplyWindowInsetsListener(this, this.f4727w);
        setSystemUiVisibility(1280);
    }

    /* renamed from: b */
    public void m2250b() {
        if (this.f4717m) {
            if (this.f4721q == null) {
                this.f4721q = new ViewTreeObserverOnPreDrawListenerC0510c();
            }
            getViewTreeObserver().addOnPreDrawListener(this.f4721q);
        }
        this.f4722r = true;
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    /* renamed from: d */
    public final void m2251d(LayoutParams layoutParams, Rect rect, int i, int i2) {
        int width = getWidth();
        int height = getHeight();
        int max = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, Math.min(rect.left, ((width - getPaddingRight()) - i) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin));
        int max2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, Math.min(rect.top, ((height - getPaddingBottom()) - i2) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin));
        rect.set(max, max2, i + max, i2 + max2);
    }

    public void dispatchDependentViewsChanged(@NonNull View view) {
        List incomingEdges = this.f4710f.getIncomingEdges(view);
        if (incomingEdges == null || incomingEdges.isEmpty()) {
            return;
        }
        for (int i = 0; i < incomingEdges.size(); i++) {
            View view2 = (View) incomingEdges.get(i);
            Behavior behavior = ((LayoutParams) view2.getLayoutParams()).getBehavior();
            if (behavior != null) {
                behavior.onDependentViewChanged(this, view2, view);
            }
        }
    }

    public boolean doViewsOverlap(@NonNull View view, @NonNull View view2) {
        boolean z = false;
        if (view.getVisibility() != 0 || view2.getVisibility() != 0) {
            return false;
        }
        Rect m2240a = m2240a();
        m2254g(view, view.getParent() != this, m2240a);
        Rect m2240a2 = m2240a();
        m2254g(view2, view2.getParent() != this, m2240a2);
        try {
            if (m2240a.left <= m2240a2.right && m2240a.top <= m2240a2.bottom && m2240a.right >= m2240a2.left) {
                if (m2240a.bottom >= m2240a2.top) {
                    z = true;
                }
            }
            return z;
        } finally {
            m2243z(m2240a);
            m2243z(m2240a2);
        }
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        Behavior behavior = layoutParams.f4729a;
        if (behavior != null) {
            float scrimOpacity = behavior.getScrimOpacity(this, view);
            if (scrimOpacity > 0.0f) {
                if (this.f4713i == null) {
                    this.f4713i = new Paint();
                }
                this.f4713i.setColor(layoutParams.f4729a.getScrimColor(this, view));
                this.f4713i.setAlpha(m2241c(Math.round(scrimOpacity * 255.0f), 0, 255));
                int save = canvas.save();
                if (view.isOpaque()) {
                    canvas.clipRect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom(), Region.Op.DIFFERENCE);
                }
                canvas.drawRect(getPaddingLeft(), getPaddingTop(), getWidth() - getPaddingRight(), getHeight() - getPaddingBottom(), this.f4713i);
                canvas.restoreToCount(save);
            }
        }
        return super.drawChild(canvas, view, j);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f4725u;
        boolean z = false;
        if (drawable != null && drawable.isStateful()) {
            z = false | drawable.setState(drawableState);
        }
        if (z) {
            invalidate();
        }
    }

    /* renamed from: e */
    public final WindowInsetsCompat m2252e(WindowInsetsCompat windowInsetsCompat) {
        Behavior behavior;
        if (windowInsetsCompat.isConsumed()) {
            return windowInsetsCompat;
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (ViewCompat.getFitsSystemWindows(childAt) && (behavior = ((LayoutParams) childAt.getLayoutParams()).getBehavior()) != null) {
                windowInsetsCompat = behavior.onApplyWindowInsets(this, childAt, windowInsetsCompat);
                if (windowInsetsCompat.isConsumed()) {
                    break;
                }
            }
        }
        return windowInsetsCompat;
    }

    /* renamed from: f */
    public void m2253f() {
        int childCount = getChildCount();
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= childCount) {
                break;
            }
            if (m2262o(getChildAt(i))) {
                z = true;
                break;
            }
            i++;
        }
        if (z != this.f4722r) {
            if (z) {
                m2250b();
            } else {
                m2244A();
            }
        }
    }

    /* renamed from: g */
    public void m2254g(View view, boolean z, Rect rect) {
        if (view.isLayoutRequested() || view.getVisibility() == 8) {
            rect.setEmpty();
        } else if (z) {
            m2255h(view, rect);
        } else {
            rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
    }

    @NonNull
    public List<View> getDependencies(@NonNull View view) {
        List<View> outgoingEdges = this.f4710f.getOutgoingEdges(view);
        this.f4712h.clear();
        if (outgoingEdges != null) {
            this.f4712h.addAll(outgoingEdges);
        }
        return this.f4712h;
    }

    @VisibleForTesting
    public final List<View> getDependencySortedChildren() {
        m2270x();
        return Collections.unmodifiableList(this.f4709e);
    }

    @NonNull
    public List<View> getDependents(@NonNull View view) {
        List incomingEdges = this.f4710f.getIncomingEdges(view);
        this.f4712h.clear();
        if (incomingEdges != null) {
            this.f4712h.addAll(incomingEdges);
        }
        return this.f4712h;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public final WindowInsetsCompat getLastWindowInsets() {
        return this.f4723s;
    }

    @Override // android.view.ViewGroup, androidx.core.view.NestedScrollingParent
    public int getNestedScrollAxes() {
        return this.f4728x.getNestedScrollAxes();
    }

    @Nullable
    public Drawable getStatusBarBackground() {
        return this.f4725u;
    }

    @Override // android.view.View
    public int getSuggestedMinimumHeight() {
        return Math.max(super.getSuggestedMinimumHeight(), getPaddingTop() + getPaddingBottom());
    }

    @Override // android.view.View
    public int getSuggestedMinimumWidth() {
        return Math.max(super.getSuggestedMinimumWidth(), getPaddingLeft() + getPaddingRight());
    }

    /* renamed from: h */
    public void m2255h(View view, Rect rect) {
        ViewGroupUtils.getDescendantRect(this, view, rect);
    }

    /* renamed from: i */
    public void m2256i(View view, int i, Rect rect, Rect rect2) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        m2257j(view, i, rect, rect2, layoutParams, measuredWidth, measuredHeight);
        m2251d(layoutParams, rect2, measuredWidth, measuredHeight);
    }

    public boolean isPointInChildBounds(@NonNull View view, int i, int i2) {
        Rect m2240a = m2240a();
        m2255h(view, m2240a);
        try {
            return m2240a.contains(i, i2);
        } finally {
            m2243z(m2240a);
        }
    }

    /* renamed from: j */
    public final void m2257j(View view, int i, Rect rect, Rect rect2, LayoutParams layoutParams, int i2, int i3) {
        int absoluteGravity = GravityCompat.getAbsoluteGravity(m2237C(layoutParams.gravity), i);
        int absoluteGravity2 = GravityCompat.getAbsoluteGravity(m2238D(layoutParams.anchorGravity), i);
        int i4 = absoluteGravity & 7;
        int i5 = absoluteGravity & 112;
        int i6 = absoluteGravity2 & 7;
        int i7 = absoluteGravity2 & 112;
        int width = i6 != 1 ? i6 != 5 ? rect.left : rect.right : rect.left + (rect.width() / 2);
        int height = i7 != 16 ? i7 != 80 ? rect.top : rect.bottom : rect.top + (rect.height() / 2);
        if (i4 == 1) {
            width -= i2 / 2;
        } else if (i4 != 5) {
            width -= i2;
        }
        if (i5 == 16) {
            height -= i3 / 2;
        } else if (i5 != 80) {
            height -= i3;
        }
        rect2.set(width, height, i2 + width, i3 + height);
    }

    /* renamed from: k */
    public final int m2258k(int i) {
        int[] iArr = this.f4718n;
        if (iArr == null) {
            Log.e(f4707y, "No keylines defined for " + this + " - attempted index lookup " + i);
            return 0;
        }
        if (i >= 0 && i < iArr.length) {
            return iArr[i];
        }
        Log.e(f4707y, "Keyline index " + i + " out of range for " + this);
        return 0;
    }

    /* renamed from: l */
    public void m2259l(View view, Rect rect) {
        rect.set(((LayoutParams) view.getLayoutParams()).m2277f());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: m */
    public LayoutParams m2260m(View view) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (!layoutParams.f4730b) {
            if (view instanceof AttachedBehavior) {
                Behavior behavior = ((AttachedBehavior) view).getBehavior();
                if (behavior == null) {
                    Log.e(f4707y, "Attached behavior class is null");
                }
                layoutParams.setBehavior(behavior);
                layoutParams.f4730b = true;
            } else {
                DefaultBehavior defaultBehavior = null;
                for (Class<?> cls = view.getClass(); cls != null; cls = cls.getSuperclass()) {
                    defaultBehavior = (DefaultBehavior) cls.getAnnotation(DefaultBehavior.class);
                    if (defaultBehavior != null) {
                        break;
                    }
                }
                if (defaultBehavior != null) {
                    try {
                        layoutParams.setBehavior(defaultBehavior.value().getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
                    } catch (Exception e) {
                        Log.e(f4707y, "Default behavior class " + defaultBehavior.value().getName() + " could not be instantiated. Did you forget a default constructor?", e);
                    }
                }
                layoutParams.f4730b = true;
            }
        }
        return layoutParams;
    }

    /* renamed from: n */
    public final void m2261n(List<View> list) {
        list.clear();
        boolean isChildrenDrawingOrderEnabled = isChildrenDrawingOrderEnabled();
        int childCount = getChildCount();
        for (int i = childCount - 1; i >= 0; i--) {
            list.add(getChildAt(isChildrenDrawingOrderEnabled ? getChildDrawingOrder(childCount, i) : i));
        }
        Comparator<View> comparator = f4705v0;
        if (comparator != null) {
            Collections.sort(list, comparator);
        }
    }

    /* renamed from: o */
    public final boolean m2262o(View view) {
        return this.f4710f.hasOutgoingEdges(view);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        m2245B(false);
        if (this.f4722r) {
            if (this.f4721q == null) {
                this.f4721q = new ViewTreeObserverOnPreDrawListenerC0510c();
            }
            getViewTreeObserver().addOnPreDrawListener(this.f4721q);
        }
        if (this.f4723s == null && ViewCompat.getFitsSystemWindows(this)) {
            ViewCompat.requestApplyInsets(this);
        }
        this.f4717m = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m2245B(false);
        if (this.f4722r && this.f4721q != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.f4721q);
        }
        View view = this.f4720p;
        if (view != null) {
            onStopNestedScroll(view);
        }
        this.f4717m = false;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.f4724t || this.f4725u == null) {
            return;
        }
        WindowInsetsCompat windowInsetsCompat = this.f4723s;
        int systemWindowInsetTop = windowInsetsCompat != null ? windowInsetsCompat.getSystemWindowInsetTop() : 0;
        if (systemWindowInsetTop > 0) {
            this.f4725u.setBounds(0, 0, getWidth(), systemWindowInsetTop);
            this.f4725u.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            m2245B(true);
        }
        boolean m2269w = m2269w(motionEvent, 0);
        if (actionMasked == 1 || actionMasked == 3) {
            m2245B(true);
        }
        return m2269w;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        Behavior behavior;
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        int size = this.f4709e.size();
        for (int i5 = 0; i5 < size; i5++) {
            View view = this.f4709e.get(i5);
            if (view.getVisibility() != 8 && ((behavior = ((LayoutParams) view.getLayoutParams()).getBehavior()) == null || !behavior.onLayoutChild(this, view, layoutDirection))) {
                onLayoutChild(view, layoutDirection);
            }
        }
    }

    public void onLayoutChild(@NonNull View view, int i) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (layoutParams.m2272a()) {
            throw new IllegalStateException("An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete.");
        }
        View view2 = layoutParams.f4734f;
        if (view2 != null) {
            m2264q(view, view2, i);
            return;
        }
        int i2 = layoutParams.keyline;
        if (i2 >= 0) {
            m2265r(view, i2, i);
        } else {
            m2263p(view, i);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x011a, code lost:
    
        if (r0.onMeasureChild(r30, r20, r11, r21, r23, 0) == false) goto L46;
     */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x011d  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r31, int r32) {
        /*
            Method dump skipped, instructions count: 391
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.onMeasure(int, int):void");
    }

    public void onMeasureChild(View view, int i, int i2, int i3, int i4) {
        measureChildWithMargins(view, i, i2, i3, i4);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        Behavior behavior;
        int childCount = getChildCount();
        boolean z2 = false;
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.m2280i(0) && (behavior = layoutParams.getBehavior()) != null) {
                    z2 |= behavior.onNestedFling(this, childAt, view, f, f2, z);
                }
            }
        }
        if (z2) {
            m2268u(1);
        }
        return z2;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedPreFling(View view, float f, float f2) {
        Behavior behavior;
        int childCount = getChildCount();
        boolean z = false;
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.m2280i(0) && (behavior = layoutParams.getBehavior()) != null) {
                    z |= behavior.onNestedPreFling(this, childAt, view, f, f2);
                }
            }
        }
        return z;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        onNestedPreScroll(view, i, i2, iArr, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        onNestedScroll(view, i, i2, i3, i4, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedScrollAccepted(View view, View view2, int i) {
        onNestedScrollAccepted(view, view2, i, 0);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        Parcelable parcelable2;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        SparseArray<Parcelable> sparseArray = savedState.behaviorStates;
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            int id = childAt.getId();
            Behavior behavior = m2260m(childAt).getBehavior();
            if (id != -1 && behavior != null && (parcelable2 = sparseArray.get(id)) != null) {
                behavior.onRestoreInstanceState(this, childAt, parcelable2);
            }
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        Parcelable onSaveInstanceState;
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            int id = childAt.getId();
            Behavior behavior = ((LayoutParams) childAt.getLayoutParams()).getBehavior();
            if (id != -1 && behavior != null && (onSaveInstanceState = behavior.onSaveInstanceState(this, childAt)) != null) {
                sparseArray.append(id, onSaveInstanceState);
            }
        }
        savedState.behaviorStates = sparseArray;
        return savedState;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onStartNestedScroll(View view, View view2, int i) {
        return onStartNestedScroll(view, view2, i, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onStopNestedScroll(View view) {
        onStopNestedScroll(view, 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0012, code lost:
    
        if (r3 != false) goto L8;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0031  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r18) {
        /*
            r17 = this;
            r0 = r17
            r1 = r18
            int r2 = r18.getActionMasked()
            android.view.View r3 = r0.f4719o
            r4 = 1
            r5 = 0
            if (r3 != 0) goto L15
            boolean r3 = r0.m2269w(r1, r4)
            if (r3 == 0) goto L2b
            goto L16
        L15:
            r3 = r5
        L16:
            android.view.View r6 = r0.f4719o
            android.view.ViewGroup$LayoutParams r6 = r6.getLayoutParams()
            androidx.coordinatorlayout.widget.CoordinatorLayout$LayoutParams r6 = (androidx.coordinatorlayout.widget.CoordinatorLayout.LayoutParams) r6
            androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior r6 = r6.getBehavior()
            if (r6 == 0) goto L2b
            android.view.View r7 = r0.f4719o
            boolean r6 = r6.onTouchEvent(r0, r7, r1)
            goto L2c
        L2b:
            r6 = r5
        L2c:
            android.view.View r7 = r0.f4719o
            r8 = 0
            if (r7 != 0) goto L37
            boolean r1 = super.onTouchEvent(r18)
            r6 = r6 | r1
            goto L4a
        L37:
            if (r3 == 0) goto L4a
            long r11 = android.os.SystemClock.uptimeMillis()
            r13 = 3
            r14 = 0
            r15 = 0
            r16 = 0
            r9 = r11
            android.view.MotionEvent r8 = android.view.MotionEvent.obtain(r9, r11, r13, r14, r15, r16)
            super.onTouchEvent(r8)
        L4a:
            if (r8 == 0) goto L4f
            r8.recycle()
        L4f:
            if (r2 == r4) goto L54
            r1 = 3
            if (r2 != r1) goto L57
        L54:
            r0.m2245B(r5)
        L57:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.onTouchEvent(android.view.MotionEvent):boolean");
    }

    /* renamed from: p */
    public final void m2263p(View view, int i) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        Rect m2240a = m2240a();
        m2240a.set(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, getPaddingTop() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, (getWidth() - getPaddingRight()) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, (getHeight() - getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
        if (this.f4723s != null && ViewCompat.getFitsSystemWindows(this) && !ViewCompat.getFitsSystemWindows(view)) {
            m2240a.left += this.f4723s.getSystemWindowInsetLeft();
            m2240a.top += this.f4723s.getSystemWindowInsetTop();
            m2240a.right -= this.f4723s.getSystemWindowInsetRight();
            m2240a.bottom -= this.f4723s.getSystemWindowInsetBottom();
        }
        Rect m2240a2 = m2240a();
        GravityCompat.apply(m2238D(layoutParams.gravity), view.getMeasuredWidth(), view.getMeasuredHeight(), m2240a, m2240a2, i);
        view.layout(m2240a2.left, m2240a2.top, m2240a2.right, m2240a2.bottom);
        m2243z(m2240a);
        m2243z(m2240a2);
    }

    /* renamed from: q */
    public final void m2264q(View view, View view2, int i) {
        Rect m2240a = m2240a();
        Rect m2240a2 = m2240a();
        try {
            m2255h(view2, m2240a);
            m2256i(view, i, m2240a, m2240a2);
            view.layout(m2240a2.left, m2240a2.top, m2240a2.right, m2240a2.bottom);
        } finally {
            m2243z(m2240a);
            m2243z(m2240a2);
        }
    }

    /* renamed from: r */
    public final void m2265r(View view, int i, int i2) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int absoluteGravity = GravityCompat.getAbsoluteGravity(m2239E(layoutParams.gravity), i2);
        int i3 = absoluteGravity & 7;
        int i4 = absoluteGravity & 112;
        int width = getWidth();
        int height = getHeight();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        if (i2 == 1) {
            i = width - i;
        }
        int m2258k = m2258k(i) - measuredWidth;
        if (i3 == 1) {
            m2258k += measuredWidth / 2;
        } else if (i3 == 5) {
            m2258k += measuredWidth;
        }
        int i5 = 0;
        if (i4 == 16) {
            i5 = 0 + (measuredHeight / 2);
        } else if (i4 == 80) {
            i5 = measuredHeight + 0;
        }
        int max = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, Math.min(m2258k, ((width - getPaddingRight()) - measuredWidth) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin));
        int max2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, Math.min(i5, ((height - getPaddingBottom()) - measuredHeight) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin));
        view.layout(max, max2, measuredWidth + max, measuredHeight + max2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        Behavior behavior = ((LayoutParams) view.getLayoutParams()).getBehavior();
        if (behavior == null || !behavior.onRequestChildRectangleOnScreen(this, view, rect, z)) {
            return super.requestChildRectangleOnScreen(view, rect, z);
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        super.requestDisallowInterceptTouchEvent(z);
        if (!z || this.f4716l) {
            return;
        }
        m2245B(false);
        this.f4716l = true;
    }

    /* renamed from: s */
    public final void m2266s(View view, Rect rect, int i) {
        boolean z;
        boolean z2;
        int width;
        int i2;
        int i3;
        int i4;
        int height;
        int i5;
        int i6;
        int i7;
        if (ViewCompat.isLaidOut(view) && view.getWidth() > 0 && view.getHeight() > 0) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            Behavior behavior = layoutParams.getBehavior();
            Rect m2240a = m2240a();
            Rect m2240a2 = m2240a();
            m2240a2.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            if (behavior == null || !behavior.getInsetDodgeRect(this, view, m2240a)) {
                m2240a.set(m2240a2);
            } else if (!m2240a2.contains(m2240a)) {
                throw new IllegalArgumentException("Rect should be within the child's bounds. Rect:" + m2240a.toShortString() + " | Bounds:" + m2240a2.toShortString());
            }
            m2243z(m2240a2);
            if (m2240a.isEmpty()) {
                m2243z(m2240a);
                return;
            }
            int absoluteGravity = GravityCompat.getAbsoluteGravity(layoutParams.dodgeInsetEdges, i);
            boolean z3 = true;
            if ((absoluteGravity & 48) != 48 || (i6 = (m2240a.top - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin) - layoutParams.f4733e) >= (i7 = rect.top)) {
                z = false;
            } else {
                m2247G(view, i7 - i6);
                z = true;
            }
            if ((absoluteGravity & 80) == 80 && (height = ((getHeight() - m2240a.bottom) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin) + layoutParams.f4733e) < (i5 = rect.bottom)) {
                m2247G(view, height - i5);
                z = true;
            }
            if (!z) {
                m2247G(view, 0);
            }
            if ((absoluteGravity & 3) != 3 || (i3 = (m2240a.left - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin) - layoutParams.f4732d) >= (i4 = rect.left)) {
                z2 = false;
            } else {
                m2246F(view, i4 - i3);
                z2 = true;
            }
            if ((absoluteGravity & 5) != 5 || (width = ((getWidth() - m2240a.right) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin) + layoutParams.f4732d) >= (i2 = rect.right)) {
                z3 = z2;
            } else {
                m2246F(view, width - i2);
            }
            if (!z3) {
                m2246F(view, 0);
            }
            m2243z(m2240a);
        }
    }

    @Override // android.view.View
    public void setFitsSystemWindows(boolean z) {
        super.setFitsSystemWindows(z);
        m2249I();
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.f4726v = onHierarchyChangeListener;
    }

    public void setStatusBarBackground(@Nullable Drawable drawable) {
        Drawable drawable2 = this.f4725u;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable mutate = drawable != null ? drawable.mutate() : null;
            this.f4725u = mutate;
            if (mutate != null) {
                if (mutate.isStateful()) {
                    this.f4725u.setState(getDrawableState());
                }
                DrawableCompat.setLayoutDirection(this.f4725u, ViewCompat.getLayoutDirection(this));
                this.f4725u.setVisible(getVisibility() == 0, false);
                this.f4725u.setCallback(this);
            }
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    public void setStatusBarBackgroundColor(@ColorInt int i) {
        setStatusBarBackground(new ColorDrawable(i));
    }

    public void setStatusBarBackgroundResource(@DrawableRes int i) {
        setStatusBarBackground(i != 0 ? ContextCompat.getDrawable(getContext(), i) : null);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        Drawable drawable = this.f4725u;
        if (drawable == null || drawable.isVisible() == z) {
            return;
        }
        this.f4725u.setVisible(z, false);
    }

    /* renamed from: t */
    public void m2267t(View view, int i) {
        Behavior behavior;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (layoutParams.f4734f != null) {
            Rect m2240a = m2240a();
            Rect m2240a2 = m2240a();
            Rect m2240a3 = m2240a();
            m2255h(layoutParams.f4734f, m2240a);
            m2254g(view, false, m2240a2);
            int measuredWidth = view.getMeasuredWidth();
            int measuredHeight = view.getMeasuredHeight();
            m2257j(view, i, m2240a, m2240a3, layoutParams, measuredWidth, measuredHeight);
            boolean z = (m2240a3.left == m2240a2.left && m2240a3.top == m2240a2.top) ? false : true;
            m2251d(layoutParams, m2240a3, measuredWidth, measuredHeight);
            int i2 = m2240a3.left - m2240a2.left;
            int i3 = m2240a3.top - m2240a2.top;
            if (i2 != 0) {
                ViewCompat.offsetLeftAndRight(view, i2);
            }
            if (i3 != 0) {
                ViewCompat.offsetTopAndBottom(view, i3);
            }
            if (z && (behavior = layoutParams.getBehavior()) != null) {
                behavior.onDependentViewChanged(this, view, layoutParams.f4734f);
            }
            m2243z(m2240a);
            m2243z(m2240a2);
            m2243z(m2240a3);
        }
    }

    /* renamed from: u */
    public final void m2268u(int i) {
        boolean z;
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        int size = this.f4709e.size();
        Rect m2240a = m2240a();
        Rect m2240a2 = m2240a();
        Rect m2240a3 = m2240a();
        for (int i2 = 0; i2 < size; i2++) {
            View view = this.f4709e.get(i2);
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (i != 0 || view.getVisibility() != 8) {
                for (int i3 = 0; i3 < i2; i3++) {
                    if (layoutParams.f4735g == this.f4709e.get(i3)) {
                        m2267t(view, layoutDirection);
                    }
                }
                m2254g(view, true, m2240a2);
                if (layoutParams.insetEdge != 0 && !m2240a2.isEmpty()) {
                    int absoluteGravity = GravityCompat.getAbsoluteGravity(layoutParams.insetEdge, layoutDirection);
                    int i4 = absoluteGravity & 112;
                    if (i4 == 48) {
                        m2240a.top = Math.max(m2240a.top, m2240a2.bottom);
                    } else if (i4 == 80) {
                        m2240a.bottom = Math.max(m2240a.bottom, getHeight() - m2240a2.top);
                    }
                    int i5 = absoluteGravity & 7;
                    if (i5 == 3) {
                        m2240a.left = Math.max(m2240a.left, m2240a2.right);
                    } else if (i5 == 5) {
                        m2240a.right = Math.max(m2240a.right, getWidth() - m2240a2.left);
                    }
                }
                if (layoutParams.dodgeInsetEdges != 0 && view.getVisibility() == 0) {
                    m2266s(view, m2240a, layoutDirection);
                }
                if (i != 2) {
                    m2259l(view, m2240a3);
                    if (!m2240a3.equals(m2240a2)) {
                        m2271y(view, m2240a2);
                    }
                }
                for (int i6 = i2 + 1; i6 < size; i6++) {
                    View view2 = this.f4709e.get(i6);
                    LayoutParams layoutParams2 = (LayoutParams) view2.getLayoutParams();
                    Behavior behavior = layoutParams2.getBehavior();
                    if (behavior != null && behavior.layoutDependsOn(this, view2, view)) {
                        if (i == 0 && layoutParams2.m2276e()) {
                            layoutParams2.m2281j();
                        } else {
                            if (i != 2) {
                                z = behavior.onDependentViewChanged(this, view2, view);
                            } else {
                                behavior.onDependentViewRemoved(this, view2, view);
                                z = true;
                            }
                            if (i == 1) {
                                layoutParams2.m2285n(z);
                            }
                        }
                    }
                }
            }
        }
        m2243z(m2240a);
        m2243z(m2240a2);
        m2243z(m2240a3);
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f4725u;
    }

    /* renamed from: w */
    public final boolean m2269w(MotionEvent motionEvent, int i) {
        int actionMasked = motionEvent.getActionMasked();
        List<View> list = this.f4711g;
        m2261n(list);
        int size = list.size();
        MotionEvent motionEvent2 = null;
        boolean z = false;
        boolean z2 = false;
        for (int i2 = 0; i2 < size; i2++) {
            View view = list.get(i2);
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            Behavior behavior = layoutParams.getBehavior();
            if (!(z || z2) || actionMasked == 0) {
                if (!z && behavior != null) {
                    if (i == 0) {
                        z = behavior.onInterceptTouchEvent(this, view, motionEvent);
                    } else if (i == 1) {
                        z = behavior.onTouchEvent(this, view, motionEvent);
                    }
                    if (z) {
                        this.f4719o = view;
                    }
                }
                boolean m2274c = layoutParams.m2274c();
                boolean m2279h = layoutParams.m2279h(this, view);
                z2 = m2279h && !m2274c;
                if (m2279h && !z2) {
                    break;
                }
            } else if (behavior != null) {
                if (motionEvent2 == null) {
                    long uptimeMillis = SystemClock.uptimeMillis();
                    motionEvent2 = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                }
                if (i == 0) {
                    behavior.onInterceptTouchEvent(this, view, motionEvent2);
                } else if (i == 1) {
                    behavior.onTouchEvent(this, view, motionEvent2);
                }
            }
        }
        list.clear();
        return z;
    }

    /* renamed from: x */
    public final void m2270x() {
        this.f4709e.clear();
        this.f4710f.clear();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            LayoutParams m2260m = m2260m(childAt);
            m2260m.m2275d(this, childAt);
            this.f4710f.addNode(childAt);
            for (int i2 = 0; i2 < childCount; i2++) {
                if (i2 != i) {
                    View childAt2 = getChildAt(i2);
                    if (m2260m.m2273b(this, childAt, childAt2)) {
                        if (!this.f4710f.contains(childAt2)) {
                            this.f4710f.addNode(childAt2);
                        }
                        this.f4710f.addEdge(childAt2, childAt);
                    }
                }
            }
        }
        this.f4709e.addAll(this.f4710f.getSortedList());
        Collections.reverse(this.f4709e);
    }

    /* renamed from: y */
    public void m2271y(View view, Rect rect) {
        ((LayoutParams) view.getLayoutParams()).m2286o(rect);
    }

    public CoordinatorLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C0506R.attr.coordinatorLayoutStyle);
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr, int i3) {
        Behavior behavior;
        int childCount = getChildCount();
        boolean z = false;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.m2280i(i3) && (behavior = layoutParams.getBehavior()) != null) {
                    int[] iArr2 = this.f4714j;
                    iArr2[0] = 0;
                    iArr2[1] = 0;
                    behavior.onNestedPreScroll(this, childAt, view, i, i2, iArr2, i3);
                    int[] iArr3 = this.f4714j;
                    i4 = i > 0 ? Math.max(i4, iArr3[0]) : Math.min(i4, iArr3[0]);
                    int[] iArr4 = this.f4714j;
                    i5 = i2 > 0 ? Math.max(i5, iArr4[1]) : Math.min(i5, iArr4[1]);
                    z = true;
                }
            }
        }
        iArr[0] = i4;
        iArr[1] = i5;
        if (z) {
            m2268u(1);
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScroll(View view, int i, int i2, int i3, int i4, int i5) {
        onNestedScroll(view, i, i2, i3, i4, 0, this.f4715k);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScrollAccepted(View view, View view2, int i, int i2) {
        Behavior behavior;
        this.f4728x.onNestedScrollAccepted(view, view2, i, i2);
        this.f4720p = view2;
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (layoutParams.m2280i(i2) && (behavior = layoutParams.getBehavior()) != null) {
                behavior.onNestedScrollAccepted(this, childAt, view, view2, i, i2);
            }
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public boolean onStartNestedScroll(View view, View view2, int i, int i2) {
        int childCount = getChildCount();
        boolean z = false;
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                Behavior behavior = layoutParams.getBehavior();
                if (behavior != null) {
                    boolean onStartNestedScroll = behavior.onStartNestedScroll(this, childAt, view, view2, i, i2);
                    z |= onStartNestedScroll;
                    layoutParams.m2287p(i2, onStartNestedScroll);
                } else {
                    layoutParams.m2287p(i2, false);
                }
            }
        }
        return z;
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onStopNestedScroll(View view, int i) {
        this.f4728x.onStopNestedScroll(view, i);
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (layoutParams.m2280i(i)) {
                Behavior behavior = layoutParams.getBehavior();
                if (behavior != null) {
                    behavior.onStopNestedScroll(this, childAt, view, i);
                }
                layoutParams.m2282k(i);
                layoutParams.m2281j();
            }
        }
        this.f4720p = null;
    }

    public CoordinatorLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i) {
        super(context, attributeSet, i);
        TypedArray obtainStyledAttributes;
        this.f4709e = new ArrayList();
        this.f4710f = new DirectedAcyclicGraph<>();
        this.f4711g = new ArrayList();
        this.f4712h = new ArrayList();
        this.f4714j = new int[2];
        this.f4715k = new int[2];
        this.f4728x = new NestedScrollingParentHelper(this);
        if (i == 0) {
            obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0506R.styleable.CoordinatorLayout, 0, C0506R.style.Widget_Support_CoordinatorLayout);
        } else {
            obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0506R.styleable.CoordinatorLayout, i, 0);
        }
        if (i == 0) {
            saveAttributeDataForStyleable(context, C0506R.styleable.CoordinatorLayout, attributeSet, obtainStyledAttributes, 0, C0506R.style.Widget_Support_CoordinatorLayout);
        } else {
            saveAttributeDataForStyleable(context, C0506R.styleable.CoordinatorLayout, attributeSet, obtainStyledAttributes, i, 0);
        }
        int resourceId = obtainStyledAttributes.getResourceId(C0506R.styleable.CoordinatorLayout_keylines, 0);
        if (resourceId != 0) {
            Resources resources = context.getResources();
            this.f4718n = resources.getIntArray(resourceId);
            float f = resources.getDisplayMetrics().density;
            int length = this.f4718n.length;
            for (int i2 = 0; i2 < length; i2++) {
                this.f4718n[i2] = (int) (r12[i2] * f);
            }
        }
        this.f4725u = obtainStyledAttributes.getDrawable(C0506R.styleable.CoordinatorLayout_statusBarBackground);
        obtainStyledAttributes.recycle();
        m2249I();
        super.setOnHierarchyChangeListener(new ViewGroupOnHierarchyChangeListenerC0509b());
        if (ViewCompat.getImportantForAccessibility(this) == 0) {
            ViewCompat.setImportantForAccessibility(this, 1);
        }
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // androidx.core.view.NestedScrollingParent3
    public void onNestedScroll(@NonNull View view, int i, int i2, int i3, int i4, int i5, @NonNull int[] iArr) {
        Behavior behavior;
        boolean z;
        int min;
        int childCount = getChildCount();
        boolean z2 = false;
        int i6 = 0;
        int i7 = 0;
        for (int i8 = 0; i8 < childCount; i8++) {
            View childAt = getChildAt(i8);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.m2280i(i5) && (behavior = layoutParams.getBehavior()) != null) {
                    int[] iArr2 = this.f4714j;
                    iArr2[0] = 0;
                    iArr2[1] = 0;
                    behavior.onNestedScroll(this, childAt, view, i, i2, i3, i4, i5, iArr2);
                    int[] iArr3 = this.f4714j;
                    i6 = i3 > 0 ? Math.max(i6, iArr3[0]) : Math.min(i6, iArr3[0]);
                    if (i4 > 0) {
                        z = true;
                        min = Math.max(i7, this.f4714j[1]);
                    } else {
                        z = true;
                        min = Math.min(i7, this.f4714j[1]);
                    }
                    i7 = min;
                    z2 = z;
                }
            }
        }
        iArr[0] = iArr[0] + i6;
        iArr[1] = iArr[1] + i7;
        if (z2) {
            m2268u(1);
        }
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LayoutParams) {
            return new LayoutParams((LayoutParams) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new LayoutParams(layoutParams);
    }

    /* loaded from: classes3.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C0507a();
        SparseArray<Parcelable> behaviorStates;

        /* renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$SavedState$a */
        /* loaded from: classes3.dex */
        public static class C0507a implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            int readInt = parcel.readInt();
            int[] iArr = new int[readInt];
            parcel.readIntArray(iArr);
            Parcelable[] readParcelableArray = parcel.readParcelableArray(classLoader);
            this.behaviorStates = new SparseArray<>(readInt);
            for (int i = 0; i < readInt; i++) {
                this.behaviorStates.append(iArr[i], readParcelableArray[i]);
            }
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            SparseArray<Parcelable> sparseArray = this.behaviorStates;
            int size = sparseArray != null ? sparseArray.size() : 0;
            parcel.writeInt(size);
            int[] iArr = new int[size];
            Parcelable[] parcelableArr = new Parcelable[size];
            for (int i2 = 0; i2 < size; i2++) {
                iArr[i2] = this.behaviorStates.keyAt(i2);
                parcelableArr[i2] = this.behaviorStates.valueAt(i2);
            }
            parcel.writeIntArray(iArr);
            parcel.writeParcelableArray(parcelableArr, i);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    /* loaded from: classes3.dex */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: a */
        public Behavior f4729a;
        public int anchorGravity;

        /* renamed from: b */
        public boolean f4730b;

        /* renamed from: c */
        public int f4731c;

        /* renamed from: d */
        public int f4732d;
        public int dodgeInsetEdges;

        /* renamed from: e */
        public int f4733e;

        /* renamed from: f */
        public View f4734f;

        /* renamed from: g */
        public View f4735g;
        public int gravity;

        /* renamed from: h */
        public boolean f4736h;

        /* renamed from: i */
        public boolean f4737i;
        public int insetEdge;

        /* renamed from: j */
        public boolean f4738j;

        /* renamed from: k */
        public boolean f4739k;
        public int keyline;

        /* renamed from: l */
        public final Rect f4740l;

        /* renamed from: m */
        public Object f4741m;

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f4730b = false;
            this.gravity = 0;
            this.anchorGravity = 0;
            this.keyline = -1;
            this.f4731c = -1;
            this.insetEdge = 0;
            this.dodgeInsetEdges = 0;
            this.f4740l = new Rect();
        }

        /* renamed from: a */
        public boolean m2272a() {
            return this.f4734f == null && this.f4731c != -1;
        }

        /* renamed from: b */
        public boolean m2273b(CoordinatorLayout coordinatorLayout, View view, View view2) {
            Behavior behavior;
            return view2 == this.f4735g || m2288q(view2, ViewCompat.getLayoutDirection(coordinatorLayout)) || ((behavior = this.f4729a) != null && behavior.layoutDependsOn(coordinatorLayout, view, view2));
        }

        /* renamed from: c */
        public boolean m2274c() {
            if (this.f4729a == null) {
                this.f4736h = false;
            }
            return this.f4736h;
        }

        /* renamed from: d */
        public View m2275d(CoordinatorLayout coordinatorLayout, View view) {
            if (this.f4731c == -1) {
                this.f4735g = null;
                this.f4734f = null;
                return null;
            }
            if (this.f4734f == null || !m2289r(view, coordinatorLayout)) {
                m2284m(view, coordinatorLayout);
            }
            return this.f4734f;
        }

        /* renamed from: e */
        public boolean m2276e() {
            return this.f4739k;
        }

        /* renamed from: f */
        public Rect m2277f() {
            return this.f4740l;
        }

        /* renamed from: g */
        public void m2278g() {
            this.f4735g = null;
            this.f4734f = null;
        }

        @IdRes
        public int getAnchorId() {
            return this.f4731c;
        }

        @Nullable
        public Behavior getBehavior() {
            return this.f4729a;
        }

        /* renamed from: h */
        public boolean m2279h(CoordinatorLayout coordinatorLayout, View view) {
            boolean z = this.f4736h;
            if (z) {
                return true;
            }
            Behavior behavior = this.f4729a;
            boolean blocksInteractionBelow = (behavior != null ? behavior.blocksInteractionBelow(coordinatorLayout, view) : false) | z;
            this.f4736h = blocksInteractionBelow;
            return blocksInteractionBelow;
        }

        /* renamed from: i */
        public boolean m2280i(int i) {
            if (i == 0) {
                return this.f4737i;
            }
            if (i != 1) {
                return false;
            }
            return this.f4738j;
        }

        /* renamed from: j */
        public void m2281j() {
            this.f4739k = false;
        }

        /* renamed from: k */
        public void m2282k(int i) {
            m2287p(i, false);
        }

        /* renamed from: l */
        public void m2283l() {
            this.f4736h = false;
        }

        /* renamed from: m */
        public final void m2284m(View view, CoordinatorLayout coordinatorLayout) {
            View findViewById = coordinatorLayout.findViewById(this.f4731c);
            this.f4734f = findViewById;
            if (findViewById == null) {
                if (coordinatorLayout.isInEditMode()) {
                    this.f4735g = null;
                    this.f4734f = null;
                    return;
                }
                throw new IllegalStateException("Could not find CoordinatorLayout descendant view with id " + coordinatorLayout.getResources().getResourceName(this.f4731c) + " to anchor view " + view);
            }
            if (findViewById == coordinatorLayout) {
                if (!coordinatorLayout.isInEditMode()) {
                    throw new IllegalStateException("View can not be anchored to the the parent CoordinatorLayout");
                }
                this.f4735g = null;
                this.f4734f = null;
                return;
            }
            for (ViewParent parent = findViewById.getParent(); parent != coordinatorLayout && parent != null; parent = parent.getParent()) {
                if (parent == view) {
                    if (!coordinatorLayout.isInEditMode()) {
                        throw new IllegalStateException("Anchor must not be a descendant of the anchored view");
                    }
                    this.f4735g = null;
                    this.f4734f = null;
                    return;
                }
                if (parent instanceof View) {
                    findViewById = parent;
                }
            }
            this.f4735g = findViewById;
        }

        /* renamed from: n */
        public void m2285n(boolean z) {
            this.f4739k = z;
        }

        /* renamed from: o */
        public void m2286o(Rect rect) {
            this.f4740l.set(rect);
        }

        /* renamed from: p */
        public void m2287p(int i, boolean z) {
            if (i == 0) {
                this.f4737i = z;
            } else {
                if (i != 1) {
                    return;
                }
                this.f4738j = z;
            }
        }

        /* renamed from: q */
        public final boolean m2288q(View view, int i) {
            int absoluteGravity = GravityCompat.getAbsoluteGravity(((LayoutParams) view.getLayoutParams()).insetEdge, i);
            return absoluteGravity != 0 && (GravityCompat.getAbsoluteGravity(this.dodgeInsetEdges, i) & absoluteGravity) == absoluteGravity;
        }

        /* renamed from: r */
        public final boolean m2289r(View view, CoordinatorLayout coordinatorLayout) {
            if (this.f4734f.getId() != this.f4731c) {
                return false;
            }
            View view2 = this.f4734f;
            for (ViewParent parent = view2.getParent(); parent != coordinatorLayout; parent = parent.getParent()) {
                if (parent == null || parent == view) {
                    this.f4735g = null;
                    this.f4734f = null;
                    return false;
                }
                if (parent instanceof View) {
                    view2 = parent;
                }
            }
            this.f4735g = view2;
            return true;
        }

        public void setAnchorId(@IdRes int i) {
            m2278g();
            this.f4731c = i;
        }

        public void setBehavior(@Nullable Behavior behavior) {
            Behavior behavior2 = this.f4729a;
            if (behavior2 != behavior) {
                if (behavior2 != null) {
                    behavior2.onDetachedFromLayoutParams();
                }
                this.f4729a = behavior;
                this.f4741m = null;
                this.f4730b = true;
                if (behavior != null) {
                    behavior.onAttachedToLayoutParams(this);
                }
            }
        }

        public LayoutParams(@NonNull Context context, @Nullable AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f4730b = false;
            this.gravity = 0;
            this.anchorGravity = 0;
            this.keyline = -1;
            this.f4731c = -1;
            this.insetEdge = 0;
            this.dodgeInsetEdges = 0;
            this.f4740l = new Rect();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0506R.styleable.CoordinatorLayout_Layout);
            this.gravity = obtainStyledAttributes.getInteger(C0506R.styleable.CoordinatorLayout_Layout_android_layout_gravity, 0);
            this.f4731c = obtainStyledAttributes.getResourceId(C0506R.styleable.CoordinatorLayout_Layout_layout_anchor, -1);
            this.anchorGravity = obtainStyledAttributes.getInteger(C0506R.styleable.CoordinatorLayout_Layout_layout_anchorGravity, 0);
            this.keyline = obtainStyledAttributes.getInteger(C0506R.styleable.CoordinatorLayout_Layout_layout_keyline, -1);
            this.insetEdge = obtainStyledAttributes.getInt(C0506R.styleable.CoordinatorLayout_Layout_layout_insetEdge, 0);
            this.dodgeInsetEdges = obtainStyledAttributes.getInt(C0506R.styleable.CoordinatorLayout_Layout_layout_dodgeInsetEdges, 0);
            boolean hasValue = obtainStyledAttributes.hasValue(C0506R.styleable.CoordinatorLayout_Layout_layout_behavior);
            this.f4730b = hasValue;
            if (hasValue) {
                this.f4729a = CoordinatorLayout.m2242v(context, attributeSet, obtainStyledAttributes.getString(C0506R.styleable.CoordinatorLayout_Layout_layout_behavior));
            }
            obtainStyledAttributes.recycle();
            Behavior behavior = this.f4729a;
            if (behavior != null) {
                behavior.onAttachedToLayoutParams(this);
            }
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.f4730b = false;
            this.gravity = 0;
            this.anchorGravity = 0;
            this.keyline = -1;
            this.f4731c = -1;
            this.insetEdge = 0;
            this.dodgeInsetEdges = 0;
            this.f4740l = new Rect();
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f4730b = false;
            this.gravity = 0;
            this.anchorGravity = 0;
            this.keyline = -1;
            this.f4731c = -1;
            this.insetEdge = 0;
            this.dodgeInsetEdges = 0;
            this.f4740l = new Rect();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f4730b = false;
            this.gravity = 0;
            this.anchorGravity = 0;
            this.keyline = -1;
            this.f4731c = -1;
            this.insetEdge = 0;
            this.dodgeInsetEdges = 0;
            this.f4740l = new Rect();
        }
    }
}
