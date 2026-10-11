package com.google.android.material.navigation;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Pair;
import android.util.TypedValue;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import androidx.activity.BackEventCompat;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.IdRes;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.C0118R;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.content.ContextCompat;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.customview.view.AbsSavedState;
import androidx.drawerlayout.widget.DrawerLayout;
import com.google.android.material.C5139R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.canvas.CanvasCompat;
import com.google.android.material.internal.ContextUtils;
import com.google.android.material.internal.NavigationMenu;
import com.google.android.material.internal.NavigationMenuPresenter;
import com.google.android.material.internal.ScrimInsetsFrameLayout;
import com.google.android.material.internal.WindowUtils;
import com.google.android.material.motion.MaterialBackHandler;
import com.google.android.material.motion.MaterialBackOrchestrator;
import com.google.android.material.motion.MaterialSideContainerBackHelper;
import com.google.android.material.navigation.NavigationView;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.MaterialShapeUtils;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.ShapeableDelegate;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.Objects;

/* loaded from: classes6.dex */
public class NavigationView extends ScrimInsetsFrameLayout implements MaterialBackHandler {

    /* renamed from: O */
    public static final int[] f31861O = {R.attr.state_checked};

    /* renamed from: Q */
    public static final int[] f31862Q = {-16842910};

    /* renamed from: k0 */
    public static final int f31863k0 = C5139R.style.Widget_Design_NavigationView;

    /* renamed from: q0 */
    public static final int f31864q0 = 1;

    /* renamed from: J */
    public final DrawerLayout.DrawerListener f31865J;

    /* renamed from: l */
    @NonNull
    public final NavigationMenu f31866l;

    /* renamed from: m */
    public final NavigationMenuPresenter f31867m;

    /* renamed from: n */
    public OnNavigationItemSelectedListener f31868n;

    /* renamed from: o */
    public final int f31869o;

    /* renamed from: p */
    public final int[] f31870p;

    /* renamed from: q */
    public MenuInflater f31871q;

    /* renamed from: r */
    public ViewTreeObserver.OnGlobalLayoutListener f31872r;

    /* renamed from: s */
    public boolean f31873s;

    /* renamed from: t */
    public boolean f31874t;

    /* renamed from: u */
    @Px
    public int f31875u;

    /* renamed from: v */
    public final boolean f31876v;

    /* renamed from: w */
    @Px
    public final int f31877w;

    /* renamed from: x */
    public final ShapeableDelegate f31878x;

    /* renamed from: y */
    public final MaterialSideContainerBackHelper f31879y;

    /* renamed from: z */
    public final MaterialBackOrchestrator f31880z;

    /* loaded from: classes6.dex */
    public interface OnNavigationItemSelectedListener {
        boolean onNavigationItemSelected(@NonNull MenuItem menuItem);
    }

    /* renamed from: com.google.android.material.navigation.NavigationView$a */
    /* loaded from: classes6.dex */
    public class C5341a extends DrawerLayout.SimpleDrawerListener {
        public C5341a() {
        }

        @Override // androidx.drawerlayout.widget.DrawerLayout.SimpleDrawerListener, androidx.drawerlayout.widget.DrawerLayout.DrawerListener
        public void onDrawerClosed(@NonNull View view) {
            NavigationView navigationView = NavigationView.this;
            if (view == navigationView) {
                navigationView.f31880z.stopListeningForBackCallbacks();
                NavigationView.this.m24404k();
            }
        }

        @Override // androidx.drawerlayout.widget.DrawerLayout.SimpleDrawerListener, androidx.drawerlayout.widget.DrawerLayout.DrawerListener
        public void onDrawerOpened(@NonNull View view) {
            NavigationView navigationView = NavigationView.this;
            if (view == navigationView) {
                final MaterialBackOrchestrator materialBackOrchestrator = navigationView.f31880z;
                Objects.requireNonNull(materialBackOrchestrator);
                view.post(new Runnable() { // from class: com.sunia.HTREnginev2.htj
                    @Override // java.lang.Runnable
                    public final void run() {
                        MaterialBackOrchestrator.this.startListeningForBackCallbacksWithPriorityOverlay();
                    }
                });
            }
        }
    }

    /* renamed from: com.google.android.material.navigation.NavigationView$b */
    /* loaded from: classes6.dex */
    public class C5342b implements MenuBuilder.Callback {
        public C5342b() {
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
            OnNavigationItemSelectedListener onNavigationItemSelectedListener = NavigationView.this.f31868n;
            return onNavigationItemSelectedListener != null && onNavigationItemSelectedListener.onNavigationItemSelected(menuItem);
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public void onMenuModeChange(MenuBuilder menuBuilder) {
        }
    }

