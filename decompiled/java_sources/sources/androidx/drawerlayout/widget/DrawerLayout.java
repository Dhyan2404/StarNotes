package androidx.drawerlayout.widget;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityEvent;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.Insets;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.customview.view.AbsSavedState;
import androidx.customview.widget.Openable;
import androidx.customview.widget.ViewDragHelper;
import androidx.drawerlayout.C1004R;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class DrawerLayout extends ViewGroup implements Openable {

    /* renamed from: D0 */
    public static final String f6794D0 = "DrawerLayout";

    /* renamed from: F0 */
    public static final int f6796F0 = 64;

    /* renamed from: G0 */
    public static final int f6797G0 = -1728053248;

    /* renamed from: H0 */
    public static final int f6798H0 = 160;

    /* renamed from: I0 */
    public static final int f6799I0 = 400;

    /* renamed from: J0 */
    public static final boolean f6800J0 = false;

    /* renamed from: K0 */
    public static final boolean f6801K0 = true;

    /* renamed from: L0 */
    public static final float f6802L0 = 1.0f;
    public static final int LOCK_MODE_LOCKED_CLOSED = 1;
    public static final int LOCK_MODE_LOCKED_OPEN = 2;
    public static final int LOCK_MODE_UNDEFINED = 3;
    public static final int LOCK_MODE_UNLOCKED = 0;

    /* renamed from: P0 */
    public static final String f6806P0 = "androidx.drawerlayout.widget.DrawerLayout";
    public static final int STATE_DRAGGING = 1;
    public static final int STATE_IDLE = 0;
    public static final int STATE_SETTLING = 2;

    /* renamed from: A0 */
    public Rect f6808A0;

    /* renamed from: B0 */
    public Matrix f6809B0;

    /* renamed from: C0 */
    public final AccessibilityViewCommand f6810C0;

    /* renamed from: J */
    public Drawable f6811J;

    /* renamed from: O */
    public Drawable f6812O;

    /* renamed from: Q */
    public Drawable f6813Q;

    /* renamed from: e */
    public final C1009d f6814e;

    /* renamed from: f */
    public float f6815f;

    /* renamed from: g */
    public int f6816g;

    /* renamed from: h */
    public int f6817h;

    /* renamed from: i */
    public float f6818i;

    /* renamed from: j */
    public Paint f6819j;

    /* renamed from: k */
    public final ViewDragHelper f6820k;

    /* renamed from: k0 */
    public CharSequence f6821k0;

    /* renamed from: l */
    public final ViewDragHelper f6822l;

    /* renamed from: m */
    public final C1010e f6823m;

    /* renamed from: n */
    public final C1010e f6824n;

    /* renamed from: o */
    public int f6825o;

    /* renamed from: p */
    public boolean f6826p;

    /* renamed from: q */
    public boolean f6827q;

    /* renamed from: q0 */
    public CharSequence f6828q0;

    /* renamed from: r */
    public int f6829r;

    /* renamed from: s */
    public int f6830s;

    /* renamed from: t */
    public int f6831t;

    /* renamed from: t0 */
    public Object f6832t0;

    /* renamed from: u */
    public int f6833u;

    /* renamed from: u0 */
    public boolean f6834u0;

    /* renamed from: v */
    public boolean f6835v;

    /* renamed from: v0 */
    public Drawable f6836v0;

    /* renamed from: w */
    @Nullable
    public DrawerListener f6837w;

    /* renamed from: w0 */
    public Drawable f6838w0;

    /* renamed from: x */
    public List<DrawerListener> f6839x;

    /* renamed from: x0 */
    public Drawable f6840x0;

    /* renamed from: y */
    public float f6841y;

    /* renamed from: y0 */
    public Drawable f6842y0;

    /* renamed from: z */
    public float f6843z;

    /* renamed from: z0 */
    public final ArrayList<View> f6844z0;

    /* renamed from: E0 */
    public static final int[] f6795E0 = {R.attr.colorPrimaryDark};

    /* renamed from: M0 */
    public static final int[] f6803M0 = {R.attr.layout_gravity};

    /* renamed from: N0 */
    public static final boolean f6804N0 = true;

    /* renamed from: O0 */
    public static final boolean f6805O0 = true;

    /* renamed from: Q0 */
    public static boolean f6807Q0 = true;

    /* loaded from: classes3.dex */
    public interface DrawerListener {
        void onDrawerClosed(@NonNull View view);

        void onDrawerOpened(@NonNull View view);

        void onDrawerSlide(@NonNull View view, float f);

        void onDrawerStateChanged(int i);
    }

    /* loaded from: classes3.dex */
    public static abstract class SimpleDrawerListener implements DrawerListener {
        @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
        public void onDrawerClosed(View view) {
        }

        @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
        public void onDrawerOpened(View view) {
        }

        @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
        public void onDrawerSlide(View view, float f) {
        }

        @Override // androidx.drawerlayout.widget.DrawerLayout.DrawerListener
        public void onDrawerStateChanged(int i) {
        }
    }

    /* renamed from: androidx.drawerlayout.widget.DrawerLayout$a */
    /* loaded from: classes3.dex */
    public class C1006a implements AccessibilityViewCommand {
        public C1006a() {
        }

        @Override // androidx.core.view.accessibility.AccessibilityViewCommand
        public boolean perform(@NonNull View view, @Nullable AccessibilityViewCommand.CommandArguments commandArguments) {
            if (!DrawerLayout.this.isDrawerOpen(view) || DrawerLayout.this.getDrawerLockMode(view) == 2) {
                return false;
            }
            DrawerLayout.this.closeDrawer(view);
            return true;
        }
    }

    /* renamed from: androidx.drawerlayout.widget.DrawerLayout$b */
    /* loaded from: classes3.dex */
    public class ViewOnApplyWindowInsetsListenerC1007b implements View.OnApplyWindowInsetsListener {
        public ViewOnApplyWindowInsetsListenerC1007b() {
        }

        @Override // android.view.View.OnApplyWindowInsetsListener
        public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
            ((DrawerLayout) view).setChildInsets(windowInsets, windowInsets.getSystemWindowInsetTop() > 0);
            return windowInsets.consumeSystemWindowInsets();
        }
    }

    /* renamed from: androidx.drawerlayout.widget.DrawerLayout$c */
    /* loaded from: classes3.dex */
    public class C1008c extends AccessibilityDelegateCompat {

        /* renamed from: d */
        public final Rect f6853d = new Rect();

        public C1008c() {
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            if (accessibilityEvent.getEventType() != 32) {
                return super.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
            }
            List<CharSequence> text = accessibilityEvent.getText();
            View m4129j = DrawerLayout.this.m4129j();
            if (m4129j == null) {
                return true;
            }
            CharSequence drawerTitle = DrawerLayout.this.getDrawerTitle(DrawerLayout.this.m4130k(m4129j));
            if (drawerTitle == null) {
                return true;
            }
            text.add(drawerTitle);
            return true;
        }

        /* renamed from: e */
        public final void m4146e(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, ViewGroup viewGroup) {
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = viewGroup.getChildAt(i);
                if (DrawerLayout.m4115r(childAt)) {
                    accessibilityNodeInfoCompat.addChild(childAt);
                }
            }
        }

        /* renamed from: f */
        public final void m4147f(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat2) {
            Rect rect = this.f6853d;
            accessibilityNodeInfoCompat2.getBoundsInScreen(rect);
            accessibilityNodeInfoCompat.setBoundsInScreen(rect);
            accessibilityNodeInfoCompat.setVisibleToUser(accessibilityNodeInfoCompat2.isVisibleToUser());
            accessibilityNodeInfoCompat.setPackageName(accessibilityNodeInfoCompat2.getPackageName());
            accessibilityNodeInfoCompat.setClassName(accessibilityNodeInfoCompat2.getClassName());
            accessibilityNodeInfoCompat.setContentDescription(accessibilityNodeInfoCompat2.getContentDescription());
            accessibilityNodeInfoCompat.setEnabled(accessibilityNodeInfoCompat2.isEnabled());
            accessibilityNodeInfoCompat.setFocused(accessibilityNodeInfoCompat2.isFocused());
            accessibilityNodeInfoCompat.setAccessibilityFocused(accessibilityNodeInfoCompat2.isAccessibilityFocused());
            accessibilityNodeInfoCompat.setSelected(accessibilityNodeInfoCompat2.isSelected());
            accessibilityNodeInfoCompat.addAction(accessibilityNodeInfoCompat2.getActions());
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            accessibilityEvent.setClassName(DrawerLayout.f6806P0);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            if (DrawerLayout.f6804N0) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            } else {
                AccessibilityNodeInfoCompat obtain = AccessibilityNodeInfoCompat.obtain(accessibilityNodeInfoCompat);
                super.onInitializeAccessibilityNodeInfo(view, obtain);
                accessibilityNodeInfoCompat.setSource(view);
                Object parentForAccessibility = ViewCompat.getParentForAccessibility(view);
                if (parentForAccessibility instanceof View) {
                    accessibilityNodeInfoCompat.setParent((View) parentForAccessibility);
                }
                m4147f(accessibilityNodeInfoCompat, obtain);
                obtain.recycle();
                m4146e(accessibilityNodeInfoCompat, (ViewGroup) view);
            }
            accessibilityNodeInfoCompat.setClassName(DrawerLayout.f6806P0);
            accessibilityNodeInfoCompat.setFocusable(false);
            accessibilityNodeInfoCompat.setFocused(false);
            accessibilityNodeInfoCompat.removeAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_FOCUS);
            accessibilityNodeInfoCompat.removeAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLEAR_FOCUS);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            if (DrawerLayout.f6804N0 || DrawerLayout.m4115r(view)) {
                return super.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
            }
            return false;
        }
    }

    /* renamed from: androidx.drawerlayout.widget.DrawerLayout$d */
    /* loaded from: classes3.dex */
    public static final class C1009d extends AccessibilityDelegateCompat {
        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            if (DrawerLayout.m4115r(view)) {
                return;
            }
            accessibilityNodeInfoCompat.setParent(null);
        }
    }

    /* renamed from: androidx.drawerlayout.widget.DrawerLayout$e */
    /* loaded from: classes3.dex */
    public class C1010e extends ViewDragHelper.Callback {

        /* renamed from: a */
        public final int f6855a;

        /* renamed from: b */
        public ViewDragHelper f6856b;

        /* renamed from: c */
        public final Runnable f6857c = new a();

        /* renamed from: androidx.drawerlayout.widget.DrawerLayout$e$a */
        /* loaded from: classes3.dex */
        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                C1010e.this.m4149b();
            }
        }

        public C1010e(int i) {
            this.f6855a = i;
        }

        /* renamed from: a */
        public final void m4148a() {
            View m4127h = DrawerLayout.this.m4127h(this.f6855a == 3 ? 5 : 3);
            if (m4127h != null) {
                DrawerLayout.this.closeDrawer(m4127h);
            }
        }

        /* renamed from: b */
        public void m4149b() {
            View m4127h;
            int width;
            int edgeSize = this.f6856b.getEdgeSize();
            boolean z = this.f6855a == 3;
            if (z) {
                m4127h = DrawerLayout.this.m4127h(3);
                width = (m4127h != null ? -m4127h.getWidth() : 0) + edgeSize;
            } else {
                m4127h = DrawerLayout.this.m4127h(5);
                width = DrawerLayout.this.getWidth() - edgeSize;
            }
            if (m4127h != null) {
                if (((!z || m4127h.getLeft() >= width) && (z || m4127h.getLeft() <= width)) || DrawerLayout.this.getDrawerLockMode(m4127h) != 0) {
                    return;
                }
                LayoutParams layoutParams = (LayoutParams) m4127h.getLayoutParams();
                this.f6856b.smoothSlideViewTo(m4127h, width, m4127h.getTop());
                layoutParams.f6849b = true;
                DrawerLayout.this.invalidate();
                m4148a();
                DrawerLayout.this.m4120a();
            }
        }

        /* renamed from: c */
        public void m4150c() {
            DrawerLayout.this.removeCallbacks(this.f6857c);
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int clampViewPositionHorizontal(View view, int i, int i2) {
            if (DrawerLayout.this.m4121b(view, 3)) {
                return Math.max(-view.getWidth(), Math.min(i, 0));
            }
            int width = DrawerLayout.this.getWidth();
            return Math.max(width - view.getWidth(), Math.min(i, width));
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int clampViewPositionVertical(View view, int i, int i2) {
            return view.getTop();
        }

        /* renamed from: d */
        public void m4151d(ViewDragHelper viewDragHelper) {
            this.f6856b = viewDragHelper;
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int getViewHorizontalDragRange(View view) {
            if (DrawerLayout.this.m4136t(view)) {
                return view.getWidth();
            }
            return 0;
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onEdgeDragStarted(int i, int i2) {
            View m4127h = (i & 1) == 1 ? DrawerLayout.this.m4127h(3) : DrawerLayout.this.m4127h(5);
            if (m4127h == null || DrawerLayout.this.getDrawerLockMode(m4127h) != 0) {
                return;
            }
            this.f6856b.captureChildView(m4127h, i2);
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public boolean onEdgeLock(int i) {
            return false;
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onEdgeTouched(int i, int i2) {
            DrawerLayout.this.postDelayed(this.f6857c, 160L);
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewCaptured(View view, int i) {
            ((LayoutParams) view.getLayoutParams()).f6849b = false;
            m4148a();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewDragStateChanged(int i) {
            DrawerLayout.this.m4119D(i, this.f6856b.getCapturedView());
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewPositionChanged(View view, int i, int i2, int i3, int i4) {
            float width = (DrawerLayout.this.m4121b(view, 3) ? i + r3 : DrawerLayout.this.getWidth() - i) / view.getWidth();
            DrawerLayout.this.m4116A(view, width);
            view.setVisibility(width == 0.0f ? 4 : 0);
            DrawerLayout.this.invalidate();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewReleased(View view, float f, float f2) {
            int i;
            float m4131l = DrawerLayout.this.m4131l(view);
            int width = view.getWidth();
            if (DrawerLayout.this.m4121b(view, 3)) {
                i = (f > 0.0f || (f == 0.0f && m4131l > 0.5f)) ? 0 : -width;
            } else {
                int width2 = DrawerLayout.this.getWidth();
                if (f < 0.0f || (f == 0.0f && m4131l > 0.5f)) {
                    width2 -= width;
                }
                i = width2;
            }
            this.f6856b.settleCapturedViewAt(i, view.getTop());
            DrawerLayout.this.invalidate();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public boolean tryCaptureView(View view, int i) {
            return DrawerLayout.this.m4136t(view) && DrawerLayout.this.m4121b(view, this.f6855a) && DrawerLayout.this.getDrawerLockMode(view) == 0;
        }
    }

    public DrawerLayout(@NonNull Context context) {
        this(context, null);
    }

    /* renamed from: n */
    public static String m4113n(int i) {
        return (i & 3) == 3 ? "LEFT" : (i & 5) == 5 ? "RIGHT" : Integer.toHexString(i);
    }

    /* renamed from: o */
    public static boolean m4114o(View view) {
        Drawable background = view.getBackground();
        return background != null && background.getOpacity() == -1;
    }

    /* renamed from: r */
    public static boolean m4115r(View view) {
        return (ViewCompat.getImportantForAccessibility(view) == 4 || ViewCompat.getImportantForAccessibility(view) == 2) ? false : true;
    }

    /* renamed from: A */
    public void m4116A(View view, float f) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (f == layoutParams.f6848a) {
            return;
        }
        layoutParams.f6848a = f;
        m4125f(view, f);
    }

    /* renamed from: B */
    public final void m4117B(View view) {
        AccessibilityNodeInfoCompat.AccessibilityActionCompat accessibilityActionCompat = AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_DISMISS;
        ViewCompat.removeAccessibilityAction(view, accessibilityActionCompat.getId());
        if (!isDrawerOpen(view) || getDrawerLockMode(view) == 2) {
            return;
        }
        ViewCompat.replaceAccessibilityAction(view, accessibilityActionCompat, null, this.f6810C0);
    }

    /* renamed from: C */
    public final void m4118C(View view, boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if ((z || m4136t(childAt)) && !(z && childAt == view)) {
                ViewCompat.setImportantForAccessibility(childAt, 4);
            } else {
                ViewCompat.setImportantForAccessibility(childAt, 1);
            }
        }
    }

    /* renamed from: D */
    public void m4119D(int i, View view) {
        int i2;
        int viewDragState = this.f6820k.getViewDragState();
        int viewDragState2 = this.f6822l.getViewDragState();
        if (viewDragState == 1 || viewDragState2 == 1) {
            i2 = 1;
        } else {
            i2 = 2;
            if (viewDragState != 2 && viewDragState2 != 2) {
                i2 = 0;
            }
        }
        if (view != null && i == 0) {
            float f = ((LayoutParams) view.getLayoutParams()).f6848a;
            if (f == 0.0f) {
                m4123d(view);
            } else if (f == 1.0f) {
                m4124e(view);
            }
        }
        if (i2 != this.f6825o) {
            this.f6825o = i2;
            List<DrawerListener> list = this.f6839x;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    this.f6839x.get(size).onDrawerStateChanged(i2);
                }
            }
        }
    }

    /* renamed from: a */
    public void m4120a() {
        if (this.f6835v) {
            return;
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            getChildAt(i).dispatchTouchEvent(obtain);
        }
        obtain.recycle();
        this.f6835v = true;
    }

    public void addDrawerListener(@NonNull DrawerListener drawerListener) {
        if (drawerListener == null) {
            return;
        }
        if (this.f6839x == null) {
            this.f6839x = new ArrayList();
        }
        this.f6839x.add(drawerListener);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        if (getDescendantFocusability() == 393216) {
            return;
        }
        int childCount = getChildCount();
        boolean z = false;
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if (!m4136t(childAt)) {
                this.f6844z0.add(childAt);
            } else if (isDrawerOpen(childAt)) {
                childAt.addFocusables(arrayList, i, i2);
                z = true;
            }
        }
        if (!z) {
            int size = this.f6844z0.size();
            for (int i4 = 0; i4 < size; i4++) {
                View view = this.f6844z0.get(i4);
                if (view.getVisibility() == 0) {
                    view.addFocusables(arrayList, i, i2);
                }
            }
        }
        this.f6844z0.clear();
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        if (m4128i() != null || m4136t(view)) {
            ViewCompat.setImportantForAccessibility(view, 4);
        } else {
            ViewCompat.setImportantForAccessibility(view, 1);
        }
        if (f6804N0) {
            return;
        }
        ViewCompat.setAccessibilityDelegate(view, this.f6814e);
    }

    /* renamed from: b */
    public boolean m4121b(View view, int i) {
        return (m4130k(view) & i) == i;
    }

    /* renamed from: c */
    public void m4122c(boolean z) {
        int childCount = getChildCount();
        boolean z2 = false;
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (m4136t(childAt) && (!z || layoutParams.f6849b)) {
                z2 |= m4121b(childAt, 3) ? this.f6820k.smoothSlideViewTo(childAt, -childAt.getWidth(), childAt.getTop()) : this.f6822l.smoothSlideViewTo(childAt, getWidth(), childAt.getTop());
                layoutParams.f6849b = false;
            }
        }
        this.f6823m.m4150c();
        this.f6824n.m4150c();
        if (z2) {
            invalidate();
        }
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    @Override // androidx.customview.widget.Openable
    public void close() {
        closeDrawer(GravityCompat.START);
    }

    public void closeDrawer(@NonNull View view) {
        closeDrawer(view, true);
    }

    public void closeDrawers() {
        m4122c(false);
    }

    @Override // android.view.View
    public void computeScroll() {
        int childCount = getChildCount();
        float f = 0.0f;
        for (int i = 0; i < childCount; i++) {
            f = Math.max(f, ((LayoutParams) getChildAt(i).getLayoutParams()).f6848a);
        }
        this.f6818i = f;
        boolean continueSettling = this.f6820k.continueSettling(true);
        boolean continueSettling2 = this.f6822l.continueSettling(true);
        if (continueSettling || continueSettling2) {
            ViewCompat.postInvalidateOnAnimation(this);
        }
    }

    /* renamed from: d */
    public void m4123d(View view) {
        View rootView;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if ((layoutParams.f6850c & 1) == 1) {
            layoutParams.f6850c = 0;
            List<DrawerListener> list = this.f6839x;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    this.f6839x.get(size).onDrawerClosed(view);
                }
            }
            m4118C(view, false);
            m4117B(view);
            if (!hasWindowFocus() || (rootView = getRootView()) == null) {
                return;
            }
            rootView.sendAccessibilityEvent(32);
        }
    }

    @Override // android.view.View
    public boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        if ((motionEvent.getSource() & 2) == 0 || motionEvent.getAction() == 10 || this.f6818i <= 0.0f) {
            return super.dispatchGenericMotionEvent(motionEvent);
        }
        int childCount = getChildCount();
        if (childCount == 0) {
            return false;
        }
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        for (int i = childCount - 1; i >= 0; i--) {
            View childAt = getChildAt(i);
            if (m4137u(x, y, childAt) && !m4135s(childAt) && m4126g(motionEvent, childAt)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j) {
        int height = getHeight();
        boolean m4135s = m4135s(view);
        int width = getWidth();
        int save = canvas.save();
        int i = 0;
        if (m4135s) {
            int childCount = getChildCount();
            int i2 = 0;
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = getChildAt(i3);
                if (childAt != view && childAt.getVisibility() == 0 && m4114o(childAt) && m4136t(childAt) && childAt.getHeight() >= height) {
                    if (m4121b(childAt, 3)) {
                        int right = childAt.getRight();
                        if (right > i2) {
                            i2 = right;
                        }
                    } else {
                        int left = childAt.getLeft();
                        if (left < width) {
                            width = left;
                        }
                    }
                }
            }
            canvas.clipRect(i2, 0, width, getHeight());
            i = i2;
        }
        boolean drawChild = super.drawChild(canvas, view, j);
        canvas.restoreToCount(save);
        float f = this.f6818i;
        if (f > 0.0f && m4135s) {
            this.f6819j.setColor((this.f6817h & 16777215) | (((int) ((((-16777216) & r2) >>> 24) * f)) << 24));
            canvas.drawRect(i, 0.0f, width, getHeight(), this.f6819j);
        } else if (this.f6812O != null && m4121b(view, 3)) {
            int intrinsicWidth = this.f6812O.getIntrinsicWidth();
            int right2 = view.getRight();
            float max = Math.max(0.0f, Math.min(right2 / this.f6820k.getEdgeSize(), 1.0f));
            this.f6812O.setBounds(right2, view.getTop(), intrinsicWidth + right2, view.getBottom());
            this.f6812O.setAlpha((int) (max * 255.0f));
            this.f6812O.draw(canvas);
        } else if (this.f6813Q != null && m4121b(view, 5)) {
            int intrinsicWidth2 = this.f6813Q.getIntrinsicWidth();
            int left2 = view.getLeft();
            float max2 = Math.max(0.0f, Math.min((getWidth() - left2) / this.f6822l.getEdgeSize(), 1.0f));
            this.f6813Q.setBounds(left2 - intrinsicWidth2, view.getTop(), left2, view.getBottom());
            this.f6813Q.setAlpha((int) (max2 * 255.0f));
            this.f6813Q.draw(canvas);
        }
        return drawChild;
    }

    /* renamed from: e */
    public void m4124e(View view) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if ((layoutParams.f6850c & 1) == 0) {
            layoutParams.f6850c = 1;
            List<DrawerListener> list = this.f6839x;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    this.f6839x.get(size).onDrawerOpened(view);
                }
            }
            m4118C(view, true);
            m4117B(view);
            if (hasWindowFocus()) {
                sendAccessibilityEvent(32);
            }
        }
    }

    /* renamed from: f */
    public void m4125f(View view, float f) {
        List<DrawerListener> list = this.f6839x;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.f6839x.get(size).onDrawerSlide(view, f);
            }
        }
    }

    /* renamed from: g */
    public final boolean m4126g(MotionEvent motionEvent, View view) {
        if (!view.getMatrix().isIdentity()) {
            MotionEvent m4132m = m4132m(motionEvent, view);
            boolean dispatchGenericMotionEvent = view.dispatchGenericMotionEvent(m4132m);
            m4132m.recycle();
            return dispatchGenericMotionEvent;
        }
        float scrollX = getScrollX() - view.getLeft();
        float scrollY = getScrollY() - view.getTop();
        motionEvent.offsetLocation(scrollX, scrollY);
        boolean dispatchGenericMotionEvent2 = view.dispatchGenericMotionEvent(motionEvent);
        motionEvent.offsetLocation(-scrollX, -scrollY);
        return dispatchGenericMotionEvent2;
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -1);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LayoutParams) {
            return new LayoutParams((LayoutParams) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new LayoutParams(layoutParams);
    }

    public float getDrawerElevation() {
        if (f6805O0) {
            return this.f6815f;
        }
        return 0.0f;
    }

    public int getDrawerLockMode(int i) {
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        if (i == 3) {
            int i2 = this.f6829r;
            if (i2 != 3) {
                return i2;
            }
            int i3 = layoutDirection == 0 ? this.f6831t : this.f6833u;
            if (i3 != 3) {
                return i3;
            }
            return 0;
        }
        if (i == 5) {
            int i4 = this.f6830s;
            if (i4 != 3) {
                return i4;
            }
            int i5 = layoutDirection == 0 ? this.f6833u : this.f6831t;
            if (i5 != 3) {
                return i5;
            }
            return 0;
        }
        if (i == 8388611) {
            int i6 = this.f6831t;
            if (i6 != 3) {
                return i6;
            }
            int i7 = layoutDirection == 0 ? this.f6829r : this.f6830s;
            if (i7 != 3) {
                return i7;
            }
            return 0;
        }
        if (i != 8388613) {
            return 0;
        }
        int i8 = this.f6833u;
        if (i8 != 3) {
            return i8;
        }
        int i9 = layoutDirection == 0 ? this.f6830s : this.f6829r;
        if (i9 != 3) {
            return i9;
        }
        return 0;
    }

    @Nullable
    public CharSequence getDrawerTitle(int i) {
        int absoluteGravity = GravityCompat.getAbsoluteGravity(i, ViewCompat.getLayoutDirection(this));
        if (absoluteGravity == 3) {
            return this.f6821k0;
        }
        if (absoluteGravity == 5) {
            return this.f6828q0;
        }
        return null;
    }

    @Nullable
    public Drawable getStatusBarBackgroundDrawable() {
        return this.f6811J;
    }

    /* renamed from: h */
    public View m4127h(int i) {
        int absoluteGravity = GravityCompat.getAbsoluteGravity(i, ViewCompat.getLayoutDirection(this)) & 7;
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if ((m4130k(childAt) & 7) == absoluteGravity) {
                return childAt;
            }
        }
        return null;
    }

    /* renamed from: i */
    public View m4128i() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if ((((LayoutParams) childAt.getLayoutParams()).f6850c & 1) == 1) {
                return childAt;
            }
        }
        return null;
    }

    public boolean isDrawerOpen(@NonNull View view) {
        if (m4136t(view)) {
            return (((LayoutParams) view.getLayoutParams()).f6850c & 1) == 1;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    public boolean isDrawerVisible(@NonNull View view) {
        if (m4136t(view)) {
            return ((LayoutParams) view.getLayoutParams()).f6848a > 0.0f;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    @Override // androidx.customview.widget.Openable
    public boolean isOpen() {
        return isDrawerOpen(GravityCompat.START);
    }

    /* renamed from: j */
    public View m4129j() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (m4136t(childAt) && isDrawerVisible(childAt)) {
                return childAt;
            }
        }
        return null;
    }

    /* renamed from: k */
    public int m4130k(View view) {
        return GravityCompat.getAbsoluteGravity(((LayoutParams) view.getLayoutParams()).gravity, ViewCompat.getLayoutDirection(this));
    }

    /* renamed from: l */
    public float m4131l(View view) {
        return ((LayoutParams) view.getLayoutParams()).f6848a;
    }

    /* renamed from: m */
    public final MotionEvent m4132m(MotionEvent motionEvent, View view) {
        float scrollX = getScrollX() - view.getLeft();
        float scrollY = getScrollY() - view.getTop();
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.offsetLocation(scrollX, scrollY);
        Matrix matrix = view.getMatrix();
        if (!matrix.isIdentity()) {
            if (this.f6809B0 == null) {
                this.f6809B0 = new Matrix();
            }
            matrix.invert(this.f6809B0);
            obtain.transform(this.f6809B0);
        }
        return obtain;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f6827q = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f6827q = true;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.f6834u0 || this.f6811J == null) {
            return;
        }
        Object obj = this.f6832t0;
        int systemWindowInsetTop = obj != null ? ((WindowInsets) obj).getSystemWindowInsetTop() : 0;
        if (systemWindowInsetTop > 0) {
            this.f6811J.setBounds(0, 0, getWidth(), systemWindowInsetTop);
            this.f6811J.draw(canvas);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x001b, code lost:
    
        if (r0 != 3) goto L13;
     */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onInterceptTouchEvent(android.view.MotionEvent r7) {
        /*
            r6 = this;
            int r0 = r7.getActionMasked()
            androidx.customview.widget.ViewDragHelper r1 = r6.f6820k
            boolean r1 = r1.shouldInterceptTouchEvent(r7)
            androidx.customview.widget.ViewDragHelper r2 = r6.f6822l
            boolean r2 = r2.shouldInterceptTouchEvent(r7)
            r1 = r1 | r2
            r2 = 1
            r3 = 0
            if (r0 == 0) goto L38
            if (r0 == r2) goto L31
            r7 = 2
            r4 = 3
            if (r0 == r7) goto L1e
            if (r0 == r4) goto L31
            goto L36
        L1e:
            androidx.customview.widget.ViewDragHelper r7 = r6.f6820k
            boolean r7 = r7.checkTouchSlop(r4)
            if (r7 == 0) goto L36
            androidx.drawerlayout.widget.DrawerLayout$e r7 = r6.f6823m
            r7.m4150c()
            androidx.drawerlayout.widget.DrawerLayout$e r7 = r6.f6824n
            r7.m4150c()
            goto L36
        L31:
            r6.m4122c(r2)
            r6.f6835v = r3
        L36:
            r7 = r3
            goto L60
        L38:
            float r0 = r7.getX()
            float r7 = r7.getY()
            r6.f6841y = r0
            r6.f6843z = r7
            float r4 = r6.f6818i
            r5 = 0
            int r4 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
            if (r4 <= 0) goto L5d
            androidx.customview.widget.ViewDragHelper r4 = r6.f6820k
            int r0 = (int) r0
            int r7 = (int) r7
            android.view.View r7 = r4.findTopChildUnder(r0, r7)
            if (r7 == 0) goto L5d
            boolean r7 = r6.m4135s(r7)
            if (r7 == 0) goto L5d
            r7 = r2
            goto L5e
        L5d:
            r7 = r3
        L5e:
            r6.f6835v = r3
        L60:
            if (r1 != 0) goto L70
            if (r7 != 0) goto L70
            boolean r7 = r6.m4133p()
            if (r7 != 0) goto L70
            boolean r6 = r6.f6835v
            if (r6 == 0) goto L6f
            goto L70
        L6f:
            r2 = r3
        L70:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.drawerlayout.widget.DrawerLayout.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i != 4 || !m4134q()) {
            return super.onKeyDown(i, keyEvent);
        }
        keyEvent.startTracking();
        return true;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (i != 4) {
            return super.onKeyUp(i, keyEvent);
        }
        View m4129j = m4129j();
        if (m4129j != null && getDrawerLockMode(m4129j) == 0) {
            closeDrawers();
        }
        return m4129j != null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        WindowInsets rootWindowInsets;
        float f;
        int i5;
        boolean z2 = true;
        this.f6826p = true;
        int i6 = i3 - i;
        int childCount = getChildCount();
        int i7 = 0;
        while (i7 < childCount) {
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (m4135s(childAt)) {
                    int i8 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                    childAt.layout(i8, ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, childAt.getMeasuredWidth() + i8, ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + childAt.getMeasuredHeight());
                } else {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (m4121b(childAt, 3)) {
                        float f2 = measuredWidth;
                        i5 = (-measuredWidth) + ((int) (layoutParams.f6848a * f2));
                        f = (measuredWidth + i5) / f2;
                    } else {
                        float f3 = measuredWidth;
                        f = (i6 - r11) / f3;
                        i5 = i6 - ((int) (layoutParams.f6848a * f3));
                    }
                    boolean z3 = f != layoutParams.f6848a ? z2 : false;
                    int i9 = layoutParams.gravity & 112;
                    if (i9 == 16) {
                        int i10 = i4 - i2;
                        int i11 = (i10 - measuredHeight) / 2;
                        int i12 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                        if (i11 < i12) {
                            i11 = i12;
                        } else {
                            int i13 = i11 + measuredHeight;
                            int i14 = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                            if (i13 > i10 - i14) {
                                i11 = (i10 - i14) - measuredHeight;
                            }
                        }
                        childAt.layout(i5, i11, measuredWidth + i5, measuredHeight + i11);
                    } else if (i9 != 80) {
                        int i15 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                        childAt.layout(i5, i15, measuredWidth + i5, measuredHeight + i15);
                    } else {
                        int i16 = i4 - i2;
                        childAt.layout(i5, (i16 - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin) - childAt.getMeasuredHeight(), measuredWidth + i5, i16 - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
                    }
                    if (z3) {
                        m4116A(childAt, f);
                    }
                    int i17 = layoutParams.f6848a > 0.0f ? 0 : 4;
                    if (childAt.getVisibility() != i17) {
                        childAt.setVisibility(i17);
                    }
                }
            }
            i7++;
            z2 = true;
        }
        if (f6807Q0 && (rootWindowInsets = getRootWindowInsets()) != null) {
            Insets systemGestureInsets = WindowInsetsCompat.toWindowInsetsCompat(rootWindowInsets).getSystemGestureInsets();
            ViewDragHelper viewDragHelper = this.f6820k;
            viewDragHelper.setEdgeSize(Math.max(viewDragHelper.getDefaultEdgeSize(), systemGestureInsets.left));
            ViewDragHelper viewDragHelper2 = this.f6822l;
            viewDragHelper2.setEdgeSize(Math.max(viewDragHelper2.getDefaultEdgeSize(), systemGestureInsets.right));
        }
        this.f6826p = false;
        this.f6827q = false;
    }

    @Override // android.view.View
    @SuppressLint({"WrongConstant"})
    public void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode != 1073741824 || mode2 != 1073741824) {
            if (!isInEditMode()) {
                throw new IllegalArgumentException("DrawerLayout must be measured with MeasureSpec.EXACTLY.");
            }
            if (mode == 0) {
                size = 300;
            }
            if (mode2 == 0) {
                size2 = 300;
            }
        }
        setMeasuredDimension(size, size2);
        boolean z = this.f6832t0 != null && ViewCompat.getFitsSystemWindows(this);
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        int childCount = getChildCount();
        boolean z2 = false;
        boolean z3 = false;
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (z) {
                    int absoluteGravity = GravityCompat.getAbsoluteGravity(layoutParams.gravity, layoutDirection);
                    if (ViewCompat.getFitsSystemWindows(childAt)) {
                        WindowInsets windowInsets = (WindowInsets) this.f6832t0;
                        if (absoluteGravity == 3) {
                            windowInsets = windowInsets.replaceSystemWindowInsets(windowInsets.getSystemWindowInsetLeft(), windowInsets.getSystemWindowInsetTop(), 0, windowInsets.getSystemWindowInsetBottom());
                        } else if (absoluteGravity == 5) {
                            windowInsets = windowInsets.replaceSystemWindowInsets(0, windowInsets.getSystemWindowInsetTop(), windowInsets.getSystemWindowInsetRight(), windowInsets.getSystemWindowInsetBottom());
                        }
                        childAt.dispatchApplyWindowInsets(windowInsets);
                    } else {
                        WindowInsets windowInsets2 = (WindowInsets) this.f6832t0;
                        if (absoluteGravity == 3) {
                            windowInsets2 = windowInsets2.replaceSystemWindowInsets(windowInsets2.getSystemWindowInsetLeft(), windowInsets2.getSystemWindowInsetTop(), 0, windowInsets2.getSystemWindowInsetBottom());
                        } else if (absoluteGravity == 5) {
                            windowInsets2 = windowInsets2.replaceSystemWindowInsets(0, windowInsets2.getSystemWindowInsetTop(), windowInsets2.getSystemWindowInsetRight(), windowInsets2.getSystemWindowInsetBottom());
                        }
                        ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = windowInsets2.getSystemWindowInsetLeft();
                        ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = windowInsets2.getSystemWindowInsetTop();
                        ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = windowInsets2.getSystemWindowInsetRight();
                        ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = windowInsets2.getSystemWindowInsetBottom();
                    }
                }
                if (m4135s(childAt)) {
                    childAt.measure(View.MeasureSpec.makeMeasureSpec((size - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, 1073741824), View.MeasureSpec.makeMeasureSpec((size2 - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin, 1073741824));
                } else {
                    if (!m4136t(childAt)) {
                        throw new IllegalStateException("Child " + childAt + " at index " + i3 + " does not have a valid layout_gravity - must be Gravity.LEFT, Gravity.RIGHT or Gravity.NO_GRAVITY");
                    }
                    if (f6805O0) {
                        float elevation = ViewCompat.getElevation(childAt);
                        float f = this.f6815f;
                        if (elevation != f) {
                            ViewCompat.setElevation(childAt, f);
                        }
                    }
                    int m4130k = m4130k(childAt) & 7;
                    boolean z4 = m4130k == 3;
                    if ((z4 && z2) || (!z4 && z3)) {
                        throw new IllegalStateException("Child drawer has absolute gravity " + m4113n(m4130k) + " but this " + f6794D0 + " already has a drawer view along that edge");
                    }
                    if (z4) {
                        z2 = true;
                    } else {
                        z3 = true;
                    }
                    childAt.measure(ViewGroup.getChildMeasureSpec(i, this.f6816g + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, ((ViewGroup.MarginLayoutParams) layoutParams).width), ViewGroup.getChildMeasureSpec(i2, ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin, ((ViewGroup.MarginLayoutParams) layoutParams).height));
                }
            }
        }
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        View m4127h;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        int i = savedState.openDrawerGravity;
        if (i != 0 && (m4127h = m4127h(i)) != null) {
            openDrawer(m4127h);
        }
        int i2 = savedState.lockModeLeft;
        if (i2 != 3) {
            setDrawerLockMode(i2, 3);
        }
        int i3 = savedState.lockModeRight;
        if (i3 != 3) {
            setDrawerLockMode(i3, 5);
        }
        int i4 = savedState.lockModeStart;
        if (i4 != 3) {
            setDrawerLockMode(i4, GravityCompat.START);
        }
        int i5 = savedState.lockModeEnd;
        if (i5 != 3) {
            setDrawerLockMode(i5, 8388613);
        }
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i) {
        m4142z();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            LayoutParams layoutParams = (LayoutParams) getChildAt(i).getLayoutParams();
            int i2 = layoutParams.f6850c;
            boolean z = i2 == 1;
            boolean z2 = i2 == 2;
            if (z || z2) {
                savedState.openDrawerGravity = layoutParams.gravity;
                break;
            }
        }
        savedState.lockModeLeft = this.f6829r;
        savedState.lockModeRight = this.f6830s;
        savedState.lockModeStart = this.f6831t;
        savedState.lockModeEnd = this.f6833u;
        return savedState;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0058, code lost:
    
        if (getDrawerLockMode(r7) != 2) goto L20;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r7) {
        /*
            r6 = this;
            androidx.customview.widget.ViewDragHelper r0 = r6.f6820k
            r0.processTouchEvent(r7)
            androidx.customview.widget.ViewDragHelper r0 = r6.f6822l
            r0.processTouchEvent(r7)
            int r0 = r7.getAction()
            r0 = r0 & 255(0xff, float:3.57E-43)
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L5f
            if (r0 == r2) goto L20
            r7 = 3
            if (r0 == r7) goto L1a
            goto L6d
        L1a:
            r6.m4122c(r2)
            r6.f6835v = r1
            goto L6d
        L20:
            float r0 = r7.getX()
            float r7 = r7.getY()
            androidx.customview.widget.ViewDragHelper r3 = r6.f6820k
            int r4 = (int) r0
            int r5 = (int) r7
            android.view.View r3 = r3.findTopChildUnder(r4, r5)
            if (r3 == 0) goto L5a
            boolean r3 = r6.m4135s(r3)
            if (r3 == 0) goto L5a
            float r3 = r6.f6841y
            float r0 = r0 - r3
            float r3 = r6.f6843z
            float r7 = r7 - r3
            androidx.customview.widget.ViewDragHelper r3 = r6.f6820k
            int r3 = r3.getTouchSlop()
            float r0 = r0 * r0
            float r7 = r7 * r7
            float r0 = r0 + r7
            int r3 = r3 * r3
            float r7 = (float) r3
            int r7 = (r0 > r7 ? 1 : (r0 == r7 ? 0 : -1))
            if (r7 >= 0) goto L5a
            android.view.View r7 = r6.m4128i()
            if (r7 == 0) goto L5a
            int r7 = r6.getDrawerLockMode(r7)
            r0 = 2
            if (r7 != r0) goto L5b
        L5a:
            r1 = r2
        L5b:
            r6.m4122c(r1)
            goto L6d
        L5f:
            float r0 = r7.getX()
            float r7 = r7.getY()
            r6.f6841y = r0
            r6.f6843z = r7
            r6.f6835v = r1
        L6d:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.drawerlayout.widget.DrawerLayout.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // androidx.customview.widget.Openable
    public void open() {
        openDrawer(GravityCompat.START);
    }

    public void openDrawer(@NonNull View view) {
        openDrawer(view, true);
    }

    /* renamed from: p */
    public final boolean m4133p() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (((LayoutParams) getChildAt(i).getLayoutParams()).f6849b) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: q */
    public final boolean m4134q() {
        return m4129j() != null;
    }

    public void removeDrawerListener(@NonNull DrawerListener drawerListener) {
        List<DrawerListener> list;
        if (drawerListener == null || (list = this.f6839x) == null) {
            return;
        }
        list.remove(drawerListener);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        super.requestDisallowInterceptTouchEvent(z);
        if (z) {
            m4122c(true);
        }
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.f6826p) {
            return;
        }
        super.requestLayout();
    }

    /* renamed from: s */
    public boolean m4135s(View view) {
        return ((LayoutParams) view.getLayoutParams()).gravity == 0;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setChildInsets(Object obj, boolean z) {
        this.f6832t0 = obj;
        this.f6834u0 = z;
        setWillNotDraw(!z && getBackground() == null);
        requestLayout();
    }

    public void setDrawerElevation(float f) {
        this.f6815f = f;
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (m4136t(childAt)) {
                ViewCompat.setElevation(childAt, this.f6815f);
            }
        }
    }

    @Deprecated
    public void setDrawerListener(DrawerListener drawerListener) {
        DrawerListener drawerListener2 = this.f6837w;
        if (drawerListener2 != null) {
            removeDrawerListener(drawerListener2);
        }
        if (drawerListener != null) {
            addDrawerListener(drawerListener);
        }
        this.f6837w = drawerListener;
    }

    public void setDrawerLockMode(int i) {
        setDrawerLockMode(i, 3);
        setDrawerLockMode(i, 5);
    }

    public void setDrawerShadow(Drawable drawable, int i) {
        if (f6805O0) {
            return;
        }
        if ((i & GravityCompat.START) == 8388611) {
            this.f6836v0 = drawable;
        } else if ((i & 8388613) == 8388613) {
            this.f6838w0 = drawable;
        } else if ((i & 3) == 3) {
            this.f6840x0 = drawable;
        } else if ((i & 5) != 5) {
            return;
        } else {
            this.f6842y0 = drawable;
        }
        m4142z();
        invalidate();
    }

    public void setDrawerTitle(int i, @Nullable CharSequence charSequence) {
        int absoluteGravity = GravityCompat.getAbsoluteGravity(i, ViewCompat.getLayoutDirection(this));
        if (absoluteGravity == 3) {
            this.f6821k0 = charSequence;
        } else if (absoluteGravity == 5) {
            this.f6828q0 = charSequence;
        }
    }

    public void setScrimColor(@ColorInt int i) {
        this.f6817h = i;
        invalidate();
    }

    public void setStatusBarBackground(@Nullable Drawable drawable) {
        this.f6811J = drawable;
        invalidate();
    }

    public void setStatusBarBackgroundColor(@ColorInt int i) {
        this.f6811J = new ColorDrawable(i);
        invalidate();
    }

    /* renamed from: t */
    public boolean m4136t(View view) {
        int absoluteGravity = GravityCompat.getAbsoluteGravity(((LayoutParams) view.getLayoutParams()).gravity, ViewCompat.getLayoutDirection(view));
        return ((absoluteGravity & 3) == 0 && (absoluteGravity & 5) == 0) ? false : true;
    }

    /* renamed from: u */
    public final boolean m4137u(float f, float f2, View view) {
        if (this.f6808A0 == null) {
            this.f6808A0 = new Rect();
        }
        view.getHitRect(this.f6808A0);
        return this.f6808A0.contains((int) f, (int) f2);
    }

    /* renamed from: v */
    public final void m4138v(Drawable drawable, int i) {
        if (drawable == null || !DrawableCompat.isAutoMirrored(drawable)) {
            return;
        }
        DrawableCompat.setLayoutDirection(drawable, i);
    }

    /* renamed from: w */
    public void m4139w(View view, float f) {
        float m4131l = m4131l(view);
        float width = view.getWidth();
        int i = ((int) (width * f)) - ((int) (m4131l * width));
        if (!m4121b(view, 3)) {
            i = -i;
        }
        view.offsetLeftAndRight(i);
        m4116A(view, f);
    }

    /* renamed from: x */
    public final Drawable m4140x() {
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        if (layoutDirection == 0) {
            Drawable drawable = this.f6836v0;
            if (drawable != null) {
                m4138v(drawable, layoutDirection);
                return this.f6836v0;
            }
        } else {
            Drawable drawable2 = this.f6838w0;
            if (drawable2 != null) {
                m4138v(drawable2, layoutDirection);
                return this.f6838w0;
            }
        }
        return this.f6840x0;
    }

    /* renamed from: y */
    public final Drawable m4141y() {
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        if (layoutDirection == 0) {
            Drawable drawable = this.f6838w0;
            if (drawable != null) {
                m4138v(drawable, layoutDirection);
                return this.f6838w0;
            }
        } else {
            Drawable drawable2 = this.f6836v0;
            if (drawable2 != null) {
                m4138v(drawable2, layoutDirection);
                return this.f6836v0;
            }
        }
        return this.f6842y0;
    }

    /* renamed from: z */
    public final void m4142z() {
        if (f6805O0) {
            return;
        }
        this.f6812O = m4140x();
        this.f6813Q = m4141y();
    }

    public DrawerLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C1004R.attr.drawerLayoutStyle);
    }

    public void closeDrawer(@NonNull View view, boolean z) {
        if (m4136t(view)) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (this.f6827q) {
                layoutParams.f6848a = 0.0f;
                layoutParams.f6850c = 0;
            } else if (z) {
                layoutParams.f6850c |= 4;
                if (m4121b(view, 3)) {
                    this.f6820k.smoothSlideViewTo(view, -view.getWidth(), view.getTop());
                } else {
                    this.f6822l.smoothSlideViewTo(view, getWidth(), view.getTop());
                }
            } else {
                m4139w(view, 0.0f);
                m4119D(0, view);
                view.setVisibility(4);
            }
            invalidate();
            return;
        }
        throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
    }

    public void openDrawer(@NonNull View view, boolean z) {
        if (m4136t(view)) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (this.f6827q) {
                layoutParams.f6848a = 1.0f;
                layoutParams.f6850c = 1;
                m4118C(view, true);
                m4117B(view);
            } else if (z) {
                layoutParams.f6850c |= 2;
                if (m4121b(view, 3)) {
                    this.f6820k.smoothSlideViewTo(view, 0, view.getTop());
                } else {
                    this.f6822l.smoothSlideViewTo(view, getWidth() - view.getWidth(), view.getTop());
                }
            } else {
                m4139w(view, 1.0f);
                m4119D(0, view);
                view.setVisibility(0);
            }
            invalidate();
            return;
        }
        throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
    }

    public DrawerLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f6814e = new C1009d();
        this.f6817h = -1728053248;
        this.f6819j = new Paint();
        this.f6827q = true;
        this.f6829r = 3;
        this.f6830s = 3;
        this.f6831t = 3;
        this.f6833u = 3;
        this.f6836v0 = null;
        this.f6838w0 = null;
        this.f6840x0 = null;
        this.f6842y0 = null;
        this.f6810C0 = new C1006a();
        setDescendantFocusability(262144);
        float f = getResources().getDisplayMetrics().density;
        this.f6816g = (int) ((64.0f * f) + 0.5f);
        float f2 = f * 400.0f;
        C1010e c1010e = new C1010e(3);
        this.f6823m = c1010e;
        C1010e c1010e2 = new C1010e(5);
        this.f6824n = c1010e2;
        ViewDragHelper create = ViewDragHelper.create(this, 1.0f, c1010e);
        this.f6820k = create;
        create.setEdgeTrackingEnabled(1);
        create.setMinVelocity(f2);
        c1010e.m4151d(create);
        ViewDragHelper create2 = ViewDragHelper.create(this, 1.0f, c1010e2);
        this.f6822l = create2;
        create2.setEdgeTrackingEnabled(2);
        create2.setMinVelocity(f2);
        c1010e2.m4151d(create2);
        setFocusableInTouchMode(true);
        ViewCompat.setImportantForAccessibility(this, 1);
        ViewCompat.setAccessibilityDelegate(this, new C1008c());
        setMotionEventSplittingEnabled(false);
        if (ViewCompat.getFitsSystemWindows(this)) {
            setOnApplyWindowInsetsListener(new ViewOnApplyWindowInsetsListenerC1007b());
            setSystemUiVisibility(1280);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(f6795E0);
            try {
                this.f6811J = obtainStyledAttributes.getDrawable(0);
            } finally {
                obtainStyledAttributes.recycle();
            }
        }
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, C1004R.styleable.DrawerLayout, i, 0);
        try {
            if (obtainStyledAttributes2.hasValue(C1004R.styleable.DrawerLayout_elevation)) {
                this.f6815f = obtainStyledAttributes2.getDimension(C1004R.styleable.DrawerLayout_elevation, 0.0f);
            } else {
                this.f6815f = getResources().getDimension(C1004R.dimen.def_drawer_elevation);
            }
            obtainStyledAttributes2.recycle();
            this.f6844z0 = new ArrayList<>();
        } catch (Throwable th) {
            obtainStyledAttributes2.recycle();
            throw th;
        }
    }

    public void setDrawerLockMode(int i, int i2) {
        View m4127h;
        int absoluteGravity = GravityCompat.getAbsoluteGravity(i2, ViewCompat.getLayoutDirection(this));
        if (i2 == 3) {
            this.f6829r = i;
        } else if (i2 == 5) {
            this.f6830s = i;
        } else if (i2 == 8388611) {
            this.f6831t = i;
        } else if (i2 == 8388613) {
            this.f6833u = i;
        }
        if (i != 0) {
            (absoluteGravity == 3 ? this.f6820k : this.f6822l).cancel();
        }
        if (i != 1) {
            if (i == 2 && (m4127h = m4127h(absoluteGravity)) != null) {
                openDrawer(m4127h);
                return;
            }
            return;
        }
        View m4127h2 = m4127h(absoluteGravity);
        if (m4127h2 != null) {
            closeDrawer(m4127h2);
        }
    }

    public void setStatusBarBackground(int i) {
        this.f6811J = i != 0 ? ContextCompat.getDrawable(getContext(), i) : null;
        invalidate();
    }

    public boolean isDrawerVisible(int i) {
        View m4127h = m4127h(i);
        if (m4127h != null) {
            return isDrawerVisible(m4127h);
        }
        return false;
    }

    /* loaded from: classes3.dex */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: d */
        public static final int f6845d = 1;

        /* renamed from: e */
        public static final int f6846e = 2;

        /* renamed from: f */
        public static final int f6847f = 4;

        /* renamed from: a */
        public float f6848a;

        /* renamed from: b */
        public boolean f6849b;

        /* renamed from: c */
        public int f6850c;
        public int gravity;

        public LayoutParams(@NonNull Context context, @Nullable AttributeSet attributeSet) {
            super(context, attributeSet);
            this.gravity = 0;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, DrawerLayout.f6803M0);
            this.gravity = obtainStyledAttributes.getInt(0, 0);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.gravity = 0;
        }

        public LayoutParams(int i, int i2, int i3) {
            this(i, i2);
            this.gravity = i3;
        }

        public LayoutParams(@NonNull LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.gravity = 0;
            this.gravity = layoutParams.gravity;
        }

        public LayoutParams(@NonNull ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.gravity = 0;
        }

        public LayoutParams(@NonNull ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.gravity = 0;
        }
    }

    public boolean isDrawerOpen(int i) {
        View m4127h = m4127h(i);
        if (m4127h != null) {
            return isDrawerOpen(m4127h);
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* loaded from: classes3.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C1005a();
        int lockModeEnd;
        int lockModeLeft;
        int lockModeRight;
        int lockModeStart;
        int openDrawerGravity;

        /* renamed from: androidx.drawerlayout.widget.DrawerLayout$SavedState$a */
        /* loaded from: classes3.dex */
        public class C1005a implements Parcelable.ClassLoaderCreator<SavedState> {
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

        public SavedState(@NonNull Parcel parcel, @Nullable ClassLoader classLoader) {
            super(parcel, classLoader);
            this.openDrawerGravity = 0;
            this.openDrawerGravity = parcel.readInt();
            this.lockModeLeft = parcel.readInt();
            this.lockModeRight = parcel.readInt();
            this.lockModeStart = parcel.readInt();
            this.lockModeEnd = parcel.readInt();
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.openDrawerGravity);
            parcel.writeInt(this.lockModeLeft);
            parcel.writeInt(this.lockModeRight);
            parcel.writeInt(this.lockModeStart);
            parcel.writeInt(this.lockModeEnd);
        }

        public SavedState(@NonNull Parcelable parcelable) {
            super(parcelable);
            this.openDrawerGravity = 0;
        }
    }

    public void setDrawerShadow(@DrawableRes int i, int i2) {
        setDrawerShadow(ContextCompat.getDrawable(getContext(), i), i2);
    }

    public int getDrawerLockMode(@NonNull View view) {
        if (m4136t(view)) {
            return getDrawerLockMode(((LayoutParams) view.getLayoutParams()).gravity);
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    public void setDrawerLockMode(int i, @NonNull View view) {
        if (m4136t(view)) {
            setDrawerLockMode(i, ((LayoutParams) view.getLayoutParams()).gravity);
            return;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer with appropriate layout_gravity");
    }

    public void closeDrawer(int i) {
        closeDrawer(i, true);
    }

    public void closeDrawer(int i, boolean z) {
        View m4127h = m4127h(i);
        if (m4127h != null) {
            closeDrawer(m4127h, z);
            return;
        }
        throw new IllegalArgumentException("No drawer view found with gravity " + m4113n(i));
    }

    public void openDrawer(int i) {
        openDrawer(i, true);
    }

    public void openDrawer(int i, boolean z) {
        View m4127h = m4127h(i);
        if (m4127h != null) {
            openDrawer(m4127h, z);
            return;
        }
        throw new IllegalArgumentException("No drawer view found with gravity " + m4113n(i));
    }
}
