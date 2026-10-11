package androidx.viewpager.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.Scroller;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.core.content.ContextCompat;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.view.AbsSavedState;
import java.lang.annotation.ElementType;
import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* loaded from: classes3.dex */
public class ViewPager extends ViewGroup {
    public static final int SCROLL_STATE_DRAGGING = 1;
    public static final int SCROLL_STATE_IDLE = 0;
    public static final int SCROLL_STATE_SETTLING = 2;

    /* renamed from: X0 */
    public static final String f11020X0 = "ViewPager";

    /* renamed from: Y0 */
    public static final boolean f11021Y0 = false;

    /* renamed from: Z0 */
    public static final boolean f11022Z0 = false;

    /* renamed from: a1 */
    public static final int f11023a1 = 1;

    /* renamed from: b1 */
    public static final int f11024b1 = 600;

    /* renamed from: c1 */
    public static final int f11025c1 = 25;

    /* renamed from: d1 */
    public static final int f11026d1 = 16;

    /* renamed from: e1 */
    public static final int f11027e1 = 400;

    /* renamed from: i1 */
    public static final int f11031i1 = -1;

    /* renamed from: j1 */
    public static final int f11032j1 = 2;

    /* renamed from: k1 */
    public static final int f11033k1 = 0;

    /* renamed from: l1 */
    public static final int f11034l1 = 1;

    /* renamed from: m1 */
    public static final int f11035m1 = 2;

    /* renamed from: A0 */
    public VelocityTracker f11037A0;

    /* renamed from: B0 */
    public int f11038B0;

    /* renamed from: C0 */
    public int f11039C0;

    /* renamed from: D0 */
    public int f11040D0;

    /* renamed from: E0 */
    public int f11041E0;

    /* renamed from: F0 */
    public boolean f11042F0;

    /* renamed from: G0 */
    public long f11043G0;

    /* renamed from: H0 */
    public EdgeEffect f11044H0;

    /* renamed from: I0 */
    public EdgeEffect f11045I0;

    /* renamed from: J */
    public boolean f11046J;

    /* renamed from: J0 */
    public boolean f11047J0;

    /* renamed from: K0 */
    public boolean f11048K0;

    /* renamed from: L0 */
    public boolean f11049L0;

    /* renamed from: M0 */
    public int f11050M0;

    /* renamed from: N0 */
    public List<OnPageChangeListener> f11051N0;

    /* renamed from: O */
    public int f11052O;

    /* renamed from: O0 */
    public OnPageChangeListener f11053O0;

    /* renamed from: P0 */
    public OnPageChangeListener f11054P0;

    /* renamed from: Q */
    public boolean f11055Q;

    /* renamed from: Q0 */
    public List<OnAdapterChangeListener> f11056Q0;

    /* renamed from: R0 */
    public PageTransformer f11057R0;

    /* renamed from: S0 */
    public int f11058S0;

    /* renamed from: T0 */
    public int f11059T0;

    /* renamed from: U0 */
    public ArrayList<View> f11060U0;

    /* renamed from: V0 */
    public final Runnable f11061V0;

    /* renamed from: W0 */
    public int f11062W0;

    /* renamed from: e */
    public int f11063e;

    /* renamed from: f */
    public final ArrayList<C1548e> f11064f;

    /* renamed from: g */
    public final C1548e f11065g;

    /* renamed from: h */
    public final Rect f11066h;

    /* renamed from: i */
    public PagerAdapter f11067i;

    /* renamed from: j */
    public int f11068j;

    /* renamed from: k */
    public int f11069k;

    /* renamed from: k0 */
    public boolean f11070k0;

    /* renamed from: l */
    public Parcelable f11071l;

    /* renamed from: m */
    public ClassLoader f11072m;

    /* renamed from: n */
    public Scroller f11073n;

    /* renamed from: o */
    public boolean f11074o;

    /* renamed from: p */
    public C1550g f11075p;

    /* renamed from: q */
    public int f11076q;

    /* renamed from: q0 */
    public int f11077q0;

    /* renamed from: r */
    public Drawable f11078r;

    /* renamed from: s */
    public int f11079s;

    /* renamed from: t */
    public int f11080t;

    /* renamed from: t0 */
    public int f11081t0;

    /* renamed from: u */
    public float f11082u;

    /* renamed from: u0 */
    public int f11083u0;

    /* renamed from: v */
    public float f11084v;

    /* renamed from: v0 */
    public float f11085v0;

    /* renamed from: w */
    public int f11086w;

    /* renamed from: w0 */
    public float f11087w0;

    /* renamed from: x */
    public int f11088x;

    /* renamed from: x0 */
    public float f11089x0;

    /* renamed from: y */
    public boolean f11090y;

    /* renamed from: y0 */
    public float f11091y0;

    /* renamed from: z */
    public boolean f11092z;

    /* renamed from: z0 */
    public int f11093z0;

    /* renamed from: f1 */
    public static final int[] f11028f1 = {R.attr.layout_gravity};

    /* renamed from: g1 */
    public static final Comparator<C1548e> f11029g1 = new C1544a();

    /* renamed from: h1 */
    public static final Interpolator f11030h1 = new InterpolatorC1545b();

    /* renamed from: n1 */
    public static final C1551h f11036n1 = new C1551h();

    @Target({ElementType.TYPE})
    @Inherited
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes3.dex */
    public @interface DecorView {
    }

    /* loaded from: classes3.dex */
    public interface OnAdapterChangeListener {
        void onAdapterChanged(@NonNull ViewPager viewPager, @Nullable PagerAdapter pagerAdapter, @Nullable PagerAdapter pagerAdapter2);
    }

    /* loaded from: classes3.dex */
    public interface OnPageChangeListener {
        void onPageScrollStateChanged(int i);

        void onPageScrolled(int i, float f, @Px int i2);

        void onPageSelected(int i);
    }

    /* loaded from: classes3.dex */
    public interface PageTransformer {
        void transformPage(@NonNull View view, float f);
    }

    /* loaded from: classes3.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C1543a();
        Parcelable adapterState;
        ClassLoader loader;
        int position;

        /* renamed from: androidx.viewpager.widget.ViewPager$SavedState$a */
        /* loaded from: classes3.dex */
        public static class C1543a implements Parcelable.ClassLoaderCreator<SavedState> {
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