    /* renamed from: com.google.android.material.navigation.NavigationView$c */
    /* loaded from: classes6.dex */
    public class ViewTreeObserverOnGlobalLayoutListenerC5343c implements ViewTreeObserver.OnGlobalLayoutListener {
        public ViewTreeObserverOnGlobalLayoutListenerC5343c() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            NavigationView navigationView = NavigationView.this;
            navigationView.getLocationOnScreen(navigationView.f31870p);
            boolean z = true;
            boolean z2 = NavigationView.this.f31870p[1] == 0;
            NavigationView.this.f31867m.setBehindStatusBar(z2);
            NavigationView navigationView2 = NavigationView.this;
            navigationView2.setDrawTopInsetForeground(z2 && navigationView2.isTopInsetScrimEnabled());
            NavigationView.this.setDrawLeftInsetForeground(NavigationView.this.f31870p[0] == 0 || NavigationView.this.f31870p[0] + NavigationView.this.getWidth() == 0);
            Activity activity = ContextUtils.getActivity(NavigationView.this.getContext());
            if (activity != null) {
                Rect currentWindowBounds = WindowUtils.getCurrentWindowBounds(activity);
                boolean z3 = currentWindowBounds.height() - NavigationView.this.getHeight() == NavigationView.this.f31870p[1];
                boolean z4 = Color.alpha(activity.getWindow().getNavigationBarColor()) != 0;
                NavigationView navigationView3 = NavigationView.this;
                navigationView3.setDrawBottomInsetForeground(z3 && z4 && navigationView3.isBottomInsetScrimEnabled());
                if (currentWindowBounds.width() != NavigationView.this.f31870p[0] && currentWindowBounds.width() - NavigationView.this.getWidth() != NavigationView.this.f31870p[0]) {
                    z = false;
                }
                NavigationView.this.setDrawRightInsetForeground(z);
            }
        }
    }

    public NavigationView(@NonNull Context context) {
        this(context, null);
    }

