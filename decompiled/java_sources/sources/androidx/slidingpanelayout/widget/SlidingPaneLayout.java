package androidx.slidingpanelayout.widget;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.FrameLayout;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.Insets;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.animation.PathInterpolatorCompat;
import androidx.customview.view.AbsSavedState;
import androidx.customview.widget.Openable;
import androidx.customview.widget.ViewDragHelper;
import androidx.slidingpanelayout.widget.FoldingFeatureObserver;
import androidx.transition.ChangeBounds;
import androidx.transition.TransitionManager;
import androidx.window.layout.FoldingFeature;
import androidx.window.layout.WindowInfoTracker;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes3.dex */
public class SlidingPaneLayout extends ViewGroup implements Openable {
    public static final int LOCK_MODE_LOCKED = 3;
    public static final int LOCK_MODE_LOCKED_CLOSED = 2;
    public static final int LOCK_MODE_LOCKED_OPEN = 1;
    public static final int LOCK_MODE_UNLOCKED = 0;

    /* renamed from: t0 */
    public static final String f10255t0 = "SlidingPaneLayout";

    /* renamed from: u0 */
    public static final int f10256u0 = 400;

    /* renamed from: v0 */
    public static final String f10257v0 = "androidx.slidingpanelayout.widget.SlidingPaneLayout";

    /* renamed from: w0 */
    public static boolean f10258w0 = true;

    /* renamed from: J */
    public FoldingFeatureObserver.OnFoldingFeatureChangeListener f10259J;

    /* renamed from: O */
    public FoldingFeatureObserver f10260O;

    /* renamed from: Q */
    public Method f10261Q;

    /* renamed from: e */
    public int f10262e;

    /* renamed from: f */
    public int f10263f;

    /* renamed from: g */
    public Drawable f10264g;

    /* renamed from: h */
    public Drawable f10265h;

    /* renamed from: i */
    public boolean f10266i;

    /* renamed from: j */
    public View f10267j;

    /* renamed from: k */
    public float f10268k;

    /* renamed from: k0 */
    public Field f10269k0;

    /* renamed from: l */
    public float f10270l;

    /* renamed from: m */
    public int f10271m;

    /* renamed from: n */
    public boolean f10272n;

    /* renamed from: o */
    public int f10273o;

    /* renamed from: p */
    public float f10274p;

    /* renamed from: q */
    public float f10275q;

    /* renamed from: q0 */
    public boolean f10276q0;

    /* renamed from: r */
    public final List<PanelSlideListener> f10277r;

    /* renamed from: s */
    @Nullable
    public PanelSlideListener f10278s;

    /* renamed from: t */
    public final ViewDragHelper f10279t;

    /* renamed from: u */
    public boolean f10280u;

    /* renamed from: v */
    public boolean f10281v;

    /* renamed from: w */
    public final Rect f10282w;

    /* renamed from: x */
    public final ArrayList<RunnableC1440c> f10283x;

    /* renamed from: y */
    public int f10284y;

    /* renamed from: z */
    public FoldingFeature f10285z;

    /* loaded from: classes3.dex */
    public interface PanelSlideListener {
        void onPanelClosed(@NonNull View view);

        void onPanelOpened(@NonNull View view);

        void onPanelSlide(@NonNull View view, float f);
    }