        public SavedState(@NonNull Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "FragmentPager.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " position=" + this.position + "}";
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.position);
            parcel.writeParcelable(this.adapterState, i);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            classLoader = classLoader == null ? getClass().getClassLoader() : classLoader;
            this.position = parcel.readInt();
            this.adapterState = parcel.readParcelable(classLoader);
            this.loader = classLoader;
        }
    }

    /* loaded from: classes3.dex */
    public static class SimpleOnPageChangeListener implements OnPageChangeListener {
        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i, float f, int i2) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
        }
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$a */
    /* loaded from: classes3.dex */
    public static class C1544a implements Comparator<C1548e> {
        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(C1548e c1548e, C1548e c1548e2) {
            return c1548e.f11102b - c1548e2.f11102b;
        }
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$b */
    /* loaded from: classes3.dex */
    public static class InterpolatorC1545b implements Interpolator {
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$c */
    /* loaded from: classes3.dex */
    public class RunnableC1546c implements Runnable {
        public RunnableC1546c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewPager.this.setScrollState(0);
            ViewPager.this.m6800y();
        }
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$d */
    /* loaded from: classes3.dex */
    public class C1547d implements OnApplyWindowInsetsListener {

        /* renamed from: a */
        public final Rect f11099a = new Rect();

        public C1547d() {
        }

        @Override // androidx.core.view.OnApplyWindowInsetsListener
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            WindowInsetsCompat onApplyWindowInsets = ViewCompat.onApplyWindowInsets(view, windowInsetsCompat);
            if (onApplyWindowInsets.isConsumed()) {
                return onApplyWindowInsets;
            }
            Rect rect = this.f11099a;
            rect.left = onApplyWindowInsets.getSystemWindowInsetLeft();
            rect.top = onApplyWindowInsets.getSystemWindowInsetTop();
            rect.right = onApplyWindowInsets.getSystemWindowInsetRight();
            rect.bottom = onApplyWindowInsets.getSystemWindowInsetBottom();
            int childCount = ViewPager.this.getChildCount();
            for (int i = 0; i < childCount; i++) {
                WindowInsetsCompat dispatchApplyWindowInsets = ViewCompat.dispatchApplyWindowInsets(ViewPager.this.getChildAt(i), onApplyWindowInsets);
                rect.left = Math.min(dispatchApplyWindowInsets.getSystemWindowInsetLeft(), rect.left);
                rect.top = Math.min(dispatchApplyWindowInsets.getSystemWindowInsetTop(), rect.top);
                rect.right = Math.min(dispatchApplyWindowInsets.getSystemWindowInsetRight(), rect.right);
                rect.bottom = Math.min(dispatchApplyWindowInsets.getSystemWindowInsetBottom(), rect.bottom);
            }
            return onApplyWindowInsets.replaceSystemWindowInsets(rect.left, rect.top, rect.right, rect.bottom);
        }
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$e */
    /* loaded from: classes3.dex */
    public static class C1548e {

        /* renamed from: a */
        public Object f11101a;

        /* renamed from: b */
        public int f11102b;

        /* renamed from: c */
        public boolean f11103c;

        /* renamed from: d */
        public float f11104d;

        /* renamed from: e */
        public float f11105e;
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$f */
    /* loaded from: classes3.dex */
    public class C1549f extends AccessibilityDelegateCompat {
        public C1549f() {
        }

        /* renamed from: e */
        public final boolean m6806e() {
            PagerAdapter pagerAdapter = ViewPager.this.f11067i;
            return pagerAdapter != null && pagerAdapter.getCount() > 1;
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            PagerAdapter pagerAdapter;
            super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            accessibilityEvent.setClassName(ViewPager.class.getName());
            accessibilityEvent.setScrollable(m6806e());
            if (accessibilityEvent.getEventType() != 4096 || (pagerAdapter = ViewPager.this.f11067i) == null) {
                return;
            }
            accessibilityEvent.setItemCount(pagerAdapter.getCount());
            accessibilityEvent.setFromIndex(ViewPager.this.f11068j);
            accessibilityEvent.setToIndex(ViewPager.this.f11068j);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setClassName(ViewPager.class.getName());
            accessibilityNodeInfoCompat.setScrollable(m6806e());
            if (ViewPager.this.canScrollHorizontally(1)) {
                accessibilityNodeInfoCompat.addAction(4096);
            }
            if (ViewPager.this.canScrollHorizontally(-1)) {
                accessibilityNodeInfoCompat.addAction(8192);
            }
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
            if (super.performAccessibilityAction(view, i, bundle)) {
                return true;
            }
            if (i == 4096) {
                if (!ViewPager.this.canScrollHorizontally(1)) {
                    return false;
                }
                ViewPager viewPager = ViewPager.this;
                viewPager.setCurrentItem(viewPager.f11068j + 1);
                return true;
            }
            if (i != 8192 || !ViewPager.this.canScrollHorizontally(-1)) {
                return false;
            }
            ViewPager viewPager2 = ViewPager.this;
            viewPager2.setCurrentItem(viewPager2.f11068j - 1);
            return true;
        }
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$g */
    /* loaded from: classes3.dex */
    public class C1550g extends DataSetObserver {
        public C1550g() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            ViewPager.this.m6780d();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            ViewPager.this.m6780d();
        }
    }

    /* renamed from: androidx.viewpager.widget.ViewPager$h */
    /* loaded from: classes3.dex */
    public static class C1551h implements Comparator<View> {
        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(View view, View view2) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            LayoutParams layoutParams2 = (LayoutParams) view2.getLayoutParams();
            boolean z = layoutParams.isDecor;
            return z != layoutParams2.isDecor ? z ? 1 : -1 : layoutParams.f11096c - layoutParams2.f11096c;
        }
    }

    public ViewPager(@NonNull Context context) {
        super(context);
        this.f11064f = new ArrayList<>();
        this.f11065g = new C1548e();
        this.f11066h = new Rect();
        this.f11069k = -1;
        this.f11071l = null;
        this.f11072m = null;
        this.f11082u = -3.4028235E38f;
        this.f11084v = Float.MAX_VALUE;
        this.f11052O = 1;
        this.f11093z0 = -1;
        this.f11047J0 = true;
        this.f11048K0 = false;
        this.f11061V0 = new RunnableC1546c();
        this.f11062W0 = 0;
        m6793q();
    }

    private int getClientWidth() {
        return (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
    }

    /* renamed from: r */
    public static boolean m6765r(@NonNull View view) {
        return view.getClass().getAnnotation(DecorView.class) != null;
    }

    private void setScrollingCacheEnabled(boolean z) {
        if (this.f11092z != z) {
            this.f11092z = z;
        }
    }

    /* renamed from: A */
    public final void m6766A(int i, int i2, int i3, int i4) {
        if (i2 > 0 && !this.f11064f.isEmpty()) {
            if (!this.f11073n.isFinished()) {
                this.f11073n.setFinalX(getCurrentItem() * getClientWidth());
                return;
            } else {
                scrollTo((int) ((getScrollX() / (((i2 - getPaddingLeft()) - getPaddingRight()) + i4)) * (((i - getPaddingLeft()) - getPaddingRight()) + i3)), getScrollY());
                return;
            }
        }
        C1548e m6792p = m6792p(this.f11068j);
        int min = (int) ((m6792p != null ? Math.min(m6792p.f11105e, this.f11084v) : 0.0f) * ((i - getPaddingLeft()) - getPaddingRight()));
        if (min != getScrollX()) {
            m6779c(false);
            scrollTo(min, getScrollY());
        }
    }

    /* renamed from: B */
    public final void m6767B() {
        int i = 0;
        while (i < getChildCount()) {
            if (!((LayoutParams) getChildAt(i).getLayoutParams()).isDecor) {
                removeViewAt(i);
                i--;
            }
            i++;
        }
    }

    /* renamed from: C */
    public final void m6768C(boolean z) {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(z);
        }
    }

    /* renamed from: D */
    public final boolean m6769D() {
        this.f11093z0 = -1;
        m6787k();
        this.f11044H0.onRelease();
        this.f11045I0.onRelease();
        return this.f11044H0.isFinished() || this.f11045I0.isFinished();
    }

    /* renamed from: E */
    public final void m6770E(int i, boolean z, int i2, boolean z2) {
        C1548e m6792p = m6792p(i);
        int clientWidth = m6792p != null ? (int) (getClientWidth() * Math.max(this.f11082u, Math.min(m6792p.f11105e, this.f11084v))) : 0;
        if (z) {
            m6775J(clientWidth, 0, i2);
            if (z2) {
                m6783g(i);
                return;
            }
            return;
        }
        if (z2) {
            m6783g(i);
        }
        m6779c(false);
        scrollTo(clientWidth, 0);
        m6798w(clientWidth);
    }

    /* renamed from: F */
    public void m6771F(int i, boolean z, boolean z2) {
        m6772G(i, z, z2, 0);
    }

    /* renamed from: G */
    public void m6772G(int i, boolean z, boolean z2, int i2) {
        PagerAdapter pagerAdapter = this.f11067i;
        if (pagerAdapter == null || pagerAdapter.getCount() <= 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        if (!z2 && this.f11068j == i && this.f11064f.size() != 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        if (i < 0) {
            i = 0;
        } else if (i >= this.f11067i.getCount()) {
            i = this.f11067i.getCount() - 1;
        }
        int i3 = this.f11052O;
        int i4 = this.f11068j;
        if (i > i4 + i3 || i < i4 - i3) {
            for (int i5 = 0; i5 < this.f11064f.size(); i5++) {
                this.f11064f.get(i5).f11103c = true;
            }
        }
        boolean z3 = this.f11068j != i;
        if (!this.f11047J0) {
            m6801z(i);
            m6770E(i, z, i2, z3);
        } else {
            this.f11068j = i;
            if (z3) {
                m6783g(i);
            }
            requestLayout();
        }
    }

    /* renamed from: H */
    public OnPageChangeListener m6773H(OnPageChangeListener onPageChangeListener) {
        OnPageChangeListener onPageChangeListener2 = this.f11054P0;
        this.f11054P0 = onPageChangeListener;
        return onPageChangeListener2;
    }

    /* renamed from: I */
    public void m6774I(int i, int i2) {
        m6775J(i, i2, 0);
    }

    /* renamed from: J */
    public void m6775J(int i, int i2, int i3) {
        int scrollX;
        if (getChildCount() == 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        Scroller scroller = this.f11073n;
        if ((scroller == null || scroller.isFinished()) ? false : true) {
            scrollX = this.f11074o ? this.f11073n.getCurrX() : this.f11073n.getStartX();
            this.f11073n.abortAnimation();
            setScrollingCacheEnabled(false);
        } else {
            scrollX = getScrollX();
        }
        int i4 = scrollX;
        int scrollY = getScrollY();
        int i5 = i - i4;
        int i6 = i2 - scrollY;
        if (i5 == 0 && i6 == 0) {
            m6779c(false);
            m6800y();
            setScrollState(0);
            return;
        }
        setScrollingCacheEnabled(true);
        setScrollState(2);
        int clientWidth = getClientWidth();
        int i7 = clientWidth / 2;
        float f = clientWidth;
        float f2 = i7;
        float m6785i = f2 + (m6785i(Math.min(1.0f, (Math.abs(i5) * 1.0f) / f)) * f2);
        int abs = Math.abs(i3);
        int min = Math.min(abs > 0 ? Math.round(Math.abs(m6785i / abs) * 1000.0f) * 4 : (int) (((Math.abs(i5) / ((f * this.f11067i.getPageWidth(this.f11068j)) + this.f11076q)) + 1.0f) * 100.0f), 600);
        this.f11074o = false;
        this.f11073n.startScroll(i4, scrollY, i5, i6, min);
        ViewCompat.postInvalidateOnAnimation(this);
    }

    /* renamed from: K */
    public final void m6776K() {
        if (this.f11059T0 != 0) {
            ArrayList<View> arrayList = this.f11060U0;
            if (arrayList == null) {
                this.f11060U0 = new ArrayList<>();
            } else {
                arrayList.clear();
            }
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                this.f11060U0.add(getChildAt(i));
            }
            Collections.sort(this.f11060U0, f11036n1);
        }
    }

    /* renamed from: a */
    public C1548e m6777a(int i, int i2) {
        C1548e c1548e = new C1548e();
        c1548e.f11102b = i;
        c1548e.f11101a = this.f11067i.instantiateItem((ViewGroup) this, i);
        c1548e.f11104d = this.f11067i.getPageWidth(i);
        if (i2 < 0 || i2 >= this.f11064f.size()) {
            this.f11064f.add(c1548e);
        } else {
            this.f11064f.add(i2, c1548e);
        }
        return c1548e;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        C1548e m6790n;
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i3 = 0; i3 < getChildCount(); i3++) {
                View childAt = getChildAt(i3);
                if (childAt.getVisibility() == 0 && (m6790n = m6790n(childAt)) != null && m6790n.f11102b == this.f11068j) {
                    childAt.addFocusables(arrayList, i, i2);
                }
            }
        }
        if ((descendantFocusability != 262144 || size == arrayList.size()) && isFocusable()) {
            if ((i2 & 1) == 1 && isInTouchMode() && !isFocusableInTouchMode()) {
                return;
            }
            arrayList.add(this);
        }
    }

    public void addOnAdapterChangeListener(@NonNull OnAdapterChangeListener onAdapterChangeListener) {
        if (this.f11056Q0 == null) {
            this.f11056Q0 = new ArrayList();
        }
        this.f11056Q0.add(onAdapterChangeListener);
    }

    public void addOnPageChangeListener(@NonNull OnPageChangeListener onPageChangeListener) {
        if (this.f11051N0 == null) {
            this.f11051N0 = new ArrayList();
        }
        this.f11051N0.add(onPageChangeListener);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addTouchables(ArrayList<View> arrayList) {
        C1548e m6790n;
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0 && (m6790n = m6790n(childAt)) != null && m6790n.f11102b == this.f11068j) {
                childAt.addTouchables(arrayList);
            }
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (!checkLayoutParams(layoutParams)) {
            layoutParams = generateLayoutParams(layoutParams);
        }
        LayoutParams layoutParams2 = (LayoutParams) layoutParams;
        boolean m6765r = layoutParams2.isDecor | m6765r(view);
        layoutParams2.isDecor = m6765r;
        if (!this.f11090y) {
            super.addView(view, i, layoutParams);
        } else {
            if (m6765r) {
                throw new IllegalStateException("Cannot add pager decor view during layout");
            }
            layoutParams2.f11095b = true;
            addViewInLayout(view, i, layoutParams);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x00cf  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean arrowScroll(int r7) {
        /*
            r6 = this;
            android.view.View r0 = r6.findFocus()
            r1 = 1
            r2 = 0
            r3 = 0
            if (r0 != r6) goto Lb
        L9:
            r0 = r3
            goto L69
        Lb:
            if (r0 == 0) goto L69
            android.view.ViewParent r4 = r0.getParent()
        L11:
            boolean r5 = r4 instanceof android.view.ViewGroup
            if (r5 == 0) goto L1e
            if (r4 != r6) goto L19
            r4 = r1
            goto L1f
        L19:
            android.view.ViewParent r4 = r4.getParent()
            goto L11
        L1e:
            r4 = r2
        L1f:
            if (r4 != 0) goto L69
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.Class r5 = r0.getClass()
            java.lang.String r5 = r5.getSimpleName()
            r4.append(r5)
            android.view.ViewParent r0 = r0.getParent()
        L35:
            boolean r5 = r0 instanceof android.view.ViewGroup
            if (r5 == 0) goto L4e
            java.lang.String r5 = " => "
            r4.append(r5)
            java.lang.Class r5 = r0.getClass()
            java.lang.String r5 = r5.getSimpleName()
            r4.append(r5)
            android.view.ViewParent r0 = r0.getParent()
            goto L35
        L4e:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r5 = "arrowScroll tried to find focus based on non-child current focused view "
            r0.append(r5)
            java.lang.String r4 = r4.toString()
            r0.append(r4)
            java.lang.String r0 = r0.toString()
            java.lang.String r4 = "ViewPager"
            android.util.Log.e(r4, r0)
            goto L9
        L69:
            android.view.FocusFinder r3 = android.view.FocusFinder.getInstance()
            android.view.View r3 = r3.findNextFocus(r6, r0, r7)
            r4 = 66
            r5 = 17
            if (r3 == 0) goto Lba
            if (r3 == r0) goto Lba
            if (r7 != r5) goto L9a
            android.graphics.Rect r1 = r6.f11066h
            android.graphics.Rect r1 = r6.m6788l(r1, r3)
            int r1 = r1.left
            android.graphics.Rect r2 = r6.f11066h
            android.graphics.Rect r2 = r6.m6788l(r2, r0)
            int r2 = r2.left
            if (r0 == 0) goto L94
            if (r1 < r2) goto L94
            boolean r0 = r6.m6796u()
            goto L98
        L94:
            boolean r0 = r3.requestFocus()
        L98:
            r2 = r0
            goto Lcd
        L9a:
            if (r7 != r4) goto Lcd
            android.graphics.Rect r1 = r6.f11066h
            android.graphics.Rect r1 = r6.m6788l(r1, r3)
            int r1 = r1.left
            android.graphics.Rect r2 = r6.f11066h
            android.graphics.Rect r2 = r6.m6788l(r2, r0)
            int r2 = r2.left
            if (r0 == 0) goto Lb5
            if (r1 > r2) goto Lb5
            boolean r0 = r6.m6797v()
            goto L98
        Lb5:
            boolean r0 = r3.requestFocus()
            goto L98
        Lba:
            if (r7 == r5) goto Lc9
            if (r7 != r1) goto Lbf
            goto Lc9
        Lbf:
            if (r7 == r4) goto Lc4
            r0 = 2
            if (r7 != r0) goto Lcd
        Lc4:
            boolean r2 = r6.m6797v()
            goto Lcd
        Lc9:
            boolean r2 = r6.m6796u()
        Lcd:
            if (r2 == 0) goto Ld6
            int r7 = android.view.SoundEffectConstants.getContantForFocusDirection(r7)
            r6.playSoundEffect(r7)
        Ld6:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.arrowScroll(int):boolean");
    }

    /* renamed from: b */
    public final void m6778b(C1548e c1548e, int i, C1548e c1548e2) {
        int i2;
        int i3;
        C1548e c1548e3;
        C1548e c1548e4;
        int count = this.f11067i.getCount();
        int clientWidth = getClientWidth();
        float f = clientWidth > 0 ? this.f11076q / clientWidth : 0.0f;
        if (c1548e2 != null) {
            int i4 = c1548e2.f11102b;
            int i5 = c1548e.f11102b;
            if (i4 < i5) {
                float f2 = c1548e2.f11105e + c1548e2.f11104d + f;
                int i6 = i4 + 1;
                int i7 = 0;
                while (i6 <= c1548e.f11102b && i7 < this.f11064f.size()) {
                    C1548e c1548e5 = this.f11064f.get(i7);
                    while (true) {
                        c1548e4 = c1548e5;
                        if (i6 <= c1548e4.f11102b || i7 >= this.f11064f.size() - 1) {
                            break;
                        }
                        i7++;
                        c1548e5 = this.f11064f.get(i7);
                    }
                    while (i6 < c1548e4.f11102b) {
                        f2 += this.f11067i.getPageWidth(i6) + f;
                        i6++;
                    }
                    c1548e4.f11105e = f2;
                    f2 += c1548e4.f11104d + f;
                    i6++;
                }
            } else if (i4 > i5) {
                int size = this.f11064f.size() - 1;
                float f3 = c1548e2.f11105e;
                while (true) {
                    i4--;
                    if (i4 < c1548e.f11102b || size < 0) {
                        break;
                    }
                    C1548e c1548e6 = this.f11064f.get(size);
                    while (true) {
                        c1548e3 = c1548e6;
                        if (i4 >= c1548e3.f11102b || size <= 0) {
                            break;
                        }
                        size--;
                        c1548e6 = this.f11064f.get(size);
                    }
                    while (i4 > c1548e3.f11102b) {
                        f3 -= this.f11067i.getPageWidth(i4) + f;
                        i4--;
                    }
                    f3 -= c1548e3.f11104d + f;
                    c1548e3.f11105e = f3;
                }
            }
        }
        int size2 = this.f11064f.size();
        float f4 = c1548e.f11105e;
        int i8 = c1548e.f11102b;
        int i9 = i8 - 1;
        this.f11082u = i8 == 0 ? f4 : -3.4028235E38f;
        int i10 = count - 1;
        this.f11084v = i8 == i10 ? (c1548e.f11104d + f4) - 1.0f : Float.MAX_VALUE;
        int i11 = i - 1;
        while (i11 >= 0) {
            C1548e c1548e7 = this.f11064f.get(i11);
            while (true) {
                i3 = c1548e7.f11102b;
                if (i9 <= i3) {
                    break;
                }
                f4 -= this.f11067i.getPageWidth(i9) + f;
                i9--;
            }
            f4 -= c1548e7.f11104d + f;
            c1548e7.f11105e = f4;
            if (i3 == 0) {
                this.f11082u = f4;
            }
            i11--;
            i9--;
        }
        float f5 = c1548e.f11105e + c1548e.f11104d + f;
        int i12 = c1548e.f11102b + 1;
        int i13 = i + 1;
        while (i13 < size2) {
            C1548e c1548e8 = this.f11064f.get(i13);
            while (true) {
                i2 = c1548e8.f11102b;
                if (i12 >= i2) {
                    break;
                }
                f5 += this.f11067i.getPageWidth(i12) + f;
                i12++;
            }
            if (i2 == i10) {
                this.f11084v = (c1548e8.f11104d + f5) - 1.0f;
            }
            c1548e8.f11105e = f5;
            f5 += c1548e8.f11104d + f;
            i13++;
            i12++;
        }
        this.f11048K0 = false;
    }

    public boolean beginFakeDrag() {
        if (this.f11055Q) {
            return false;
        }
        this.f11042F0 = true;
        setScrollState(1);
        this.f11085v0 = 0.0f;
        this.f11089x0 = 0.0f;
        VelocityTracker velocityTracker = this.f11037A0;
        if (velocityTracker == null) {
            this.f11037A0 = VelocityTracker.obtain();
        } else {
            velocityTracker.clear();
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 0, 0.0f, 0.0f, 0);
        this.f11037A0.addMovement(obtain);
        obtain.recycle();
        this.f11043G0 = uptimeMillis;
        return true;
    }

    /* renamed from: c */
    public final void m6779c(boolean z) {
        boolean z2 = this.f11062W0 == 2;
        if (z2) {
            setScrollingCacheEnabled(false);
            if (!this.f11073n.isFinished()) {
                this.f11073n.abortAnimation();
                int scrollX = getScrollX();
                int scrollY = getScrollY();
                int currX = this.f11073n.getCurrX();
                int currY = this.f11073n.getCurrY();
                if (scrollX != currX || scrollY != currY) {
                    scrollTo(currX, currY);
                    if (currX != scrollX) {
                        m6798w(currX);
                    }
                }
            }
        }
        this.f11046J = false;
        for (int i = 0; i < this.f11064f.size(); i++) {
            C1548e c1548e = this.f11064f.get(i);
            if (c1548e.f11103c) {
                c1548e.f11103c = false;
                z2 = true;
            }
        }
        if (z2) {
            if (z) {
                ViewCompat.postOnAnimation(this, this.f11061V0);
            } else {
                this.f11061V0.run();
            }
        }
    }

    public boolean canScroll(View view, boolean z, int i, int i2, int i3) {
        int i4;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int i5 = i2 + scrollX;
                if (i5 >= childAt.getLeft() && i5 < childAt.getRight() && (i4 = i3 + scrollY) >= childAt.getTop() && i4 < childAt.getBottom() && canScroll(childAt, true, i, i5 - childAt.getLeft(), i4 - childAt.getTop())) {
                    return true;
                }
            }
        }
        return z && view.canScrollHorizontally(-i);
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int i) {
        if (this.f11067i == null) {
            return false;
        }
        int clientWidth = getClientWidth();
        int scrollX = getScrollX();
        return i < 0 ? scrollX > ((int) (((float) clientWidth) * this.f11082u)) : i > 0 && scrollX < ((int) (((float) clientWidth) * this.f11084v));
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    public void clearOnPageChangeListeners() {
        List<OnPageChangeListener> list = this.f11051N0;
        if (list != null) {
            list.clear();
        }
    }

    @Override // android.view.View
    public void computeScroll() {
        this.f11074o = true;
        if (this.f11073n.isFinished() || !this.f11073n.computeScrollOffset()) {
            m6779c(true);
            return;
        }
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int currX = this.f11073n.getCurrX();
        int currY = this.f11073n.getCurrY();
        if (scrollX != currX || scrollY != currY) {
            scrollTo(currX, currY);
            if (!m6798w(currX)) {
                this.f11073n.abortAnimation();
                scrollTo(0, currY);
            }
        }
        ViewCompat.postInvalidateOnAnimation(this);
    }

    /* renamed from: d */
    public void m6780d() {
        int count = this.f11067i.getCount();
        this.f11063e = count;
        boolean z = this.f11064f.size() < (this.f11052O * 2) + 1 && this.f11064f.size() < count;
        int i = this.f11068j;
        int i2 = 0;
        boolean z2 = false;
        while (i2 < this.f11064f.size()) {
            C1548e c1548e = this.f11064f.get(i2);
            int itemPosition = this.f11067i.getItemPosition(c1548e.f11101a);
            if (itemPosition != -1) {
                if (itemPosition == -2) {
                    this.f11064f.remove(i2);
                    i2--;
                    if (!z2) {
                        this.f11067i.startUpdate((ViewGroup) this);
                        z2 = true;
                    }
                    this.f11067i.destroyItem((ViewGroup) this, c1548e.f11102b, c1548e.f11101a);
                    int i3 = this.f11068j;
                    if (i3 == c1548e.f11102b) {
                        i = Math.max(0, Math.min(i3, count - 1));
                    }
                } else {
                    int i4 = c1548e.f11102b;
                    if (i4 != itemPosition) {
                        if (i4 == this.f11068j) {
                            i = itemPosition;
                        }
                        c1548e.f11102b = itemPosition;
                    }
                }
                z = true;
            }
            i2++;
        }
        if (z2) {
            this.f11067i.finishUpdate((ViewGroup) this);
        }
        Collections.sort(this.f11064f, f11029g1);
        if (z) {
            int childCount = getChildCount();
            for (int i5 = 0; i5 < childCount; i5++) {
                LayoutParams layoutParams = (LayoutParams) getChildAt(i5).getLayoutParams();
                if (!layoutParams.isDecor) {
                    layoutParams.f11094a = 0.0f;
                }
            }
            m6771F(i, false, true);
            requestLayout();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || executeKeyEvent(keyEvent);
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        C1548e m6790n;
        if (accessibilityEvent.getEventType() == 4096) {
            return super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0 && (m6790n = m6790n(childAt)) != null && m6790n.f11102b == this.f11068j && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        PagerAdapter pagerAdapter;
        super.draw(canvas);
        int overScrollMode = getOverScrollMode();
        boolean z = false;
        if (overScrollMode == 0 || (overScrollMode == 1 && (pagerAdapter = this.f11067i) != null && pagerAdapter.getCount() > 1)) {
            if (!this.f11044H0.isFinished()) {
                int save = canvas.save();
                int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
                int width = getWidth();
                canvas.rotate(270.0f);
                canvas.translate((-height) + getPaddingTop(), this.f11082u * width);
                this.f11044H0.setSize(height, width);
                z = false | this.f11044H0.draw(canvas);
                canvas.restoreToCount(save);
            }
            if (!this.f11045I0.isFinished()) {
                int save2 = canvas.save();
                int width2 = getWidth();
                int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
                canvas.rotate(90.0f);
                canvas.translate(-getPaddingTop(), (-(this.f11084v + 1.0f)) * width2);
                this.f11045I0.setSize(height2, width2);
                z |= this.f11045I0.draw(canvas);
                canvas.restoreToCount(save2);
            }
        } else {
            this.f11044H0.finish();
            this.f11045I0.finish();
        }
        if (z) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f11078r;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        drawable.setState(getDrawableState());
    }

    /* renamed from: e */
    public final int m6781e(int i, float f, int i2, int i3) {
        if (Math.abs(i3) <= this.f11040D0 || Math.abs(i2) <= this.f11038B0) {
            i += (int) (f + (i >= this.f11068j ? 0.4f : 0.6f));
        } else if (i2 <= 0) {
            i++;
        }
        if (this.f11064f.size() <= 0) {
            return i;
        }
        return Math.max(this.f11064f.get(0).f11102b, Math.min(i, this.f11064f.get(r1.size() - 1).f11102b));
    }

    public void endFakeDrag() {
        if (!this.f11042F0) {
            throw new IllegalStateException("No fake drag in progress. Call beginFakeDrag first.");
        }
        if (this.f11067i != null) {
            VelocityTracker velocityTracker = this.f11037A0;
            velocityTracker.computeCurrentVelocity(1000, this.f11039C0);
            int xVelocity = (int) velocityTracker.getXVelocity(this.f11093z0);
            this.f11046J = true;
            int clientWidth = getClientWidth();
            int scrollX = getScrollX();
            C1548e m6791o = m6791o();
            m6772G(m6781e(m6791o.f11102b, ((scrollX / clientWidth) - m6791o.f11105e) / m6791o.f11104d, xVelocity, (int) (this.f11085v0 - this.f11089x0)), true, true, xVelocity);
        }
        m6787k();
        this.f11042F0 = false;
    }

    public boolean executeKeyEvent(@NonNull KeyEvent keyEvent) {
        if (keyEvent.getAction() == 0) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode == 21) {
                return keyEvent.hasModifiers(2) ? m6796u() : arrowScroll(17);
            }
            if (keyCode == 22) {
                return keyEvent.hasModifiers(2) ? m6797v() : arrowScroll(66);
            }
            if (keyCode == 61) {
                if (keyEvent.hasNoModifiers()) {
                    return arrowScroll(2);
                }
                if (keyEvent.hasModifiers(1)) {
                    return arrowScroll(1);
                }
            }
        }
        return false;
    }

    /* renamed from: f */
    public final void m6782f(int i, float f, int i2) {
        OnPageChangeListener onPageChangeListener = this.f11053O0;
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageScrolled(i, f, i2);
        }
        List<OnPageChangeListener> list = this.f11051N0;
        if (list != null) {
            int size = list.size();
            for (int i3 = 0; i3 < size; i3++) {
                OnPageChangeListener onPageChangeListener2 = this.f11051N0.get(i3);
                if (onPageChangeListener2 != null) {
                    onPageChangeListener2.onPageScrolled(i, f, i2);
                }
            }
        }
        OnPageChangeListener onPageChangeListener3 = this.f11054P0;
        if (onPageChangeListener3 != null) {
            onPageChangeListener3.onPageScrolled(i, f, i2);
        }
    }

    public void fakeDragBy(float f) {
        if (!this.f11042F0) {
            throw new IllegalStateException("No fake drag in progress. Call beginFakeDrag first.");
        }
        if (this.f11067i == null) {
            return;
        }
        this.f11085v0 += f;
        float scrollX = getScrollX() - f;
        float clientWidth = getClientWidth();
        float f2 = this.f11082u * clientWidth;
        float f3 = this.f11084v * clientWidth;
        C1548e c1548e = this.f11064f.get(0);
        C1548e c1548e2 = this.f11064f.get(r4.size() - 1);
        if (c1548e.f11102b != 0) {
            f2 = c1548e.f11105e * clientWidth;
        }
        if (c1548e2.f11102b != this.f11067i.getCount() - 1) {
            f3 = c1548e2.f11105e * clientWidth;
        }
        if (scrollX < f2) {
            scrollX = f2;
        } else if (scrollX > f3) {
            scrollX = f3;
        }
        int i = (int) scrollX;
        this.f11085v0 += scrollX - i;
        scrollTo(i, getScrollY());
        m6798w(i);
        MotionEvent obtain = MotionEvent.obtain(this.f11043G0, SystemClock.uptimeMillis(), 2, this.f11085v0, 0.0f, 0);
        this.f11037A0.addMovement(obtain);
        obtain.recycle();
    }

    /* renamed from: g */
    public final void m6783g(int i) {
        OnPageChangeListener onPageChangeListener = this.f11053O0;
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageSelected(i);
        }
        List<OnPageChangeListener> list = this.f11051N0;
        if (list != null) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                OnPageChangeListener onPageChangeListener2 = this.f11051N0.get(i2);
                if (onPageChangeListener2 != null) {
                    onPageChangeListener2.onPageSelected(i);
                }
            }
        }
        OnPageChangeListener onPageChangeListener3 = this.f11054P0;
        if (onPageChangeListener3 != null) {
            onPageChangeListener3.onPageSelected(i);
        }
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return generateDefaultLayoutParams();
    }

    @Nullable
    public PagerAdapter getAdapter() {
        return this.f11067i;
    }

    @Override // android.view.ViewGroup
    public int getChildDrawingOrder(int i, int i2) {
        if (this.f11059T0 == 2) {
            i2 = (i - 1) - i2;
        }
        return ((LayoutParams) this.f11060U0.get(i2).getLayoutParams()).f11097d;
    }

    public int getCurrentItem() {
        return this.f11068j;
    }

    public int getOffscreenPageLimit() {
        return this.f11052O;
    }

    public int getPageMargin() {
        return this.f11076q;
    }

    /* renamed from: h */
    public final void m6784h(int i) {
        OnPageChangeListener onPageChangeListener = this.f11053O0;
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageScrollStateChanged(i);
        }
        List<OnPageChangeListener> list = this.f11051N0;
        if (list != null) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                OnPageChangeListener onPageChangeListener2 = this.f11051N0.get(i2);
                if (onPageChangeListener2 != null) {
                    onPageChangeListener2.onPageScrollStateChanged(i);
                }
            }
        }
        OnPageChangeListener onPageChangeListener3 = this.f11054P0;
        if (onPageChangeListener3 != null) {
            onPageChangeListener3.onPageScrollStateChanged(i);
        }
    }

    /* renamed from: i */
    public float m6785i(float f) {
        return (float) Math.sin((f - 0.5f) * 0.47123894f);
    }

    public boolean isFakeDragging() {
        return this.f11042F0;
    }

    /* renamed from: j */
    public final void m6786j(boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            getChildAt(i).setLayerType(z ? this.f11058S0 : 0, null);
        }
    }

    /* renamed from: k */
    public final void m6787k() {
        this.f11055Q = false;
        this.f11070k0 = false;
        VelocityTracker velocityTracker = this.f11037A0;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f11037A0 = null;
        }
    }

    /* renamed from: l */
    public final Rect m6788l(Rect rect, View view) {
        if (rect == null) {
            rect = new Rect();
        }
        if (view == null) {
            rect.set(0, 0, 0, 0);
            return rect;
        }
        rect.left = view.getLeft();
        rect.right = view.getRight();
        rect.top = view.getTop();
        rect.bottom = view.getBottom();
        ViewParent parent = view.getParent();
        while ((parent instanceof ViewGroup) && parent != this) {
            ViewGroup viewGroup = (ViewGroup) parent;
            rect.left += viewGroup.getLeft();
            rect.right += viewGroup.getRight();
            rect.top += viewGroup.getTop();
            rect.bottom += viewGroup.getBottom();
            parent = viewGroup.getParent();
        }
        return rect;
    }

    /* renamed from: m */
    public C1548e m6789m(View view) {
        while (true) {
            Object parent = view.getParent();
            if (parent == this) {
                return m6790n(view);
            }
            if (parent == null || !(parent instanceof View)) {
                return null;
            }
            view = (View) parent;
        }
    }

    /* renamed from: n */
    public C1548e m6790n(View view) {
        for (int i = 0; i < this.f11064f.size(); i++) {
            C1548e c1548e = this.f11064f.get(i);
            if (this.f11067i.isViewFromObject(view, c1548e.f11101a)) {
                return c1548e;
            }
        }
        return null;
    }

    /* renamed from: o */
    public final C1548e m6791o() {
        int i;
        int clientWidth = getClientWidth();
        float f = 0.0f;
        float scrollX = clientWidth > 0 ? getScrollX() / clientWidth : 0.0f;
        float f2 = clientWidth > 0 ? this.f11076q / clientWidth : 0.0f;
        int i2 = 0;
        boolean z = true;
        C1548e c1548e = null;
        int i3 = -1;
        float f3 = 0.0f;
        while (i2 < this.f11064f.size()) {
            C1548e c1548e2 = this.f11064f.get(i2);
            if (!z && c1548e2.f11102b != (i = i3 + 1)) {
                c1548e2 = this.f11065g;
                c1548e2.f11105e = f + f3 + f2;
                c1548e2.f11102b = i;
                c1548e2.f11104d = this.f11067i.getPageWidth(i);
                i2--;
            }
            C1548e c1548e3 = c1548e2;
            f = c1548e3.f11105e;
            float f4 = c1548e3.f11104d + f + f2;
            if (!z && scrollX < f) {
                return c1548e;
            }
            if (scrollX < f4 || i2 == this.f11064f.size() - 1) {
                return c1548e3;
            }
            int i4 = c1548e3.f11102b;
            float f5 = c1548e3.f11104d;
            i2++;
            z = false;
            i3 = i4;
            f3 = f5;
            c1548e = c1548e3;
        }
        return c1548e;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f11047J0 = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        removeCallbacks(this.f11061V0);
        Scroller scroller = this.f11073n;
        if (scroller != null && !scroller.isFinished()) {
            this.f11073n.abortAnimation();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        int i;
        float f;
        float f2;
        super.onDraw(canvas);
        if (this.f11076q <= 0 || this.f11078r == null || this.f11064f.size() <= 0 || this.f11067i == null) {
            return;
        }
        int scrollX = getScrollX();
        float width = getWidth();
        float f3 = this.f11076q / width;
        int i2 = 0;
        C1548e c1548e = this.f11064f.get(0);
        float f4 = c1548e.f11105e;
        int size = this.f11064f.size();
        int i3 = c1548e.f11102b;
        int i4 = this.f11064f.get(size - 1).f11102b;
        while (i3 < i4) {
            while (true) {
                i = c1548e.f11102b;
                if (i3 <= i || i2 >= size) {
                    break;
                }
                i2++;
                c1548e = this.f11064f.get(i2);
            }
            if (i3 == i) {
                float f5 = c1548e.f11105e;
                float f6 = c1548e.f11104d;
                f = (f5 + f6) * width;
                f4 = f5 + f6 + f3;
            } else {
                float pageWidth = this.f11067i.getPageWidth(i3);
                f = (f4 + pageWidth) * width;
                f4 += pageWidth + f3;
            }
            if (this.f11076q + f > scrollX) {
                f2 = f3;
                this.f11078r.setBounds(Math.round(f), this.f11079s, Math.round(this.f11076q + f), this.f11080t);
                this.f11078r.draw(canvas);
            } else {
                f2 = f3;
            }
            if (f > scrollX + r2) {
                return;
            }
            i3++;
            f3 = f2;
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        if (action == 3 || action == 1) {
            m6769D();
            return false;
        }
        if (action != 0) {
            if (this.f11055Q) {
                return true;
            }
            if (this.f11070k0) {
                return false;
            }
        }
        if (action == 0) {
            float x = motionEvent.getX();
            this.f11089x0 = x;
            this.f11085v0 = x;
            float y = motionEvent.getY();
            this.f11091y0 = y;
            this.f11087w0 = y;
            this.f11093z0 = motionEvent.getPointerId(0);
            this.f11070k0 = false;
            this.f11074o = true;
            this.f11073n.computeScrollOffset();
            if (this.f11062W0 != 2 || Math.abs(this.f11073n.getFinalX() - this.f11073n.getCurrX()) <= this.f11041E0) {
                m6779c(false);
                this.f11055Q = false;
            } else {
                this.f11073n.abortAnimation();
                this.f11046J = false;
                m6800y();
                this.f11055Q = true;
                m6768C(true);
                setScrollState(1);
            }
        } else if (action == 2) {
            int i = this.f11093z0;
            if (i != -1) {
                int findPointerIndex = motionEvent.findPointerIndex(i);
                float x2 = motionEvent.getX(findPointerIndex);
                float f = x2 - this.f11085v0;
                float abs = Math.abs(f);
                float y2 = motionEvent.getY(findPointerIndex);
                float abs2 = Math.abs(y2 - this.f11091y0);
                if (f != 0.0f && !m6794s(this.f11085v0, f) && canScroll(this, false, (int) f, (int) x2, (int) y2)) {
                    this.f11085v0 = x2;
                    this.f11087w0 = y2;
                    this.f11070k0 = true;
                    return false;
                }
                int i2 = this.f11083u0;
                if (abs > i2 && abs * 0.5f > abs2) {
                    this.f11055Q = true;
                    m6768C(true);
                    setScrollState(1);
                    float f2 = this.f11089x0;
                    float f3 = this.f11083u0;
                    this.f11085v0 = f > 0.0f ? f2 + f3 : f2 - f3;
                    this.f11087w0 = y2;
                    setScrollingCacheEnabled(true);
                } else if (abs2 > i2) {
                    this.f11070k0 = true;
                }
                if (this.f11055Q && m6799x(x2)) {
                    ViewCompat.postInvalidateOnAnimation(this);
                }
            }
        } else if (action == 6) {
            m6795t(motionEvent);
        }
        if (this.f11037A0 == null) {
            this.f11037A0 = VelocityTracker.obtain();
        }
        this.f11037A0.addMovement(motionEvent);
        return this.f11055Q;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x008e  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onLayout(boolean r19, int r20, int r21, int r22, int r23) {
        /*
            Method dump skipped, instructions count: 284
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.onLayout(boolean, int, int, int, int):void");
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        LayoutParams layoutParams;
        LayoutParams layoutParams2;
        int i3;
        setMeasuredDimension(View.getDefaultSize(0, i), View.getDefaultSize(0, i2));
        int measuredWidth = getMeasuredWidth();
        this.f11081t0 = Math.min(measuredWidth / 10, this.f11077q0);
        int paddingLeft = (measuredWidth - getPaddingLeft()) - getPaddingRight();
        int measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
        int childCount = getChildCount();
        int i4 = 0;
        while (true) {
            boolean z = true;
            int i5 = 1073741824;
            if (i4 >= childCount) {
                break;
            }
            View childAt = getChildAt(i4);
            if (childAt.getVisibility() != 8 && (layoutParams2 = (LayoutParams) childAt.getLayoutParams()) != null && layoutParams2.isDecor) {
                int i6 = layoutParams2.gravity;
                int i7 = i6 & 7;
                int i8 = i6 & 112;
                boolean z2 = i8 == 48 || i8 == 80;
                if (i7 != 3 && i7 != 5) {
                    z = false;
                }
                int i9 = Integer.MIN_VALUE;
                if (z2) {
                    i3 = Integer.MIN_VALUE;
                    i9 = 1073741824;
                } else {
                    i3 = z ? 1073741824 : Integer.MIN_VALUE;
                }
                int i10 = ((ViewGroup.LayoutParams) layoutParams2).width;
                if (i10 != -2) {
                    if (i10 == -1) {
                        i10 = paddingLeft;
                    }
                    i9 = 1073741824;
                } else {
                    i10 = paddingLeft;
                }
                int i11 = ((ViewGroup.LayoutParams) layoutParams2).height;
                if (i11 == -2) {
                    i11 = measuredHeight;
                    i5 = i3;
                } else if (i11 == -1) {
                    i11 = measuredHeight;
                }
                childAt.measure(View.MeasureSpec.makeMeasureSpec(i10, i9), View.MeasureSpec.makeMeasureSpec(i11, i5));
                if (z2) {
                    measuredHeight -= childAt.getMeasuredHeight();
                } else if (z) {
                    paddingLeft -= childAt.getMeasuredWidth();
                }
            }
            i4++;
        }
        this.f11086w = View.MeasureSpec.makeMeasureSpec(paddingLeft, 1073741824);
        this.f11088x = View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824);
        this.f11090y = true;
        m6800y();
        this.f11090y = false;
        int childCount2 = getChildCount();
        for (int i12 = 0; i12 < childCount2; i12++) {
            View childAt2 = getChildAt(i12);
            if (childAt2.getVisibility() != 8 && ((layoutParams = (LayoutParams) childAt2.getLayoutParams()) == null || !layoutParams.isDecor)) {
                childAt2.measure(View.MeasureSpec.makeMeasureSpec((int) (paddingLeft * layoutParams.f11094a), 1073741824), this.f11088x);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0064  */
    @androidx.annotation.CallSuper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onPageScrolled(int r13, float r14, int r15) {
        /*
            r12 = this;
            int r0 = r12.f11050M0
            r1 = 0
            r2 = 1
            if (r0 <= 0) goto L6b
            int r0 = r12.getScrollX()
            int r3 = r12.getPaddingLeft()
            int r4 = r12.getPaddingRight()
            int r5 = r12.getWidth()
            int r6 = r12.getChildCount()
            r7 = r1
        L1b:
            if (r7 >= r6) goto L6b
            android.view.View r8 = r12.getChildAt(r7)
            android.view.ViewGroup$LayoutParams r9 = r8.getLayoutParams()
            androidx.viewpager.widget.ViewPager$LayoutParams r9 = (androidx.viewpager.widget.ViewPager.LayoutParams) r9
            boolean r10 = r9.isDecor
            if (r10 != 0) goto L2c
            goto L68
        L2c:
            int r9 = r9.gravity
            r9 = r9 & 7
            if (r9 == r2) goto L4d
            r10 = 3
            if (r9 == r10) goto L47
            r10 = 5
            if (r9 == r10) goto L3a
            r9 = r3
            goto L5c
        L3a:
            int r9 = r5 - r4
            int r10 = r8.getMeasuredWidth()
            int r9 = r9 - r10
            int r10 = r8.getMeasuredWidth()
            int r4 = r4 + r10
            goto L59
        L47:
            int r9 = r8.getWidth()
            int r9 = r9 + r3
            goto L5c
        L4d:
            int r9 = r8.getMeasuredWidth()
            int r9 = r5 - r9
            int r9 = r9 / 2
            int r9 = java.lang.Math.max(r9, r3)
        L59:
            r11 = r9
            r9 = r3
            r3 = r11
        L5c:
            int r3 = r3 + r0
            int r10 = r8.getLeft()
            int r3 = r3 - r10
            if (r3 == 0) goto L67
            r8.offsetLeftAndRight(r3)
        L67:
            r3 = r9
        L68:
            int r7 = r7 + 1
            goto L1b
        L6b:
            r12.m6782f(r13, r14, r15)
            androidx.viewpager.widget.ViewPager$PageTransformer r13 = r12.f11057R0
            if (r13 == 0) goto L9f
            int r13 = r12.getScrollX()
            int r14 = r12.getChildCount()
        L7a:
            if (r1 >= r14) goto L9f
            android.view.View r15 = r12.getChildAt(r1)
            android.view.ViewGroup$LayoutParams r0 = r15.getLayoutParams()
            androidx.viewpager.widget.ViewPager$LayoutParams r0 = (androidx.viewpager.widget.ViewPager.LayoutParams) r0
            boolean r0 = r0.isDecor
            if (r0 == 0) goto L8b
            goto L9c
        L8b:
            int r0 = r15.getLeft()
            int r0 = r0 - r13
            float r0 = (float) r0
            int r3 = r12.getClientWidth()
            float r3 = (float) r3
            float r0 = r0 / r3
            androidx.viewpager.widget.ViewPager$PageTransformer r3 = r12.f11057R0
            r3.transformPage(r15, r0)
        L9c:
            int r1 = r1 + 1
            goto L7a
        L9f:
            r12.f11049L0 = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.onPageScrolled(int, float, int):void");
    }

    @Override // android.view.ViewGroup
    public boolean onRequestFocusInDescendants(int i, Rect rect) {
        int i2;
        int i3;
        int i4;
        C1548e m6790n;
        int childCount = getChildCount();
        if ((i & 2) != 0) {
            i3 = childCount;
            i2 = 0;
            i4 = 1;
        } else {
            i2 = childCount - 1;
            i3 = -1;
            i4 = -1;
        }
        while (i2 != i3) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() == 0 && (m6790n = m6790n(childAt)) != null && m6790n.f11102b == this.f11068j && childAt.requestFocus(i, rect)) {
                return true;
            }
            i2 += i4;
        }
        return false;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        PagerAdapter pagerAdapter = this.f11067i;
        if (pagerAdapter != null) {
            pagerAdapter.restoreState(savedState.adapterState, savedState.loader);
            m6771F(savedState.position, false, true);
        } else {
            this.f11069k = savedState.position;
            this.f11071l = savedState.adapterState;
            this.f11072m = savedState.loader;
        }
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.position = this.f11068j;
        PagerAdapter pagerAdapter = this.f11067i;
        if (pagerAdapter != null) {
            savedState.adapterState = pagerAdapter.saveState();
        }
        return savedState;
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3) {
            int i5 = this.f11076q;
            m6766A(i, i3, i5, i5);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        PagerAdapter pagerAdapter;
        if (this.f11042F0) {
            return true;
        }
        boolean z = false;
        if ((motionEvent.getAction() == 0 && motionEvent.getEdgeFlags() != 0) || (pagerAdapter = this.f11067i) == null || pagerAdapter.getCount() == 0) {
            return false;
        }
        if (this.f11037A0 == null) {
            this.f11037A0 = VelocityTracker.obtain();
        }
        this.f11037A0.addMovement(motionEvent);
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.f11073n.abortAnimation();
            this.f11046J = false;
            m6800y();
            float x = motionEvent.getX();
            this.f11089x0 = x;
            this.f11085v0 = x;
            float y = motionEvent.getY();
            this.f11091y0 = y;
            this.f11087w0 = y;
            this.f11093z0 = motionEvent.getPointerId(0);
        } else if (action != 1) {
            if (action == 2) {
                if (!this.f11055Q) {
                    int findPointerIndex = motionEvent.findPointerIndex(this.f11093z0);
                    if (findPointerIndex == -1) {
                        z = m6769D();
                    } else {
                        float x2 = motionEvent.getX(findPointerIndex);
                        float abs = Math.abs(x2 - this.f11085v0);
                        float y2 = motionEvent.getY(findPointerIndex);
                        float abs2 = Math.abs(y2 - this.f11087w0);
                        if (abs > this.f11083u0 && abs > abs2) {
                            this.f11055Q = true;
                            m6768C(true);
                            float f = this.f11089x0;
                            this.f11085v0 = x2 - f > 0.0f ? f + this.f11083u0 : f - this.f11083u0;
                            this.f11087w0 = y2;
                            setScrollState(1);
                            setScrollingCacheEnabled(true);
                            ViewParent parent = getParent();
                            if (parent != null) {
                                parent.requestDisallowInterceptTouchEvent(true);
                            }
                        }
                    }
                }
                if (this.f11055Q) {
                    z = false | m6799x(motionEvent.getX(motionEvent.findPointerIndex(this.f11093z0)));
                }
            } else if (action != 3) {
                if (action == 5) {
                    int actionIndex = motionEvent.getActionIndex();
                    this.f11085v0 = motionEvent.getX(actionIndex);
                    this.f11093z0 = motionEvent.getPointerId(actionIndex);
                } else if (action == 6) {
                    m6795t(motionEvent);
                    this.f11085v0 = motionEvent.getX(motionEvent.findPointerIndex(this.f11093z0));
                }
            } else if (this.f11055Q) {
                m6770E(this.f11068j, true, 0, false);
                z = m6769D();
            }
        } else if (this.f11055Q) {
            VelocityTracker velocityTracker = this.f11037A0;
            velocityTracker.computeCurrentVelocity(1000, this.f11039C0);
            int xVelocity = (int) velocityTracker.getXVelocity(this.f11093z0);
            this.f11046J = true;
            int clientWidth = getClientWidth();
            int scrollX = getScrollX();
            C1548e m6791o = m6791o();
            float f2 = clientWidth;
            m6772G(m6781e(m6791o.f11102b, ((scrollX / f2) - m6791o.f11105e) / (m6791o.f11104d + (this.f11076q / f2)), xVelocity, (int) (motionEvent.getX(motionEvent.findPointerIndex(this.f11093z0)) - this.f11089x0)), true, true, xVelocity);
            z = m6769D();
        }
        if (z) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
        return true;
    }

    /* renamed from: p */
    public C1548e m6792p(int i) {
        for (int i2 = 0; i2 < this.f11064f.size(); i2++) {
            C1548e c1548e = this.f11064f.get(i2);
            if (c1548e.f11102b == i) {
                return c1548e;
            }
        }
        return null;
    }

    /* renamed from: q */
    public void m6793q() {
        setWillNotDraw(false);
        setDescendantFocusability(262144);
        setFocusable(true);
        Context context = getContext();
        this.f11073n = new Scroller(context, f11030h1);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        float f = context.getResources().getDisplayMetrics().density;
        this.f11083u0 = viewConfiguration.getScaledPagingTouchSlop();
        this.f11038B0 = (int) (400.0f * f);
        this.f11039C0 = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f11044H0 = new EdgeEffect(context);
        this.f11045I0 = new EdgeEffect(context);
        this.f11040D0 = (int) (25.0f * f);
        this.f11041E0 = (int) (2.0f * f);
        this.f11077q0 = (int) (f * 16.0f);
        ViewCompat.setAccessibilityDelegate(this, new C1549f());
        if (ViewCompat.getImportantForAccessibility(this) == 0) {
            ViewCompat.setImportantForAccessibility(this, 1);
        }
        ViewCompat.setOnApplyWindowInsetsListener(this, new C1547d());
    }

    public void removeOnAdapterChangeListener(@NonNull OnAdapterChangeListener onAdapterChangeListener) {
        List<OnAdapterChangeListener> list = this.f11056Q0;
        if (list != null) {
            list.remove(onAdapterChangeListener);
        }
    }

    public void removeOnPageChangeListener(@NonNull OnPageChangeListener onPageChangeListener) {
        List<OnPageChangeListener> list = this.f11051N0;
        if (list != null) {
            list.remove(onPageChangeListener);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        if (this.f11090y) {
            removeViewInLayout(view);
        } else {
            super.removeView(view);
        }
    }

    /* renamed from: s */
    public final boolean m6794s(float f, float f2) {
        return (f < ((float) this.f11081t0) && f2 > 0.0f) || (f > ((float) (getWidth() - this.f11081t0)) && f2 < 0.0f);
    }

    public void setAdapter(@Nullable PagerAdapter pagerAdapter) {
        PagerAdapter pagerAdapter2 = this.f11067i;
        if (pagerAdapter2 != null) {
            pagerAdapter2.m6761a(null);
            this.f11067i.startUpdate((ViewGroup) this);
            for (int i = 0; i < this.f11064f.size(); i++) {
                C1548e c1548e = this.f11064f.get(i);
                this.f11067i.destroyItem((ViewGroup) this, c1548e.f11102b, c1548e.f11101a);
            }
            this.f11067i.finishUpdate((ViewGroup) this);
            this.f11064f.clear();
            m6767B();
            this.f11068j = 0;
            scrollTo(0, 0);
        }
        PagerAdapter pagerAdapter3 = this.f11067i;
        this.f11067i = pagerAdapter;
        this.f11063e = 0;
        if (pagerAdapter != null) {
            if (this.f11075p == null) {
                this.f11075p = new C1550g();
            }
            this.f11067i.m6761a(this.f11075p);
            this.f11046J = false;
            boolean z = this.f11047J0;
            this.f11047J0 = true;
            this.f11063e = this.f11067i.getCount();
            if (this.f11069k >= 0) {
                this.f11067i.restoreState(this.f11071l, this.f11072m);
                m6771F(this.f11069k, false, true);
                this.f11069k = -1;
                this.f11071l = null;
                this.f11072m = null;
            } else if (z) {
                requestLayout();
            } else {
                m6800y();
            }
        }
        List<OnAdapterChangeListener> list = this.f11056Q0;
        if (list == null || list.isEmpty()) {
            return;
        }
        int size = this.f11056Q0.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.f11056Q0.get(i2).onAdapterChanged(this, pagerAdapter3, pagerAdapter);
        }
    }

    public void setCurrentItem(int i) {
        this.f11046J = false;
        m6771F(i, !this.f11047J0, false);
    }

    public void setOffscreenPageLimit(int i) {
        if (i < 1) {
            Log.w(f11020X0, "Requested offscreen page limit " + i + " too small; defaulting to 1");
            i = 1;
        }
        if (i != this.f11052O) {
            this.f11052O = i;
            m6800y();
        }
    }

    @Deprecated
    public void setOnPageChangeListener(OnPageChangeListener onPageChangeListener) {
        this.f11053O0 = onPageChangeListener;
    }

    public void setPageMargin(int i) {
        int i2 = this.f11076q;
        this.f11076q = i;
        int width = getWidth();
        m6766A(width, width, i, i2);
        requestLayout();
    }

    public void setPageMarginDrawable(@Nullable Drawable drawable) {
        this.f11078r = drawable;
        if (drawable != null) {
            refreshDrawableState();
        }
        setWillNotDraw(drawable == null);
        invalidate();
    }

    public void setPageTransformer(boolean z, @Nullable PageTransformer pageTransformer) {
        setPageTransformer(z, pageTransformer, 2);
    }

    public void setScrollState(int i) {
        if (this.f11062W0 == i) {
            return;
        }
        this.f11062W0 = i;
        if (this.f11057R0 != null) {
            m6786j(i != 0);
        }
        m6784h(i);
    }

    /* renamed from: t */
    public final void m6795t(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f11093z0) {
            int i = actionIndex == 0 ? 1 : 0;
            this.f11085v0 = motionEvent.getX(i);
            this.f11093z0 = motionEvent.getPointerId(i);
            VelocityTracker velocityTracker = this.f11037A0;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    /* renamed from: u */
    public boolean m6796u() {
        int i = this.f11068j;
        if (i <= 0) {
            return false;
        }
        setCurrentItem(i - 1, true);
        return true;
    }

    /* renamed from: v */
    public boolean m6797v() {
        PagerAdapter pagerAdapter = this.f11067i;
        if (pagerAdapter == null || this.f11068j >= pagerAdapter.getCount() - 1) {
            return false;
        }
        setCurrentItem(this.f11068j + 1, true);
        return true;
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f11078r;
    }

    /* renamed from: w */
    public final boolean m6798w(int i) {
        if (this.f11064f.size() == 0) {
            if (this.f11047J0) {
                return false;
            }
            this.f11049L0 = false;
            onPageScrolled(0, 0.0f, 0);
            if (this.f11049L0) {
                return false;
            }
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        }
        C1548e m6791o = m6791o();
        int clientWidth = getClientWidth();
        int i2 = this.f11076q;
        int i3 = clientWidth + i2;
        float f = clientWidth;
        int i4 = m6791o.f11102b;
        float f2 = ((i / f) - m6791o.f11105e) / (m6791o.f11104d + (i2 / f));
        this.f11049L0 = false;
        onPageScrolled(i4, f2, (int) (i3 * f2));
        if (this.f11049L0) {
            return true;
        }
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
    }

    /* renamed from: x */
    public final boolean m6799x(float f) {
        boolean z;
        boolean z2;
        float f2 = this.f11085v0 - f;
        this.f11085v0 = f;
        float scrollX = getScrollX() + f2;
        float clientWidth = getClientWidth();
        float f3 = this.f11082u * clientWidth;
        float f4 = this.f11084v * clientWidth;
        boolean z3 = false;
        C1548e c1548e = this.f11064f.get(0);
        ArrayList<C1548e> arrayList = this.f11064f;
        C1548e c1548e2 = arrayList.get(arrayList.size() - 1);
        if (c1548e.f11102b != 0) {
            f3 = c1548e.f11105e * clientWidth;
            z = false;
        } else {
            z = true;
        }
        if (c1548e2.f11102b != this.f11067i.getCount() - 1) {
            f4 = c1548e2.f11105e * clientWidth;
            z2 = false;
        } else {
            z2 = true;
        }
        if (scrollX < f3) {
            if (z) {
                this.f11044H0.onPull(Math.abs(f3 - scrollX) / clientWidth);
                z3 = true;
            }
            scrollX = f3;
        } else if (scrollX > f4) {
            if (z2) {
                this.f11045I0.onPull(Math.abs(scrollX - f4) / clientWidth);
                z3 = true;
            }
            scrollX = f4;
        }
        int i = (int) scrollX;
        this.f11085v0 += scrollX - i;
        scrollTo(i, getScrollY());
        m6798w(i);
        return z3;
    }

    /* renamed from: y */
    public void m6800y() {
        m6801z(this.f11068j);
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0060, code lost:
    
        if (r9 == r10) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0066, code lost:
    
        r8 = null;
     */
    /* renamed from: z */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m6801z(int r18) {
        /*
            Method dump skipped, instructions count: 614
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.m6801z(int):void");
    }

    /* loaded from: classes3.dex */
    public static class LayoutParams extends ViewGroup.LayoutParams {

        /* renamed from: a */
        public float f11094a;

        /* renamed from: b */
        public boolean f11095b;

        /* renamed from: c */
        public int f11096c;

        /* renamed from: d */
        public int f11097d;
        public int gravity;
        public boolean isDecor;

        public LayoutParams() {
            super(-1, -1);
            this.f11094a = 0.0f;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f11094a = 0.0f;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ViewPager.f11028f1);
            this.gravity = obtainStyledAttributes.getInteger(0, 48);
            obtainStyledAttributes.recycle();
        }
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public void setPageTransformer(boolean z, @Nullable PageTransformer pageTransformer, int i) {
        boolean z2 = pageTransformer != null;
        boolean z3 = z2 != (this.f11057R0 != null);
        this.f11057R0 = pageTransformer;
        setChildrenDrawingOrderEnabled(z2);
        if (z2) {
            this.f11059T0 = z ? 2 : 1;
            this.f11058S0 = i;
        } else {
            this.f11059T0 = 0;
        }
        if (z3) {
            m6800y();
        }
    }

    public void setCurrentItem(int i, boolean z) {
        this.f11046J = false;
        m6771F(i, z, false);
    }

    public void setPageMarginDrawable(@DrawableRes int i) {
        setPageMarginDrawable(ContextCompat.getDrawable(getContext(), i));
    }

    public ViewPager(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f11064f = new ArrayList<>();
        this.f11065g = new C1548e();
        this.f11066h = new Rect();
        this.f11069k = -1;
        this.f11071l = null;
        this.f11072m = null;
        this.f11082u = -3.4028235E38f;
        this.f11084v = Float.MAX_VALUE;
        this.f11052O = 1;
        this.f11093z0 = -1;
        this.f11047J0 = true;
        this.f11048K0 = false;
        this.f11061V0 = new RunnableC1546c();
        this.f11062W0 = 0;
        m6793q();
    }
}