    private MenuInflater getMenuInflater() {
        if (this.f31871q == null) {
            this.f31871q = new SupportMenuInflater(getContext());
        }
        return this.f31871q;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public /* synthetic */ void m24399j(Canvas canvas) {
        super.dispatchDraw(canvas);
    }

    public void addHeaderView(@NonNull View view) {
        this.f31867m.addHeaderView(view);
    }

    @Override // com.google.android.material.motion.MaterialBackHandler
    public void cancelBackProgress() {
        m24406m();
        this.f31879y.cancelBackProgress();
        m24404k();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(@NonNull Canvas canvas) {
        this.f31878x.maybeClip(canvas, new CanvasCompat.CanvasOperation() { // from class: com.sunia.HTREnginev2.gtj
            @Override // com.google.android.material.canvas.CanvasCompat.CanvasOperation
            public final void run(Canvas canvas2) {
                NavigationView.this.m24399j(canvas2);
            }
        });
    }

    @Nullable
    /* renamed from: f */
    public final ColorStateList m24400f(int i) {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(i, typedValue, true)) {
            return null;
        }
        ColorStateList colorStateList = AppCompatResources.getColorStateList(getContext(), typedValue.resourceId);
        if (!getContext().getTheme().resolveAttribute(C0118R.attr.colorPrimary, typedValue, true)) {
            return null;
        }
        int i2 = typedValue.data;
        int defaultColor = colorStateList.getDefaultColor();
        int[] iArr = f31862Q;
        return new ColorStateList(new int[][]{iArr, f31861O, FrameLayout.EMPTY_STATE_SET}, new int[]{colorStateList.getColorForState(iArr, defaultColor), i2, defaultColor});
    }

    @NonNull
    /* renamed from: g */
    public final Drawable m24401g(@NonNull TintTypedArray tintTypedArray) {
        return m24402h(tintTypedArray, MaterialResources.getColorStateList(getContext(), tintTypedArray, C5139R.styleable.NavigationView_itemShapeFillColor));
    }

    @VisibleForTesting
    public MaterialSideContainerBackHelper getBackHelper() {
        return this.f31879y;
    }

    @Nullable
    public MenuItem getCheckedItem() {
        return this.f31867m.getCheckedItem();
    }

    @Px
    public int getDividerInsetEnd() {
        return this.f31867m.getDividerInsetEnd();
    }

    @Px
    public int getDividerInsetStart() {
        return this.f31867m.getDividerInsetStart();
    }

    public int getHeaderCount() {
        return this.f31867m.getHeaderCount();
    }

    public View getHeaderView(int i) {
        return this.f31867m.getHeaderView(i);
    }

    @Nullable
    public Drawable getItemBackground() {
        return this.f31867m.getItemBackground();
    }

    @Dimension
    public int getItemHorizontalPadding() {
        return this.f31867m.getItemHorizontalPadding();
    }

    @Dimension
    public int getItemIconPadding() {
        return this.f31867m.getItemIconPadding();
    }

    @Nullable
    public ColorStateList getItemIconTintList() {
        return this.f31867m.getItemTintList();
    }

    public int getItemMaxLines() {
        return this.f31867m.getItemMaxLines();
    }

    @Nullable
    public ColorStateList getItemTextColor() {
        return this.f31867m.getItemTextColor();
    }

    @Px
    public int getItemVerticalPadding() {
        return this.f31867m.getItemVerticalPadding();
    }

    @NonNull
    public Menu getMenu() {
        return this.f31866l;
    }

    @Px
    public int getSubheaderInsetEnd() {
        return this.f31867m.getSubheaderInsetEnd();
    }

    @Px
    public int getSubheaderInsetStart() {
        return this.f31867m.getSubheaderInsetStart();
    }

    @NonNull
    /* renamed from: h */
    public final Drawable m24402h(@NonNull TintTypedArray tintTypedArray, @Nullable ColorStateList colorStateList) {
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(ShapeAppearanceModel.builder(getContext(), tintTypedArray.getResourceId(C5139R.styleable.NavigationView_itemShapeAppearance, 0), tintTypedArray.getResourceId(C5139R.styleable.NavigationView_itemShapeAppearanceOverlay, 0)).build());
        materialShapeDrawable.setFillColor(colorStateList);
        return new InsetDrawable((Drawable) materialShapeDrawable, tintTypedArray.getDimensionPixelSize(C5139R.styleable.NavigationView_itemShapeInsetStart, 0), tintTypedArray.getDimensionPixelSize(C5139R.styleable.NavigationView_itemShapeInsetTop, 0), tintTypedArray.getDimensionPixelSize(C5139R.styleable.NavigationView_itemShapeInsetEnd, 0), tintTypedArray.getDimensionPixelSize(C5139R.styleable.NavigationView_itemShapeInsetBottom, 0));
    }

    @Override // com.google.android.material.motion.MaterialBackHandler
    public void handleBackInvoked() {
        Pair<DrawerLayout, DrawerLayout.LayoutParams> m24406m = m24406m();
        DrawerLayout drawerLayout = (DrawerLayout) m24406m.first;
        BackEventCompat onHandleBackInvoked = this.f31879y.onHandleBackInvoked();
        if (onHandleBackInvoked == null || Build.VERSION.SDK_INT < 34) {
            drawerLayout.closeDrawer(this);
            return;
        }
        this.f31879y.finishBackProgress(onHandleBackInvoked, ((DrawerLayout.LayoutParams) m24406m.second).gravity, DrawerLayoutUtils.getScrimCloseAnimatorListener(drawerLayout, this), DrawerLayoutUtils.getScrimCloseAnimatorUpdateListener(drawerLayout));
    }

    /* renamed from: i */
    public final boolean m24403i(@NonNull TintTypedArray tintTypedArray) {
        return tintTypedArray.hasValue(C5139R.styleable.NavigationView_itemShapeAppearance) || tintTypedArray.hasValue(C5139R.styleable.NavigationView_itemShapeAppearanceOverlay);
    }

    public View inflateHeaderView(@LayoutRes int i) {
        return this.f31867m.inflateHeaderView(i);
    }

    public void inflateMenu(int i) {
        this.f31867m.setUpdateSuspended(true);
        getMenuInflater().inflate(i, this.f31866l);
        this.f31867m.setUpdateSuspended(false);
        this.f31867m.updateMenuView(false);
    }

    public boolean isBottomInsetScrimEnabled() {
        return this.f31874t;
    }

    public boolean isTopInsetScrimEnabled() {
        return this.f31873s;
    }

    /* renamed from: k */
    public final void m24404k() {
        if (!this.f31876v || this.f31875u == 0) {
            return;
        }
        this.f31875u = 0;
        m24405l(getWidth(), getHeight());
    }

    /* renamed from: l */
    public final void m24405l(@Px int i, @Px int i2) {
        if ((getParent() instanceof DrawerLayout) && (getLayoutParams() instanceof DrawerLayout.LayoutParams)) {
            if ((this.f31875u > 0 || this.f31876v) && (getBackground() instanceof MaterialShapeDrawable)) {
                boolean z = GravityCompat.getAbsoluteGravity(((DrawerLayout.LayoutParams) getLayoutParams()).gravity, ViewCompat.getLayoutDirection(this)) == 3;
                MaterialShapeDrawable materialShapeDrawable = (MaterialShapeDrawable) getBackground();
                ShapeAppearanceModel.Builder allCornerSizes = materialShapeDrawable.getShapeAppearanceModel().toBuilder().setAllCornerSizes(this.f31875u);
                if (z) {
                    allCornerSizes.setTopLeftCornerSize(0.0f);
                    allCornerSizes.setBottomLeftCornerSize(0.0f);
                } else {
                    allCornerSizes.setTopRightCornerSize(0.0f);
                    allCornerSizes.setBottomRightCornerSize(0.0f);
                }
                ShapeAppearanceModel build = allCornerSizes.build();
                materialShapeDrawable.setShapeAppearanceModel(build);
                this.f31878x.onShapeAppearanceChanged(this, build);
                this.f31878x.onMaskChanged(this, new RectF(0.0f, 0.0f, i, i2));
                this.f31878x.setOffsetZeroCornerEdgeBoundsEnabled(this, true);
            }
        }
    }

    @CanIgnoreReturnValue
    /* renamed from: m */
    public final Pair<DrawerLayout, DrawerLayout.LayoutParams> m24406m() {
        ViewParent parent = getParent();
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if ((parent instanceof DrawerLayout) && (layoutParams instanceof DrawerLayout.LayoutParams)) {
            return new Pair<>((DrawerLayout) parent, (DrawerLayout.LayoutParams) layoutParams);
        }
        throw new IllegalStateException("NavigationView back progress requires the direct parent view to be a DrawerLayout.");
    }

    /* renamed from: n */
    public final void m24407n() {
        this.f31872r = new ViewTreeObserverOnGlobalLayoutListenerC5343c();
        getViewTreeObserver().addOnGlobalLayoutListener(this.f31872r);
    }

    @Override // com.google.android.material.internal.ScrimInsetsFrameLayout, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        MaterialShapeUtils.setParentAbsoluteElevation(this);
        ViewParent parent = getParent();
        if ((parent instanceof DrawerLayout) && this.f31880z.shouldListenForBackCallbacks()) {
            DrawerLayout drawerLayout = (DrawerLayout) parent;
            drawerLayout.removeDrawerListener(this.f31865J);
            drawerLayout.addDrawerListener(this.f31865J);
            if (drawerLayout.isDrawerOpen(this)) {
                this.f31880z.startListeningForBackCallbacksWithPriorityOverlay();
            }
        }
    }