    /* loaded from: classes3.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C1437a();
        boolean isOpen;
        int mLockMode;

        /* renamed from: androidx.slidingpanelayout.widget.SlidingPaneLayout$SavedState$a */
        /* loaded from: classes3.dex */
        public class C1437a implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.isOpen ? 1 : 0);
            parcel.writeInt(this.mLockMode);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.isOpen = parcel.readInt() != 0;
            this.mLockMode = parcel.readInt();
        }
    }

    /* loaded from: classes3.dex */
    public static class SimplePanelSlideListener implements PanelSlideListener {
        @Override // androidx.slidingpanelayout.widget.SlidingPaneLayout.PanelSlideListener
        public void onPanelClosed(@NonNull View view) {
        }

        @Override // androidx.slidingpanelayout.widget.SlidingPaneLayout.PanelSlideListener
        public void onPanelOpened(@NonNull View view) {
        }

        @Override // androidx.slidingpanelayout.widget.SlidingPaneLayout.PanelSlideListener
        public void onPanelSlide(@NonNull View view, float f) {
        }
    }

    /* renamed from: androidx.slidingpanelayout.widget.SlidingPaneLayout$a */
    /* loaded from: classes3.dex */
    public class C1438a implements FoldingFeatureObserver.OnFoldingFeatureChangeListener {
        public C1438a() {
        }

        @Override // androidx.slidingpanelayout.widget.FoldingFeatureObserver.OnFoldingFeatureChangeListener
        public void onFoldingFeatureChange(@NonNull FoldingFeature foldingFeature) {
            SlidingPaneLayout.this.f10285z = foldingFeature;
            ChangeBounds changeBounds = new ChangeBounds();
            changeBounds.setDuration(300L);
            changeBounds.setInterpolator(PathInterpolatorCompat.create(0.2f, 0.0f, 0.0f, 1.0f));
            TransitionManager.beginDelayedTransition(SlidingPaneLayout.this, changeBounds);
            SlidingPaneLayout.this.requestLayout();
        }
    }

    /* renamed from: androidx.slidingpanelayout.widget.SlidingPaneLayout$b */
    /* loaded from: classes3.dex */
    public class C1439b extends AccessibilityDelegateCompat {

        /* renamed from: d */
        public final Rect f10291d = new Rect();

        public C1439b() {
        }

        /* renamed from: e */
        public final void m6404e(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat2) {
            Rect rect = this.f10291d;
            accessibilityNodeInfoCompat2.getBoundsInScreen(rect);
            accessibilityNodeInfoCompat.setBoundsInScreen(rect);
            accessibilityNodeInfoCompat.setVisibleToUser(accessibilityNodeInfoCompat2.isVisibleToUser());
            accessibilityNodeInfoCompat.setPackageName(accessibilityNodeInfoCompat2.getPackageName());
            accessibilityNodeInfoCompat.setClassName(accessibilityNodeInfoCompat2.getClassName());
            accessibilityNodeInfoCompat.setContentDescription(accessibilityNodeInfoCompat2.getContentDescription());
            accessibilityNodeInfoCompat.setEnabled(accessibilityNodeInfoCompat2.isEnabled());
            accessibilityNodeInfoCompat.setClickable(accessibilityNodeInfoCompat2.isClickable());
            accessibilityNodeInfoCompat.setFocusable(accessibilityNodeInfoCompat2.isFocusable());
            accessibilityNodeInfoCompat.setFocused(accessibilityNodeInfoCompat2.isFocused());
            accessibilityNodeInfoCompat.setAccessibilityFocused(accessibilityNodeInfoCompat2.isAccessibilityFocused());
            accessibilityNodeInfoCompat.setSelected(accessibilityNodeInfoCompat2.isSelected());
            accessibilityNodeInfoCompat.setLongClickable(accessibilityNodeInfoCompat2.isLongClickable());
            accessibilityNodeInfoCompat.addAction(accessibilityNodeInfoCompat2.getActions());
            accessibilityNodeInfoCompat.setMovementGranularities(accessibilityNodeInfoCompat2.getMovementGranularities());
        }

        /* renamed from: f */
        public boolean m6405f(View view) {
            return SlidingPaneLayout.this.m6392i(view);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            accessibilityEvent.setClassName(SlidingPaneLayout.f10257v0);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            AccessibilityNodeInfoCompat obtain = AccessibilityNodeInfoCompat.obtain(accessibilityNodeInfoCompat);
            super.onInitializeAccessibilityNodeInfo(view, obtain);
            m6404e(accessibilityNodeInfoCompat, obtain);
            obtain.recycle();
            accessibilityNodeInfoCompat.setClassName(SlidingPaneLayout.f10257v0);
            accessibilityNodeInfoCompat.setSource(view);
            Object parentForAccessibility = ViewCompat.getParentForAccessibility(view);
            if (parentForAccessibility instanceof View) {
                accessibilityNodeInfoCompat.setParent((View) parentForAccessibility);
            }
            int childCount = SlidingPaneLayout.this.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = SlidingPaneLayout.this.getChildAt(i);
                if (!m6405f(childAt) && childAt.getVisibility() == 0) {
                    ViewCompat.setImportantForAccessibility(childAt, 1);
                    accessibilityNodeInfoCompat.addChild(childAt);
                }
            }
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            if (m6405f(view)) {
                return false;
            }
            return super.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
        }
    }

    /* renamed from: androidx.slidingpanelayout.widget.SlidingPaneLayout$c */
    /* loaded from: classes3.dex */
    public class RunnableC1440c implements Runnable {

        /* renamed from: e */
        public final View f10293e;

        public RunnableC1440c(View view) {
            this.f10293e = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f10293e.getParent() == SlidingPaneLayout.this) {
                this.f10293e.setLayerType(0, null);
                SlidingPaneLayout.this.m6391h(this.f10293e);
            }
            SlidingPaneLayout.this.f10283x.remove(this);
        }
    }

    /* renamed from: androidx.slidingpanelayout.widget.SlidingPaneLayout$d */
    /* loaded from: classes3.dex */
    public class C1441d extends ViewDragHelper.Callback {
        public C1441d() {
        }

        /* renamed from: a */
        public final boolean m6406a() {
            SlidingPaneLayout slidingPaneLayout = SlidingPaneLayout.this;
            if (slidingPaneLayout.f10272n || slidingPaneLayout.getLockMode() == 3) {
                return false;
            }
            if (SlidingPaneLayout.this.isOpen() && SlidingPaneLayout.this.getLockMode() == 1) {
                return false;
            }
            return SlidingPaneLayout.this.isOpen() || SlidingPaneLayout.this.getLockMode() != 2;
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int clampViewPositionHorizontal(View view, int i, int i2) {
            LayoutParams layoutParams = (LayoutParams) SlidingPaneLayout.this.f10267j.getLayoutParams();
            if (SlidingPaneLayout.this.m6393j()) {
                int width = SlidingPaneLayout.this.getWidth() - ((SlidingPaneLayout.this.getPaddingRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin) + SlidingPaneLayout.this.f10267j.getWidth());
                return Math.max(Math.min(i, width), width - SlidingPaneLayout.this.f10271m);
            }
            int paddingLeft = SlidingPaneLayout.this.getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
            return Math.min(Math.max(i, paddingLeft), SlidingPaneLayout.this.f10271m + paddingLeft);
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int clampViewPositionVertical(View view, int i, int i2) {
            return view.getTop();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public int getViewHorizontalDragRange(View view) {
            return SlidingPaneLayout.this.f10271m;
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onEdgeDragStarted(int i, int i2) {
            if (m6406a()) {
                SlidingPaneLayout slidingPaneLayout = SlidingPaneLayout.this;
                slidingPaneLayout.f10279t.captureChildView(slidingPaneLayout.f10267j, i2);
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onEdgeTouched(int i, int i2) {
            if (m6406a()) {
                SlidingPaneLayout slidingPaneLayout = SlidingPaneLayout.this;
                slidingPaneLayout.f10279t.captureChildView(slidingPaneLayout.f10267j, i2);
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewCaptured(View view, int i) {
            SlidingPaneLayout.this.m6397o();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewDragStateChanged(int i) {
            if (SlidingPaneLayout.this.f10279t.getViewDragState() == 0) {
                SlidingPaneLayout slidingPaneLayout = SlidingPaneLayout.this;
                if (slidingPaneLayout.f10268k != 1.0f) {
                    slidingPaneLayout.m6389c(slidingPaneLayout.f10267j);
                    SlidingPaneLayout.this.f10280u = true;
                } else {
                    slidingPaneLayout.m6400r(slidingPaneLayout.f10267j);
                    SlidingPaneLayout slidingPaneLayout2 = SlidingPaneLayout.this;
                    slidingPaneLayout2.m6388b(slidingPaneLayout2.f10267j);
                    SlidingPaneLayout.this.f10280u = false;
                }
            }
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewPositionChanged(View view, int i, int i2, int i3, int i4) {
            SlidingPaneLayout.this.m6394l(i);
            SlidingPaneLayout.this.invalidate();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public void onViewReleased(View view, float f, float f2) {
            int paddingLeft;
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (SlidingPaneLayout.this.m6393j()) {
                int paddingRight = SlidingPaneLayout.this.getPaddingRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                if (f < 0.0f || (f == 0.0f && SlidingPaneLayout.this.f10268k > 0.5f)) {
                    paddingRight += SlidingPaneLayout.this.f10271m;
                }
                paddingLeft = (SlidingPaneLayout.this.getWidth() - paddingRight) - SlidingPaneLayout.this.f10267j.getWidth();
            } else {
                paddingLeft = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + SlidingPaneLayout.this.getPaddingLeft();
                if (f > 0.0f || (f == 0.0f && SlidingPaneLayout.this.f10268k > 0.5f)) {
                    paddingLeft += SlidingPaneLayout.this.f10271m;
                }
            }
            SlidingPaneLayout.this.f10279t.settleCapturedViewAt(paddingLeft, view.getTop());
            SlidingPaneLayout.this.invalidate();
        }

        @Override // androidx.customview.widget.ViewDragHelper.Callback
        public boolean tryCaptureView(View view, int i) {
            if (m6406a()) {
                return ((LayoutParams) view.getLayoutParams()).f10287a;
            }
            return false;
        }
    }

    /* renamed from: androidx.slidingpanelayout.widget.SlidingPaneLayout$e */
    /* loaded from: classes3.dex */
    public static class C1442e extends FrameLayout {
        public C1442e(View view) {
            super(view.getContext());
            addView(view);
        }

        @Override // android.view.View
        public boolean onGenericMotionEvent(MotionEvent motionEvent) {
            return true;
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return true;
        }
    }

    public SlidingPaneLayout(@NonNull Context context) {
        this(context, null);
    }

    @Nullable
    /* renamed from: e */
    public static Activity m6382e(Context context) {
        while (context instanceof ContextWrapper) {
            if (context instanceof Activity) {
                return (Activity) context;
            }
            context = ((ContextWrapper) context).getBaseContext();
        }
        return null;
    }

    /* renamed from: f */
    public static Rect m6383f(@NonNull FoldingFeature foldingFeature, View view) {
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        int i = iArr[0];
        Rect rect = new Rect(i, iArr[1], view.getWidth() + i, iArr[1] + view.getWidth());
        Rect rect2 = new Rect(foldingFeature.getBounds());
        boolean intersect = rect2.intersect(rect);
        if ((rect2.width() == 0 && rect2.height() == 0) || !intersect) {
            return null;
        }
        rect2.offset(-iArr[0], -iArr[1]);
        return rect2;
    }

    /* renamed from: g */
    public static int m6384g(View view) {
        return view instanceof C1442e ? ViewCompat.getMinimumWidth(((C1442e) view).getChildAt(0)) : ViewCompat.getMinimumWidth(view);
    }

    private Insets getSystemGestureInsets() {
        WindowInsetsCompat rootWindowInsets;
        if (!f10258w0 || (rootWindowInsets = ViewCompat.getRootWindowInsets(this)) == null) {
            return null;
        }
        return rootWindowInsets.getSystemGestureInsets();
    }

    /* renamed from: k */
    public static int m6385k(@NonNull View view, int i, int i2) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        return ((ViewGroup.MarginLayoutParams) layoutParams).width == 0 && (layoutParams.weight > 0.0f ? 1 : (layoutParams.weight == 0.0f ? 0 : -1)) > 0 ? ViewGroup.getChildMeasureSpec(i, i2, ((ViewGroup.MarginLayoutParams) layoutParams).height) : View.MeasureSpec.makeMeasureSpec(view.getMeasuredHeight(), 1073741824);
    }

    /* renamed from: s */
    public static boolean m6386s(View view) {
        return view.isOpaque();
    }

    private void setFoldingFeatureObserver(FoldingFeatureObserver foldingFeatureObserver) {
        this.f10260O = foldingFeatureObserver;
        foldingFeatureObserver.setOnFoldingFeatureChangeListener(this.f10259J);
    }

    /* renamed from: a */
    public final boolean m6387a(int i) {
        if (!this.f10266i) {
            this.f10280u = false;
        }
        if (!this.f10281v && !m6398p(1.0f, i)) {
            return false;
        }
        this.f10280u = false;
        return true;
    }

    public void addPanelSlideListener(@NonNull PanelSlideListener panelSlideListener) {
        this.f10277r.add(panelSlideListener);
    }

    @Override // android.view.ViewGroup
    public void addView(@NonNull View view, int i, @Nullable ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() == 1) {
            super.addView(new C1442e(view), i, layoutParams);
        } else {
            super.addView(view, i, layoutParams);
        }
    }

    /* renamed from: b */
    public void m6388b(@NonNull View view) {
        Iterator<PanelSlideListener> it2 = this.f10277r.iterator();
        while (it2.hasNext()) {
            it2.next().onPanelClosed(view);
        }
        sendAccessibilityEvent(32);
    }

    /* renamed from: c */
    public void m6389c(@NonNull View view) {
        Iterator<PanelSlideListener> it2 = this.f10277r.iterator();
        while (it2.hasNext()) {
            it2.next().onPanelOpened(view);
        }
        sendAccessibilityEvent(32);
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
        if (z) {
            if (view.canScrollHorizontally(m6393j() ? i : -i)) {
                return true;
            }
        }
        return false;
    }

    @Deprecated
    public boolean canSlide() {
        return this.f10266i;
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    @Override // androidx.customview.widget.Openable
    public void close() {
        closePane();
    }

    public boolean closePane() {
        return m6387a(0);
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.f10279t.continueSettling(true)) {
            if (this.f10266i) {
                ViewCompat.postInvalidateOnAnimation(this);
            } else {
                this.f10279t.abort();
            }
        }
    }

    /* renamed from: d */
    public void m6390d(@NonNull View view) {
        Iterator<PanelSlideListener> it2 = this.f10277r.iterator();
        while (it2.hasNext()) {
            it2.next().onPanelSlide(view, this.f10268k);
        }
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        int i;
        int i2;
        super.draw(canvas);
        Drawable drawable = m6393j() ? this.f10265h : this.f10264g;
        View childAt = getChildCount() > 1 ? getChildAt(1) : null;
        if (childAt == null || drawable == null) {
            return;
        }
        int top = childAt.getTop();
        int bottom = childAt.getBottom();
        int intrinsicWidth = drawable.getIntrinsicWidth();
        if (m6393j()) {
            i2 = childAt.getRight();
            i = intrinsicWidth + i2;
        } else {
            int left = childAt.getLeft();
            int i3 = left - intrinsicWidth;
            i = left;
            i2 = i3;
        }
        drawable.setBounds(i2, top, i, bottom);
        drawable.draw(canvas);
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j) {
        if (m6393j() ^ isOpen()) {
            this.f10279t.setEdgeTrackingEnabled(1);
            Insets systemGestureInsets = getSystemGestureInsets();
            if (systemGestureInsets != null) {
                ViewDragHelper viewDragHelper = this.f10279t;
                viewDragHelper.setEdgeSize(Math.max(viewDragHelper.getDefaultEdgeSize(), systemGestureInsets.left));
            }
        } else {
            this.f10279t.setEdgeTrackingEnabled(2);
            Insets systemGestureInsets2 = getSystemGestureInsets();
            if (systemGestureInsets2 != null) {
                ViewDragHelper viewDragHelper2 = this.f10279t;
                viewDragHelper2.setEdgeSize(Math.max(viewDragHelper2.getDefaultEdgeSize(), systemGestureInsets2.right));
            }
        }
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int save = canvas.save();
        if (this.f10266i && !layoutParams.f10287a && this.f10267j != null) {
            canvas.getClipBounds(this.f10282w);
            if (m6393j()) {
                Rect rect = this.f10282w;
                rect.left = Math.max(rect.left, this.f10267j.getRight());
            } else {
                Rect rect2 = this.f10282w;
                rect2.right = Math.min(rect2.right, this.f10267j.getLeft());
            }
            canvas.clipRect(this.f10282w);
        }
        boolean drawChild = super.drawChild(canvas, view, j);
        canvas.restoreToCount(save);
        return drawChild;
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new LayoutParams(layoutParams);
    }

    @ColorInt
    @Deprecated
    public int getCoveredFadeColor() {
        return this.f10263f;
    }

    public final int getLockMode() {
        return this.f10284y;
    }

    @Px
    public int getParallaxDistance() {
        return this.f10273o;
    }

    @ColorInt
    @Deprecated
    public int getSliderFadeColor() {
        return this.f10262e;
    }

    /* renamed from: h */
    public void m6391h(View view) {
        ViewCompat.setLayerPaint(view, ((LayoutParams) view.getLayoutParams()).f10289c);
    }

    /* renamed from: i */
    public boolean m6392i(View view) {
        if (view == null) {
            return false;
        }
        return this.f10266i && ((LayoutParams) view.getLayoutParams()).f10288b && this.f10268k > 0.0f;
    }

    @Override // androidx.customview.widget.Openable
    public boolean isOpen() {
        return !this.f10266i || this.f10268k == 0.0f;
    }

    public boolean isSlideable() {
        return this.f10266i;
    }

    /* renamed from: j */
    public boolean m6393j() {
        return ViewCompat.getLayoutDirection(this) == 1;
    }

    /* renamed from: l */
    public void m6394l(int i) {
        if (this.f10267j == null) {
            this.f10268k = 0.0f;
            return;
        }
        boolean m6393j = m6393j();
        LayoutParams layoutParams = (LayoutParams) this.f10267j.getLayoutParams();
        int width = this.f10267j.getWidth();
        if (m6393j) {
            i = (getWidth() - i) - width;
        }
        float paddingRight = (i - ((m6393j ? getPaddingRight() : getPaddingLeft()) + (m6393j ? ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin : ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin))) / this.f10271m;
        this.f10268k = paddingRight;
        if (this.f10273o != 0) {
            m6396n(paddingRight);
        }
        m6390d(this.f10267j);
    }

    /* renamed from: m */
    public final boolean m6395m(int i) {
        if (!this.f10266i) {
            this.f10280u = true;
        }
        if (!this.f10281v && !m6398p(0.0f, i)) {
            return false;
        }
        this.f10280u = true;
        return true;
    }

    /* renamed from: n */
    public final void m6396n(float f) {
        boolean m6393j = m6393j();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt != this.f10267j) {
                float f2 = 1.0f - this.f10270l;
                int i2 = this.f10273o;
                this.f10270l = f;
                int i3 = ((int) (f2 * i2)) - ((int) ((1.0f - f) * i2));
                if (m6393j) {
                    i3 = -i3;
                }
                childAt.offsetLeftAndRight(i3);
            }
        }
    }

    /* renamed from: o */
    public void m6397o() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 4) {
                childAt.setVisibility(0);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        Activity m6382e;
        super.onAttachedToWindow();
        this.f10281v = true;
        if (this.f10260O == null || (m6382e = m6382e(getContext())) == null) {
            return;
        }
        this.f10260O.registerLayoutStateChangeCallback(m6382e);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f10281v = true;
        FoldingFeatureObserver foldingFeatureObserver = this.f10260O;
        if (foldingFeatureObserver != null) {
            foldingFeatureObserver.unregisterLayoutStateChangeCallback();
        }
        int size = this.f10283x.size();
        for (int i = 0; i < size; i++) {
            this.f10283x.get(i).run();
        }
        this.f10283x.clear();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z;
        View childAt;
        int actionMasked = motionEvent.getActionMasked();
        if (!this.f10266i && actionMasked == 0 && getChildCount() > 1 && (childAt = getChildAt(1)) != null) {
            this.f10280u = this.f10279t.isViewUnder(childAt, (int) motionEvent.getX(), (int) motionEvent.getY());
        }
        if (!this.f10266i || (this.f10272n && actionMasked != 0)) {
            this.f10279t.cancel();
            return super.onInterceptTouchEvent(motionEvent);
        }
        if (actionMasked == 3 || actionMasked == 1) {
            this.f10279t.cancel();
            return false;
        }
        if (actionMasked == 0) {
            this.f10272n = false;
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            this.f10274p = x;
            this.f10275q = y;
            if (this.f10279t.isViewUnder(this.f10267j, (int) x, (int) y) && m6392i(this.f10267j)) {
                z = true;
                return this.f10279t.shouldInterceptTouchEvent(motionEvent) || z;
            }
        } else if (actionMasked == 2) {
            float x2 = motionEvent.getX();
            float y2 = motionEvent.getY();
            float abs = Math.abs(x2 - this.f10274p);
            float abs2 = Math.abs(y2 - this.f10275q);
            if (abs > this.f10279t.getTouchSlop() && abs2 > abs) {
                this.f10279t.cancel();
                this.f10272n = true;
                return false;
            }
        }
        z = false;
        if (this.f10279t.shouldInterceptTouchEvent(motionEvent)) {
            return true;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        boolean m6393j = m6393j();
        int i10 = i3 - i;
        int paddingRight = m6393j ? getPaddingRight() : getPaddingLeft();
        int paddingLeft = m6393j ? getPaddingLeft() : getPaddingRight();
        int paddingTop = getPaddingTop();
        int childCount = getChildCount();
        if (this.f10281v) {
            this.f10268k = (this.f10266i && this.f10280u) ? 0.0f : 1.0f;
        }
        int i11 = paddingRight;
        int i12 = 0;
        while (i12 < childCount) {
            View childAt = getChildAt(i12);
            if (childAt.getVisibility() == 8) {
                i5 = i11;
            } else {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                if (layoutParams.f10287a) {
                    int i13 = i10 - paddingLeft;
                    int min = (Math.min(paddingRight, i13) - i11) - (((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin);
                    this.f10271m = min;
                    int i14 = m6393j ? ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin : ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                    layoutParams.f10288b = ((i11 + i14) + min) + (measuredWidth / 2) > i13;
                    int i15 = (int) (min * this.f10268k);
                    this.f10268k = i15 / min;
                    i5 = i11 + i14 + i15;
                    i6 = 0;
                } else if (!this.f10266i || (i7 = this.f10273o) == 0) {
                    i5 = paddingRight;
                    i6 = 0;
                } else {
                    i6 = (int) ((1.0f - this.f10268k) * i7);
                    i5 = paddingRight;
                }
                if (m6393j) {
                    i9 = (i10 - i5) + i6;
                    i8 = i9 - measuredWidth;
                } else {
                    i8 = i5 - i6;
                    i9 = i8 + measuredWidth;
                }
                childAt.layout(i8, paddingTop, i9, childAt.getMeasuredHeight() + paddingTop);
                FoldingFeature foldingFeature = this.f10285z;
                paddingRight += childAt.getWidth() + Math.abs((foldingFeature != null && foldingFeature.getOrientation() == FoldingFeature.Orientation.VERTICAL && this.f10285z.isSeparating()) ? this.f10285z.getBounds().width() : 0);
            }
            i12++;
            i11 = i5;
        }
        if (this.f10281v) {
            if (this.f10266i && this.f10273o != 0) {
                m6396n(this.f10268k);
            }
            m6400r(this.f10267j);
        }
        this.f10281v = false;
    }

    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r8v12 */
    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int paddingTop;
        int i3;
        int i4;
        int i5;
        int i6;
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        ?? r8 = 0;
        if (mode2 != Integer.MIN_VALUE) {
            i3 = mode2 != 1073741824 ? 0 : (size2 - getPaddingTop()) - getPaddingBottom();
            paddingTop = i3;
        } else {
            paddingTop = (size2 - getPaddingTop()) - getPaddingBottom();
            i3 = 0;
        }
        int max = Math.max((size - getPaddingLeft()) - getPaddingRight(), 0);
        int childCount = getChildCount();
        if (childCount > 2) {
            Log.e(f10255t0, "onMeasure: More than two child views are not supported.");
        }
        this.f10267j = null;
        int i7 = 0;
        boolean z = false;
        int i8 = max;
        float f = 0.0f;
        while (true) {
            i4 = 8;
            if (i7 >= childCount) {
                break;
            }
            View childAt = getChildAt(i7);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            int i9 = size;
            if (childAt.getVisibility() == 8) {
                layoutParams.f10288b = r8;
            } else {
                float f2 = layoutParams.weight;
                if (f2 > 0.0f) {
                    f += f2;
                    if (((ViewGroup.MarginLayoutParams) layoutParams).width == 0) {
                    }
                }
                int max2 = Math.max(max - (((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin), (int) r8);
                int i10 = ((ViewGroup.MarginLayoutParams) layoutParams).width;
                childAt.measure(i10 == -2 ? View.MeasureSpec.makeMeasureSpec(max2, mode == 0 ? mode : Integer.MIN_VALUE) : i10 == -1 ? View.MeasureSpec.makeMeasureSpec(max2, mode) : View.MeasureSpec.makeMeasureSpec(i10, 1073741824), ViewGroup.getChildMeasureSpec(i2, getPaddingTop() + getPaddingBottom(), ((ViewGroup.MarginLayoutParams) layoutParams).height));
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                if (measuredHeight > i3) {
                    if (mode2 == Integer.MIN_VALUE) {
                        i3 = Math.min(measuredHeight, paddingTop);
                    } else if (mode2 == 0) {
                        i3 = measuredHeight;
                    }
                }
                i8 -= measuredWidth;
                if (i7 != 0) {
                    boolean z2 = i8 < 0;
                    layoutParams.f10287a = z2;
                    z |= z2;
                    if (z2) {
                        this.f10267j = childAt;
                    }
                }
            }
            i7++;
            size = i9;
            r8 = 0;
        }
        int i11 = size;
        int i12 = i8;
        if (z || f > 0.0f) {
            int i13 = 0;
            while (i13 < childCount) {
                View childAt2 = getChildAt(i13);
                if (childAt2.getVisibility() != i4) {
                    LayoutParams layoutParams2 = (LayoutParams) childAt2.getLayoutParams();
                    int measuredWidth2 = ((ViewGroup.MarginLayoutParams) layoutParams2).width == 0 && (layoutParams2.weight > 0.0f ? 1 : (layoutParams2.weight == 0.0f ? 0 : -1)) > 0 ? 0 : childAt2.getMeasuredWidth();
                    if (z) {
                        i5 = max - (((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin);
                        i6 = View.MeasureSpec.makeMeasureSpec(i5, 1073741824);
                    } else if (layoutParams2.weight > 0.0f) {
                        i5 = measuredWidth2 + ((int) ((layoutParams2.weight * Math.max(0, i12)) / f));
                        i6 = View.MeasureSpec.makeMeasureSpec(i5, 1073741824);
                    } else {
                        i5 = measuredWidth2;
                        i6 = 0;
                    }
                    int m6385k = m6385k(childAt2, i2, getPaddingTop() + getPaddingBottom());
                    if (measuredWidth2 != i5) {
                        childAt2.measure(i6, m6385k);
                        int measuredHeight2 = childAt2.getMeasuredHeight();
                        if (measuredHeight2 > i3) {
                            if (mode2 == Integer.MIN_VALUE) {
                                measuredHeight2 = Math.min(measuredHeight2, paddingTop);
                            } else if (mode2 != 0) {
                            }
                            i3 = measuredHeight2;
                        }
                    }
                }
                i13++;
                i4 = 8;
            }
        }
        ArrayList<Rect> m6399q = m6399q();
        if (m6399q != null && !z) {
            for (int i14 = 0; i14 < childCount; i14++) {
                View childAt3 = getChildAt(i14);
                if (childAt3.getVisibility() != 8) {
                    Rect rect = m6399q.get(i14);
                    LayoutParams layoutParams3 = (LayoutParams) childAt3.getLayoutParams();
                    int i15 = ((ViewGroup.MarginLayoutParams) layoutParams3).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams3).rightMargin;
                    int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(childAt3.getMeasuredHeight(), 1073741824);
                    childAt3.measure(View.MeasureSpec.makeMeasureSpec(rect.width(), Integer.MIN_VALUE), makeMeasureSpec);
                    if ((childAt3.getMeasuredWidthAndState() & 16777216) == 1 || (m6384g(childAt3) != 0 && rect.width() < m6384g(childAt3))) {
                        childAt3.measure(View.MeasureSpec.makeMeasureSpec(max - i15, 1073741824), makeMeasureSpec);
                        if (i14 != 0) {
                            layoutParams3.f10287a = true;
                            this.f10267j = childAt3;
                            z = true;
                        }
                    } else {
                        childAt3.measure(View.MeasureSpec.makeMeasureSpec(rect.width(), 1073741824), makeMeasureSpec);
                    }
                }
            }
        }
        setMeasuredDimension(i11, i3 + getPaddingTop() + getPaddingBottom());
        this.f10266i = z;
        if (this.f10279t.getViewDragState() == 0 || z) {
            return;
        }
        this.f10279t.abort();
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (savedState.isOpen) {
            openPane();
        } else {
            closePane();
        }
        this.f10280u = savedState.isOpen;
        setLockMode(savedState.mLockMode);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.isOpen = isSlideable() ? isOpen() : this.f10280u;
        savedState.mLockMode = this.f10284y;
        return savedState;
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3) {
            this.f10281v = true;
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.f10266i) {
            return super.onTouchEvent(motionEvent);
        }
        this.f10279t.processTouchEvent(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            this.f10274p = x;
            this.f10275q = y;
        } else if (actionMasked == 1 && m6392i(this.f10267j)) {
            float x2 = motionEvent.getX();
            float y2 = motionEvent.getY();
            float f = x2 - this.f10274p;
            float f2 = y2 - this.f10275q;
            int touchSlop = this.f10279t.getTouchSlop();
            if ((f * f) + (f2 * f2) < touchSlop * touchSlop && this.f10279t.isViewUnder(this.f10267j, (int) x2, (int) y2)) {
                m6387a(0);
            }
        }
        return true;
    }

    @Override // androidx.customview.widget.Openable
    public void open() {
        openPane();
    }

    public boolean openPane() {
        return m6395m(0);
    }

    /* renamed from: p */
    public boolean m6398p(float f, int i) {
        int paddingLeft;
        if (!this.f10266i) {
            return false;
        }
        boolean m6393j = m6393j();
        LayoutParams layoutParams = (LayoutParams) this.f10267j.getLayoutParams();
        if (m6393j) {
            paddingLeft = (int) (getWidth() - (((getPaddingRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin) + (f * this.f10271m)) + this.f10267j.getWidth()));
        } else {
            paddingLeft = (int) (getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + (f * this.f10271m));
        }
        ViewDragHelper viewDragHelper = this.f10279t;
        View view = this.f10267j;
        if (!viewDragHelper.smoothSlideViewTo(view, paddingLeft, view.getTop())) {
            return false;
        }
        m6397o();
        ViewCompat.postInvalidateOnAnimation(this);
        return true;
    }

    /* renamed from: q */
    public final ArrayList<Rect> m6399q() {
        Rect m6383f;
        FoldingFeature foldingFeature = this.f10285z;
        if (foldingFeature == null || !foldingFeature.isSeparating() || this.f10285z.getBounds().left == 0 || this.f10285z.getBounds().top != 0 || (m6383f = m6383f(this.f10285z, this)) == null) {
            return null;
        }
        Rect rect = new Rect(getPaddingLeft(), getPaddingTop(), Math.max(getPaddingLeft(), m6383f.left), getHeight() - getPaddingBottom());
        int width = getWidth() - getPaddingRight();
        return new ArrayList<>(Arrays.asList(rect, new Rect(Math.min(width, m6383f.right), getPaddingTop(), width, getHeight() - getPaddingBottom())));
    }

    /* renamed from: r */
    public void m6400r(View view) {
        int i;
        int i2;
        int i3;
        int i4;
        boolean z;
        View view2 = view;
        boolean m6393j = m6393j();
        int width = m6393j ? getWidth() - getPaddingRight() : getPaddingLeft();
        int paddingLeft = m6393j ? getPaddingLeft() : getWidth() - getPaddingRight();
        int paddingTop = getPaddingTop();
        int height = getHeight() - getPaddingBottom();
        if (view2 == null || !m6386s(view)) {
            i = 0;
            i2 = 0;
            i3 = 0;
            i4 = 0;
        } else {
            i = view.getLeft();
            i2 = view.getRight();
            i3 = view.getTop();
            i4 = view.getBottom();
        }
        int childCount = getChildCount();
        int i5 = 0;
        while (i5 < childCount) {
            View childAt = getChildAt(i5);
            if (childAt == view2) {
                return;
            }
            if (childAt.getVisibility() == 8) {
                z = m6393j;
            } else {
                z = m6393j;
                childAt.setVisibility((Math.max(m6393j ? paddingLeft : width, childAt.getLeft()) < i || Math.max(paddingTop, childAt.getTop()) < i3 || Math.min(m6393j ? width : paddingLeft, childAt.getRight()) > i2 || Math.min(height, childAt.getBottom()) > i4) ? 0 : 4);
            }
            i5++;
            view2 = view;
            m6393j = z;
        }
    }

    public void removePanelSlideListener(@NonNull PanelSlideListener panelSlideListener) {
        this.f10277r.remove(panelSlideListener);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(@NonNull View view) {
        if (view.getParent() instanceof C1442e) {
            super.removeView((View) view.getParent());
        } else {
            super.removeView(view);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        super.requestChildFocus(view, view2);
        if (isInTouchMode() || this.f10266i) {
            return;
        }
        this.f10280u = view == this.f10267j;
    }

    @Deprecated
    public void setCoveredFadeColor(@ColorInt int i) {
        this.f10263f = i;
    }

    public final void setLockMode(int i) {
        this.f10284y = i;
    }

    @Deprecated
    public void setPanelSlideListener(@Nullable PanelSlideListener panelSlideListener) {
        PanelSlideListener panelSlideListener2 = this.f10278s;
        if (panelSlideListener2 != null) {
            removePanelSlideListener(panelSlideListener2);
        }
        if (panelSlideListener != null) {
            addPanelSlideListener(panelSlideListener);
        }
        this.f10278s = panelSlideListener;
    }

    public void setParallaxDistance(@Px int i) {
        this.f10273o = i;
        requestLayout();
    }

    @Deprecated
    public void setShadowDrawable(Drawable drawable) {
        setShadowDrawableLeft(drawable);
    }

    public void setShadowDrawableLeft(@Nullable Drawable drawable) {
        this.f10264g = drawable;
    }

    public void setShadowDrawableRight(@Nullable Drawable drawable) {
        this.f10265h = drawable;
    }

    @Deprecated
    public void setShadowResource(@DrawableRes int i) {
        setShadowDrawableLeft(getResources().getDrawable(i));
    }

    public void setShadowResourceLeft(int i) {
        setShadowDrawableLeft(ContextCompat.getDrawable(getContext(), i));
    }

    public void setShadowResourceRight(int i) {
        setShadowDrawableRight(ContextCompat.getDrawable(getContext(), i));
    }

    @Deprecated
    public void setSliderFadeColor(@ColorInt int i) {
        this.f10262e = i;
    }

    @Deprecated
    public void smoothSlideClosed() {
        closePane();
    }

    @Deprecated
    public void smoothSlideOpen() {
        openPane();
    }

    /* loaded from: classes3.dex */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: d */
        public static final int[] f10286d = {R.attr.layout_weight};

        /* renamed from: a */
        public boolean f10287a;

        /* renamed from: b */
        public boolean f10288b;

        /* renamed from: c */
        public Paint f10289c;
        public float weight;

        public LayoutParams() {
            super(-1, -1);
            this.weight = 0.0f;
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.weight = 0.0f;
        }

        public LayoutParams(@NonNull ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.weight = 0.0f;
        }

        public LayoutParams(@NonNull ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.weight = 0.0f;
        }

        public LayoutParams(@NonNull LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.weight = 0.0f;
            this.weight = layoutParams.weight;
        }

        public LayoutParams(@NonNull Context context, @Nullable AttributeSet attributeSet) {
            super(context, attributeSet);
            this.weight = 0.0f;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f10286d);
            this.weight = obtainStyledAttributes.getFloat(0, 0.0f);
            obtainStyledAttributes.recycle();
        }
    }

    public SlidingPaneLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SlidingPaneLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f10262e = 0;
        this.f10268k = 1.0f;
        this.f10277r = new CopyOnWriteArrayList();
        this.f10281v = true;
        this.f10282w = new Rect();
        this.f10283x = new ArrayList<>();
        this.f10259J = new C1438a();
        float f = context.getResources().getDisplayMetrics().density;
        setWillNotDraw(false);
        ViewCompat.setAccessibilityDelegate(this, new C1439b());
        ViewCompat.setImportantForAccessibility(this, 1);
        ViewDragHelper create = ViewDragHelper.create(this, 0.5f, new C1441d());
        this.f10279t = create;
        create.setMinVelocity(f * 400.0f);
        setFoldingFeatureObserver(new FoldingFeatureObserver(WindowInfoTracker.getOrCreate(context), ContextCompat.getMainExecutor(context)));
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }
}
