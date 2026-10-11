package androidx.appcompat.widget;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.view.WindowInsets;
import android.widget.OverScroller;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.appcompat.C0118R;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.core.graphics.Insets;
import androidx.core.view.NestedScrollingParent;
import androidx.core.view.NestedScrollingParent2;
import androidx.core.view.NestedScrollingParent3;
import androidx.core.view.NestedScrollingParentHelper;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;

@SuppressLint({"UnknownNullness"})
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes3.dex */
public class ActionBarOverlayLayout extends ViewGroup implements DecorContentParent, NestedScrollingParent, NestedScrollingParent2, NestedScrollingParent3 {

    /* renamed from: A0 */
    public static final int[] f1336A0 = {C0118R.attr.actionBarSize, R.attr.windowContentOverlay};

    /* renamed from: B0 */
    public static final WindowInsetsCompat f1337B0 = new WindowInsetsCompat.Builder().setSystemWindowInsets(Insets.m2908of(0, 1, 0, 1)).build();

    /* renamed from: C0 */
    public static final Rect f1338C0 = new Rect();

    /* renamed from: y0 */
    public static final String f1339y0 = "ActionBarOverlayLayout";

    /* renamed from: z0 */
    public static final int f1340z0 = 600;

    /* renamed from: J */
    @NonNull
    public WindowInsetsCompat f1341J;

    /* renamed from: O */
    @NonNull
    public WindowInsetsCompat f1342O;

    /* renamed from: Q */
    public ActionBarVisibilityCallback f1343Q;

    /* renamed from: e */
    public int f1344e;

    /* renamed from: f */
    public int f1345f;

    /* renamed from: g */
    public ContentFrameLayout f1346g;

    /* renamed from: h */
    public ActionBarContainer f1347h;

    /* renamed from: i */
    public DecorToolbar f1348i;

    /* renamed from: j */
    public Drawable f1349j;

    /* renamed from: k */
    public boolean f1350k;

    /* renamed from: k0 */
    public OverScroller f1351k0;

    /* renamed from: l */
    public boolean f1352l;

    /* renamed from: m */
    public boolean f1353m;

    /* renamed from: n */
    public boolean f1354n;

    /* renamed from: o */
    public int f1355o;

    /* renamed from: p */
    public int f1356p;

    /* renamed from: q */
    public final Rect f1357q;

    /* renamed from: q0 */
    public ViewPropertyAnimator f1358q0;

    /* renamed from: r */
    public final Rect f1359r;

    /* renamed from: s */
    public final Rect f1360s;

    /* renamed from: t */
    public final Rect f1361t;

    /* renamed from: t0 */
    public final AnimatorListenerAdapter f1362t0;

    /* renamed from: u */
    public final Rect f1363u;

    /* renamed from: u0 */
    public final Runnable f1364u0;

    /* renamed from: v */
    public final Rect f1365v;

    /* renamed from: v0 */
    public final Runnable f1366v0;

    /* renamed from: w */
    public final Rect f1367w;

    /* renamed from: w0 */
    public final NestedScrollingParentHelper f1368w0;

    /* renamed from: x */
    public final Rect f1369x;

    /* renamed from: x0 */
    public final C0209d f1370x0;

    /* renamed from: y */
    @NonNull
    public WindowInsetsCompat f1371y;

    /* renamed from: z */
    @NonNull
    public WindowInsetsCompat f1372z;

    /* loaded from: classes3.dex */
    public interface ActionBarVisibilityCallback {
        void enableContentAnimations(boolean z);

        void hideForSystem();

        void onContentScrollStarted();

        void onContentScrollStopped();

        void onWindowVisibilityChanged(int i);

        void showForSystem();
    }

    /* loaded from: classes3.dex */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionBarOverlayLayout$a */
    /* loaded from: classes3.dex */
    public class C0206a extends AnimatorListenerAdapter {
        public C0206a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.f1358q0 = null;
            actionBarOverlayLayout.f1354n = false;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.f1358q0 = null;
            actionBarOverlayLayout.f1354n = false;
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionBarOverlayLayout$b */
    /* loaded from: classes3.dex */
    public class RunnableC0207b implements Runnable {
        public RunnableC0207b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ActionBarOverlayLayout.this.m646e();
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.f1358q0 = actionBarOverlayLayout.f1347h.animate().translationY(0.0f).setListener(ActionBarOverlayLayout.this.f1362t0);
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionBarOverlayLayout$c */
    /* loaded from: classes3.dex */
    public class RunnableC0208c implements Runnable {
        public RunnableC0208c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ActionBarOverlayLayout.this.m646e();
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.f1358q0 = actionBarOverlayLayout.f1347h.animate().translationY(-ActionBarOverlayLayout.this.f1347h.getHeight()).setListener(ActionBarOverlayLayout.this.f1362t0);
        }
    }