    @Override // com.google.android.material.internal.ScrimInsetsFrameLayout, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getViewTreeObserver().removeOnGlobalLayoutListener(this.f31872r);
        ViewParent parent = getParent();
        if (parent instanceof DrawerLayout) {
            ((DrawerLayout) parent).removeDrawerListener(this.f31865J);
        }
    }

    @Override // com.google.android.material.internal.ScrimInsetsFrameLayout
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void onInsetsChanged(@NonNull WindowInsetsCompat windowInsetsCompat) {
        this.f31867m.dispatchApplyWindowInsets(windowInsetsCompat);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        if (mode == Integer.MIN_VALUE) {
            i = View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i), this.f31869o), 1073741824);
        } else if (mode == 0) {
            i = View.MeasureSpec.makeMeasureSpec(this.f31869o, 1073741824);
        }
        super.onMeasure(i, i2);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f31866l.restorePresenterStates(savedState.menuState);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        Bundle bundle = new Bundle();
        savedState.menuState = bundle;
        this.f31866l.savePresenterStates(bundle);
        return savedState;
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        m24405l(i, i2);
    }

    public void removeHeaderView(@NonNull View view) {
        this.f31867m.removeHeaderView(view);
    }

    public void setBottomInsetScrimEnabled(boolean z) {
        this.f31874t = z;
    }

    public void setCheckedItem(@IdRes int i) {
        MenuItem findItem = this.f31866l.findItem(i);
        if (findItem != null) {
            this.f31867m.setCheckedItem((MenuItemImpl) findItem);
        }
    }

    public void setDividerInsetEnd(@Px int i) {
        this.f31867m.setDividerInsetEnd(i);
    }

    public void setDividerInsetStart(@Px int i) {
        this.f31867m.setDividerInsetStart(i);
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        MaterialShapeUtils.setElevation(this, f);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @VisibleForTesting
    public void setForceCompatClippingEnabled(boolean z) {
        this.f31878x.setForceCompatClippingEnabled(this, z);
    }

    public void setItemBackground(@Nullable Drawable drawable) {
        this.f31867m.setItemBackground(drawable);
    }

    public void setItemBackgroundResource(@DrawableRes int i) {
        setItemBackground(ContextCompat.getDrawable(getContext(), i));
    }

    public void setItemHorizontalPadding(@Dimension int i) {
        this.f31867m.setItemHorizontalPadding(i);
    }

    public void setItemHorizontalPaddingResource(@DimenRes int i) {
        this.f31867m.setItemHorizontalPadding(getResources().getDimensionPixelSize(i));
    }

    public void setItemIconPadding(@Dimension int i) {
        this.f31867m.setItemIconPadding(i);
    }

    public void setItemIconPaddingResource(int i) {
        this.f31867m.setItemIconPadding(getResources().getDimensionPixelSize(i));
    }

    public void setItemIconSize(@Dimension int i) {
        this.f31867m.setItemIconSize(i);
    }

    public void setItemIconTintList(@Nullable ColorStateList colorStateList) {
        this.f31867m.setItemIconTintList(colorStateList);
    }

    public void setItemMaxLines(int i) {
        this.f31867m.setItemMaxLines(i);
    }

    public void setItemTextAppearance(@StyleRes int i) {
        this.f31867m.setItemTextAppearance(i);
    }

    public void setItemTextAppearanceActiveBoldEnabled(boolean z) {
        this.f31867m.setItemTextAppearanceActiveBoldEnabled(z);
    }

    public void setItemTextColor(@Nullable ColorStateList colorStateList) {
        this.f31867m.setItemTextColor(colorStateList);
    }

    public void setItemVerticalPadding(@Px int i) {
        this.f31867m.setItemVerticalPadding(i);
    }

    public void setItemVerticalPaddingResource(@DimenRes int i) {
        this.f31867m.setItemVerticalPadding(getResources().getDimensionPixelSize(i));
    }

    public void setNavigationItemSelectedListener(@Nullable OnNavigationItemSelectedListener onNavigationItemSelectedListener) {
        this.f31868n = onNavigationItemSelectedListener;
    }

    @Override // android.view.View
    public void setOverScrollMode(int i) {
        super.setOverScrollMode(i);
        NavigationMenuPresenter navigationMenuPresenter = this.f31867m;
        if (navigationMenuPresenter != null) {
            navigationMenuPresenter.setOverScrollMode(i);
        }
    }

    public void setSubheaderInsetEnd(@Px int i) {
        this.f31867m.setSubheaderInsetEnd(i);
    }

    public void setSubheaderInsetStart(@Px int i) {
        this.f31867m.setSubheaderInsetStart(i);
    }

    public void setTopInsetScrimEnabled(boolean z) {
        this.f31873s = z;
    }

    @Override // com.google.android.material.motion.MaterialBackHandler
    public void startBackProgress(@NonNull BackEventCompat backEventCompat) {
        m24406m();
        this.f31879y.startBackProgress(backEventCompat);
    }

    @Override // com.google.android.material.motion.MaterialBackHandler
    public void updateBackProgress(@NonNull BackEventCompat backEventCompat) {
        this.f31879y.updateBackProgress(backEventCompat, ((DrawerLayout.LayoutParams) m24406m().second).gravity);
        if (this.f31876v) {
            this.f31875u = AnimationUtils.lerp(0, this.f31877w, this.f31879y.interpolateProgress(backEventCompat.getProgress()));
            m24405l(getWidth(), getHeight());
        }
    }

    /* loaded from: classes6.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C5340a();

        @Nullable
        public Bundle menuState;

        /* renamed from: com.google.android.material.navigation.NavigationView$SavedState$a */
        /* loaded from: classes6.dex */
        public class C5340a implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.Creator
            @Nullable
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(@NonNull Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            @NonNull
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(@NonNull Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            @NonNull
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState(@NonNull Parcel parcel, @Nullable ClassLoader classLoader) {
            super(parcel, classLoader);
            this.menuState = parcel.readBundle(classLoader);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeBundle(this.menuState);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public NavigationView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C5139R.attr.navigationViewStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public NavigationView(@androidx.annotation.NonNull android.content.Context r17, @androidx.annotation.Nullable android.util.AttributeSet r18, int r19) {
        /*
            Method dump skipped, instructions count: 591
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.navigation.NavigationView.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    public void setCheckedItem(@NonNull MenuItem menuItem) {
        MenuItem findItem = this.f31866l.findItem(menuItem.getItemId());
        if (findItem != null) {
            this.f31867m.setCheckedItem((MenuItemImpl) findItem);
            return;
        }
        throw new IllegalArgumentException("Called setCheckedItem(MenuItem) with an item that is not in the current menu.");
    }
}