    /* renamed from: androidx.appcompat.widget.ActionBarOverlayLayout$d */
    /* loaded from: classes3.dex */
    public static final class C0209d extends View {
        public C0209d(Context context) {
            super(context);
            setWillNotDraw(true);
        }

        @Override // android.view.View
        public int getWindowSystemUiVisibility() {
            return 0;
        }
    }

    public ActionBarOverlayLayout(@NonNull Context context) {
        this(context, null);
    }

    /* renamed from: a */
    public final void m642a() {
        m646e();
        this.f1366v0.run();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m643b(@androidx.annotation.NonNull android.view.View r2, @androidx.annotation.NonNull android.graphics.Rect r3, boolean r4, boolean r5, boolean r6, boolean r7) {
        /*
            r1 = this;
            android.view.ViewGroup$LayoutParams r1 = r2.getLayoutParams()
            androidx.appcompat.widget.ActionBarOverlayLayout$LayoutParams r1 = (androidx.appcompat.widget.ActionBarOverlayLayout.LayoutParams) r1
            r2 = 1
            if (r4 == 0) goto L13
            int r4 = r1.leftMargin
            int r0 = r3.left
            if (r4 == r0) goto L13
            r1.leftMargin = r0
            r4 = r2
            goto L14
        L13:
            r4 = 0
        L14:
            if (r5 == 0) goto L1f
            int r5 = r1.topMargin
            int r0 = r3.top
            if (r5 == r0) goto L1f
            r1.topMargin = r0
            r4 = r2
        L1f:
            if (r7 == 0) goto L2a
            int r5 = r1.rightMargin
            int r7 = r3.right
            if (r5 == r7) goto L2a
            r1.rightMargin = r7
            r4 = r2
        L2a:
            if (r6 == 0) goto L35
            int r5 = r1.bottomMargin
            int r3 = r3.bottom
            if (r5 == r3) goto L35
            r1.bottomMargin = r3
            goto L36
        L35:
            r2 = r4
        L36:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActionBarOverlayLayout.m643b(android.view.View, android.graphics.Rect, boolean, boolean, boolean, boolean):boolean");
    }

    /* renamed from: c */
    public final boolean m644c() {
        ViewCompat.computeSystemWindowInsets(this.f1370x0, f1337B0, this.f1361t);
        return !this.f1361t.equals(f1338C0);
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    public boolean canShowOverflowMenu() {
        m650i();
        return this.f1348i.canShowOverflowMenu();
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: d */
    public final DecorToolbar m645d(View view) {
        if (view instanceof DecorToolbar) {
            return (DecorToolbar) view;
        }
        if (view instanceof Toolbar) {
            return ((Toolbar) view).getWrapper();
        }
        throw new IllegalStateException("Can't make a decor toolbar out of " + view.getClass().getSimpleName());
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    public void dismissPopups() {
        m650i();
        this.f1348i.dismissPopupMenus();
    }

    @Override // android.view.View
    public void draw(@NonNull Canvas canvas) {
        super.draw(canvas);
        if (this.f1349j != null) {
            int bottom = this.f1347h.getVisibility() == 0 ? (int) (this.f1347h.getBottom() + this.f1347h.getTranslationY() + 0.5f) : 0;
            this.f1349j.setBounds(0, bottom, getWidth(), this.f1349j.getIntrinsicHeight() + bottom);
            this.f1349j.draw(canvas);
        }
    }

    /* renamed from: e */
    public void m646e() {
        removeCallbacks(this.f1364u0);
        removeCallbacks(this.f1366v0);
        ViewPropertyAnimator viewPropertyAnimator = this.f1358q0;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
    }

    /* renamed from: f */
    public final void m647f(Context context) {
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(f1336A0);
        this.f1344e = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        Drawable drawable = obtainStyledAttributes.getDrawable(1);
        this.f1349j = drawable;
        setWillNotDraw(drawable == null);
        obtainStyledAttributes.recycle();
        this.f1351k0 = new OverScroller(context);
    }

    @Override // android.view.View
    public boolean fitSystemWindows(Rect rect) {
        return super.fitSystemWindows(rect);
    }

    /* renamed from: g */
    public final void m648g() {
        m646e();
        postDelayed(this.f1366v0, 600L);
    }

    public int getActionBarHideOffset() {
        ActionBarContainer actionBarContainer = this.f1347h;
        if (actionBarContainer != null) {
            return -((int) actionBarContainer.getTranslationY());
        }
        return 0;
    }

    @Override // android.view.ViewGroup, androidx.core.view.NestedScrollingParent
    public int getNestedScrollAxes() {
        return this.f1368w0.getNestedScrollAxes();
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    public CharSequence getTitle() {
        m650i();
        return this.f1348i.getTitle();
    }

    /* renamed from: h */
    public final void m649h() {
        m646e();
        postDelayed(this.f1364u0, 600L);
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    public boolean hasIcon() {
        m650i();
        return this.f1348i.hasIcon();
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    public boolean hasLogo() {
        m650i();
        return this.f1348i.hasLogo();
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    public boolean hideOverflowMenu() {
        m650i();
        return this.f1348i.hideOverflowMenu();
    }

    /* renamed from: i */
    public void m650i() {
        if (this.f1346g == null) {
            this.f1346g = (ContentFrameLayout) findViewById(C0118R.id.action_bar_activity_content);
            this.f1347h = (ActionBarContainer) findViewById(C0118R.id.action_bar_container);
            this.f1348i = m645d(findViewById(C0118R.id.action_bar));
        }
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    public void initFeature(int i) {
        m650i();
        if (i == 2) {
            this.f1348i.initProgress();
        } else if (i == 5) {
            this.f1348i.initIndeterminateProgress();
        } else {
            if (i != 109) {
                return;
            }
            setOverlayMode(true);
        }
    }

    public boolean isHideOnContentScrollEnabled() {
        return this.f1353m;
    }

    public boolean isInOverlayMode() {
        return this.f1350k;
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    public boolean isOverflowMenuShowPending() {
        m650i();
        return this.f1348i.isOverflowMenuShowPending();
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    public boolean isOverflowMenuShowing() {
        m650i();
        return this.f1348i.isOverflowMenuShowing();
    }

    /* renamed from: j */
    public final void m651j() {
        m646e();
        this.f1364u0.run();
    }

    /* renamed from: k */
    public final boolean m652k(float f) {
        this.f1351k0.fling(0, 0, 0, (int) f, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE);
        return this.f1351k0.getFinalY() > this.f1347h.getHeight();
    }

    @Override // android.view.View
    @RequiresApi(21)
    public WindowInsets onApplyWindowInsets(@NonNull WindowInsets windowInsets) {
        m650i();
        WindowInsetsCompat windowInsetsCompat = WindowInsetsCompat.toWindowInsetsCompat(windowInsets, this);
        boolean m643b = m643b(this.f1347h, new Rect(windowInsetsCompat.getSystemWindowInsetLeft(), windowInsetsCompat.getSystemWindowInsetTop(), windowInsetsCompat.getSystemWindowInsetRight(), windowInsetsCompat.getSystemWindowInsetBottom()), true, true, false, true);
        ViewCompat.computeSystemWindowInsets(this, windowInsetsCompat, this.f1357q);
        Rect rect = this.f1357q;
        WindowInsetsCompat inset = windowInsetsCompat.inset(rect.left, rect.top, rect.right, rect.bottom);
        this.f1371y = inset;
        boolean z = true;
        if (!this.f1372z.equals(inset)) {
            this.f1372z = this.f1371y;
            m643b = true;
        }
        if (this.f1359r.equals(this.f1357q)) {
            z = m643b;
        } else {
            this.f1359r.set(this.f1357q);
        }
        if (z) {
            requestLayout();
        }
        return windowInsetsCompat.consumeDisplayCutout().consumeSystemWindowInsets().consumeStableInsets().toWindowInsets();
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        m647f(getContext());
        ViewCompat.requestApplyInsets(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m646e();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i6 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + paddingLeft;
                int i7 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + paddingTop;
                childAt.layout(i6, i7, measuredWidth + i6, measuredHeight + i7);
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int measuredHeight;
        m650i();
        measureChildWithMargins(this.f1347h, i, 0, i2, 0);
        LayoutParams layoutParams = (LayoutParams) this.f1347h.getLayoutParams();
        int max = Math.max(0, this.f1347h.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin);
        int max2 = Math.max(0, this.f1347h.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
        int combineMeasuredStates = View.combineMeasuredStates(0, this.f1347h.getMeasuredState());
        boolean z = (ViewCompat.getWindowSystemUiVisibility(this) & 256) != 0;
        if (z) {
            measuredHeight = this.f1344e;
            if (this.f1352l && this.f1347h.getTabContainer() != null) {
                measuredHeight += this.f1344e;
            }
        } else {
            measuredHeight = this.f1347h.getVisibility() != 8 ? this.f1347h.getMeasuredHeight() : 0;
        }
        this.f1360s.set(this.f1357q);
        this.f1341J = this.f1371y;
        if (this.f1350k || z || !m644c()) {
            this.f1341J = new WindowInsetsCompat.Builder(this.f1341J).setSystemWindowInsets(Insets.m2908of(this.f1341J.getSystemWindowInsetLeft(), this.f1341J.getSystemWindowInsetTop() + measuredHeight, this.f1341J.getSystemWindowInsetRight(), this.f1341J.getSystemWindowInsetBottom() + 0)).build();
        } else {
            Rect rect = this.f1360s;
            rect.top += measuredHeight;
            rect.bottom += 0;
            this.f1341J = this.f1341J.inset(0, measuredHeight, 0, 0);
        }
        m643b(this.f1346g, this.f1360s, true, true, true, true);
        if (!this.f1342O.equals(this.f1341J)) {
            WindowInsetsCompat windowInsetsCompat = this.f1341J;
            this.f1342O = windowInsetsCompat;
            ViewCompat.dispatchApplyWindowInsets(this.f1346g, windowInsetsCompat);
        }
        measureChildWithMargins(this.f1346g, i, 0, i2, 0);
        LayoutParams layoutParams2 = (LayoutParams) this.f1346g.getLayoutParams();
        int max3 = Math.max(max, this.f1346g.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin);
        int max4 = Math.max(max2, this.f1346g.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams2).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin);
        int combineMeasuredStates2 = View.combineMeasuredStates(combineMeasuredStates, this.f1346g.getMeasuredState());
        setMeasuredDimension(View.resolveSizeAndState(Math.max(max3 + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i, combineMeasuredStates2), View.resolveSizeAndState(Math.max(max4 + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), i2, combineMeasuredStates2 << 16));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        if (!this.f1353m || !z) {
            return false;
        }
        if (m652k(f2)) {
            m642a();
        } else {
            m651j();
        }
        this.f1354n = true;
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onNestedPreFling(View view, float f, float f2) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
    }

    @Override // androidx.core.view.NestedScrollingParent3
    public void onNestedScroll(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        onNestedScroll(view, i, i2, i3, i4, i5);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScrollAccepted(View view, View view2, int i, int i2) {
        if (i2 == 0) {
            onNestedScrollAccepted(view, view2, i);
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public boolean onStartNestedScroll(View view, View view2, int i, int i2) {
        return i2 == 0 && onStartNestedScroll(view, view2, i);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onStopNestedScroll(View view, int i) {
        if (i == 0) {
            onStopNestedScroll(view);
        }
    }

    @Override // android.view.View
    @Deprecated
    public void onWindowSystemUiVisibilityChanged(int i) {
        super.onWindowSystemUiVisibilityChanged(i);
        m650i();
        int i2 = this.f1356p ^ i;
        this.f1356p = i;
        boolean z = (i & 4) == 0;
        boolean z2 = (i & 256) != 0;
        ActionBarVisibilityCallback actionBarVisibilityCallback = this.f1343Q;
        if (actionBarVisibilityCallback != null) {
            actionBarVisibilityCallback.enableContentAnimations(!z2);
            if (z || !z2) {
                this.f1343Q.showForSystem();
            } else {
                this.f1343Q.hideForSystem();
            }
        }
        if ((i2 & 256) == 0 || this.f1343Q == null) {
            return;
        }
        ViewCompat.requestApplyInsets(this);
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        this.f1345f = i;
        ActionBarVisibilityCallback actionBarVisibilityCallback = this.f1343Q;
        if (actionBarVisibilityCallback != null) {
            actionBarVisibilityCallback.onWindowVisibilityChanged(i);
        }
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    public void restoreToolbarHierarchyState(SparseArray<Parcelable> sparseArray) {
        m650i();
        this.f1348i.restoreHierarchyState(sparseArray);
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    public void saveToolbarHierarchyState(SparseArray<Parcelable> sparseArray) {
        m650i();
        this.f1348i.saveHierarchyState(sparseArray);
    }

    public void setActionBarHideOffset(int i) {
        m646e();
        this.f1347h.setTranslationY(-Math.max(0, Math.min(i, this.f1347h.getHeight())));
    }

    public void setActionBarVisibilityCallback(ActionBarVisibilityCallback actionBarVisibilityCallback) {
        this.f1343Q = actionBarVisibilityCallback;
        if (getWindowToken() != null) {
            this.f1343Q.onWindowVisibilityChanged(this.f1345f);
            int i = this.f1356p;
            if (i != 0) {
                onWindowSystemUiVisibilityChanged(i);
                ViewCompat.requestApplyInsets(this);
            }
        }
    }

    public void setHasNonEmbeddedTabs(boolean z) {
        this.f1352l = z;
    }

    public void setHideOnContentScrollEnabled(boolean z) {
        if (z != this.f1353m) {
            this.f1353m = z;
            if (z) {
                return;
            }
            m646e();
            setActionBarHideOffset(0);
        }
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    public void setIcon(int i) {
        m650i();
        this.f1348i.setIcon(i);
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    public void setLogo(int i) {
        m650i();
        this.f1348i.setLogo(i);
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    public void setMenu(Menu menu, MenuPresenter.Callback callback) {
        m650i();
        this.f1348i.setMenu(menu, callback);
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    public void setMenuPrepared() {
        m650i();
        this.f1348i.setMenuPrepared();
    }

    public void setOverlayMode(boolean z) {
        this.f1350k = z;
    }

    public void setShowingForActionMode(boolean z) {
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    public void setUiOptions(int i) {
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    public void setWindowCallback(Window.Callback callback) {
        m650i();
        this.f1348i.setWindowCallback(callback);
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    public void setWindowTitle(CharSequence charSequence) {
        m650i();
        this.f1348i.setWindowTitle(charSequence);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    public boolean showOverflowMenu() {
        m650i();
        return this.f1348i.showOverflowMenu();
    }

    public ActionBarOverlayLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1345f = 0;
        this.f1357q = new Rect();
        this.f1359r = new Rect();
        this.f1360s = new Rect();
        this.f1361t = new Rect();
        this.f1363u = new Rect();
        this.f1365v = new Rect();
        this.f1367w = new Rect();
        this.f1369x = new Rect();
        WindowInsetsCompat windowInsetsCompat = WindowInsetsCompat.CONSUMED;
        this.f1371y = windowInsetsCompat;
        this.f1372z = windowInsetsCompat;
        this.f1341J = windowInsetsCompat;
        this.f1342O = windowInsetsCompat;
        this.f1362t0 = new C0206a();
        this.f1364u0 = new RunnableC0207b();
        this.f1366v0 = new RunnableC0208c();
        m647f(context);
        this.f1368w0 = new NestedScrollingParentHelper(this);
        C0209d c0209d = new C0209d(context);
        this.f1370x0 = c0209d;
        addView(c0209d);
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -1);
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr, int i3) {
        if (i3 == 0) {
            onNestedPreScroll(view, i, i2, iArr);
        }
    }

    @Override // androidx.core.view.NestedScrollingParent2
    public void onNestedScroll(View view, int i, int i2, int i3, int i4, int i5) {
        if (i5 == 0) {
            onNestedScroll(view, i, i2, i3, i4);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedScrollAccepted(View view, View view2, int i) {
        this.f1368w0.onNestedScrollAccepted(view, view2, i);
        this.f1355o = getActionBarHideOffset();
        m646e();
        ActionBarVisibilityCallback actionBarVisibilityCallback = this.f1343Q;
        if (actionBarVisibilityCallback != null) {
            actionBarVisibilityCallback.onContentScrollStarted();
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public boolean onStartNestedScroll(View view, View view2, int i) {
        if ((i & 2) == 0 || this.f1347h.getVisibility() != 0) {
            return false;
        }
        return this.f1353m;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onStopNestedScroll(View view) {
        if (this.f1353m && !this.f1354n) {
            if (this.f1355o <= this.f1347h.getHeight()) {
                m649h();
            } else {
                m648g();
            }
        }
        ActionBarVisibilityCallback actionBarVisibilityCallback = this.f1343Q;
        if (actionBarVisibilityCallback != null) {
            actionBarVisibilityCallback.onContentScrollStopped();
        }
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.NestedScrollingParent
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        int i5 = this.f1355o + i2;
        this.f1355o = i5;
        setActionBarHideOffset(i5);
    }

    @Override // androidx.appcompat.widget.DecorContentParent
    public void setIcon(Drawable drawable) {
        m650i();
        this.f1348i.setIcon(drawable);
    }
}
