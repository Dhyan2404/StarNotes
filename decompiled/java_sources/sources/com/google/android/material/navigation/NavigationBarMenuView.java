package com.google.android.material.navigation;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.C0118R;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuView;
import androidx.core.util.Pools;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.transition.AutoTransition;
import androidx.transition.TransitionManager;
import androidx.transition.TransitionSet;
import com.google.android.material.C5139R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.internal.TextScale;
import com.google.android.material.motion.MotionUtils;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import java.util.HashSet;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes6.dex */
public abstract class NavigationBarMenuView extends ViewGroup implements MenuView {

    /* renamed from: x0 */
    public static final int f31814x0 = 5;

    /* renamed from: y0 */
    public static final int f31815y0 = -1;

    /* renamed from: J */
    public boolean f31817J;

    /* renamed from: O */
    public int f31818O;

    /* renamed from: Q */
    public int f31819Q;

    /* renamed from: e */
    @Nullable
    public final TransitionSet f31820e;

    /* renamed from: f */
    @NonNull
    public final View.OnClickListener f31821f;

    /* renamed from: g */
    public final Pools.Pool<NavigationBarItemView> f31822g;

    /* renamed from: h */
    @NonNull
    public final SparseArray<View.OnTouchListener> f31823h;

    /* renamed from: i */
    public int f31824i;

    /* renamed from: j */
    @Nullable
    public NavigationBarItemView[] f31825j;

    /* renamed from: k */
    public int f31826k;

    /* renamed from: k0 */
    public int f31827k0;

    /* renamed from: l */
    public int f31828l;

    /* renamed from: m */
    @Nullable
    public ColorStateList f31829m;

    /* renamed from: n */
    @Dimension
    public int f31830n;

    /* renamed from: o */
    public ColorStateList f31831o;

    /* renamed from: p */
    @Nullable
    public final ColorStateList f31832p;

    /* renamed from: q */
    @StyleRes
    public int f31833q;

    /* renamed from: q0 */
    public ShapeAppearanceModel f31834q0;

    /* renamed from: r */
    @StyleRes
    public int f31835r;

    /* renamed from: s */
    public boolean f31836s;

    /* renamed from: t */
    public Drawable f31837t;

    /* renamed from: t0 */
    public boolean f31838t0;

    /* renamed from: u */
    @Nullable
    public ColorStateList f31839u;

    /* renamed from: u0 */
    public ColorStateList f31840u0;

    /* renamed from: v */
    public int f31841v;

    /* renamed from: v0 */
    public NavigationBarPresenter f31842v0;

    /* renamed from: w */
    @NonNull
    public final SparseArray<BadgeDrawable> f31843w;

    /* renamed from: w0 */
    public MenuBuilder f31844w0;

    /* renamed from: x */
    public int f31845x;

    /* renamed from: y */
    public int f31846y;

    /* renamed from: z */
    public int f31847z;

    /* renamed from: z0 */
    public static final int[] f31816z0 = {R.attr.state_checked};

    /* renamed from: A0 */
    public static final int[] f31813A0 = {-16842910};

    /* renamed from: com.google.android.material.navigation.NavigationBarMenuView$a */
    /* loaded from: classes6.dex */
    public class ViewOnClickListenerC5336a implements View.OnClickListener {
        public ViewOnClickListenerC5336a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MenuItemImpl itemData = ((NavigationBarItemView) view).getItemData();
            if (NavigationBarMenuView.this.f31844w0.performItemAction(itemData, NavigationBarMenuView.this.f31842v0, 0)) {
                return;
            }
            itemData.setChecked(true);
        }
    }

    public NavigationBarMenuView(@NonNull Context context) {
        super(context);
        this.f31822g = new Pools.SynchronizedPool(5);
        this.f31823h = new SparseArray<>(5);
        this.f31826k = 0;
        this.f31828l = 0;
        this.f31843w = new SparseArray<>(5);
        this.f31845x = -1;
        this.f31846y = -1;
        this.f31847z = -1;
        this.f31838t0 = false;
        this.f31832p = createDefaultColorStateList(R.attr.textColorSecondary);
        if (isInEditMode()) {
            this.f31820e = null;
        } else {
            AutoTransition autoTransition = new AutoTransition();
            this.f31820e = autoTransition;
            autoTransition.setOrdering(0);
            autoTransition.setDuration(MotionUtils.resolveThemeDuration(getContext(), C5139R.attr.motionDurationMedium4, getResources().getInteger(C5139R.integer.material_motion_duration_long_1)));
            autoTransition.setInterpolator(MotionUtils.resolveThemeInterpolator(getContext(), C5139R.attr.motionEasingStandard, AnimationUtils.FAST_OUT_SLOW_IN_INTERPOLATOR));
            autoTransition.addTransition(new TextScale());
        }
        this.f31821f = new ViewOnClickListenerC5336a();
        ViewCompat.setImportantForAccessibility(this, 1);
    }

    private NavigationBarItemView getNewItem() {
        NavigationBarItemView acquire = this.f31822g.acquire();
        return acquire == null ? createNavigationBarItemView(getContext()) : acquire;
    }

    private void setBadgeIfNeeded(@NonNull NavigationBarItemView navigationBarItemView) {
        BadgeDrawable badgeDrawable;
        int id = navigationBarItemView.getId();
        if (m24381e(id) && (badgeDrawable = this.f31843w.get(id)) != null) {
            navigationBarItemView.setBadge(badgeDrawable);
        }
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public void buildMenuView() {
        removeAllViews();
        NavigationBarItemView[] navigationBarItemViewArr = this.f31825j;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                if (navigationBarItemView != null) {
                    this.f31822g.release(navigationBarItemView);
                    navigationBarItemView.m24359f();
                }
            }
        }
        if (this.f31844w0.size() == 0) {
            this.f31826k = 0;
            this.f31828l = 0;
            this.f31825j = null;
            return;
        }
        m24383g();
        this.f31825j = new NavigationBarItemView[this.f31844w0.size()];
        boolean isShifting = isShifting(this.f31824i, this.f31844w0.getVisibleItems().size());
        for (int i = 0; i < this.f31844w0.size(); i++) {
            this.f31842v0.setUpdateSuspended(true);
            this.f31844w0.getItem(i).setCheckable(true);
            this.f31842v0.setUpdateSuspended(false);
            NavigationBarItemView newItem = getNewItem();
            this.f31825j[i] = newItem;
            newItem.setIconTintList(this.f31829m);
            newItem.setIconSize(this.f31830n);
            newItem.setTextColor(this.f31832p);
            newItem.setTextAppearanceInactive(this.f31833q);
            newItem.setTextAppearanceActive(this.f31835r);
            newItem.setTextAppearanceActiveBoldEnabled(this.f31836s);
            newItem.setTextColor(this.f31831o);
            int i2 = this.f31845x;
            if (i2 != -1) {
                newItem.setItemPaddingTop(i2);
            }
            int i3 = this.f31846y;
            if (i3 != -1) {
                newItem.setItemPaddingBottom(i3);
            }
            int i4 = this.f31847z;
            if (i4 != -1) {
                newItem.setActiveIndicatorLabelPadding(i4);
            }
            newItem.setActiveIndicatorWidth(this.f31818O);
            newItem.setActiveIndicatorHeight(this.f31819Q);
            newItem.setActiveIndicatorMarginHorizontal(this.f31827k0);
            newItem.setActiveIndicatorDrawable(m24379c());
            newItem.setActiveIndicatorResizeable(this.f31838t0);
            newItem.setActiveIndicatorEnabled(this.f31817J);
            Drawable drawable = this.f31837t;
            if (drawable != null) {
                newItem.setItemBackground(drawable);
            } else {
                newItem.setItemBackground(this.f31841v);
            }
            newItem.setItemRippleColor(this.f31839u);
            newItem.setShifting(isShifting);
            newItem.setLabelVisibilityMode(this.f31824i);
            MenuItemImpl menuItemImpl = (MenuItemImpl) this.f31844w0.getItem(i);
            newItem.initialize(menuItemImpl, 0);
            newItem.setItemPosition(i);
            int itemId = menuItemImpl.getItemId();
            newItem.setOnTouchListener(this.f31823h.get(itemId));
            newItem.setOnClickListener(this.f31821f);
            int i5 = this.f31826k;
            if (i5 != 0 && itemId == i5) {
                this.f31828l = i;
            }
            setBadgeIfNeeded(newItem);
            addView(newItem);
        }
        int min = Math.min(this.f31844w0.size() - 1, this.f31828l);
        this.f31828l = min;
        this.f31844w0.getItem(min).setChecked(true);
    }

    @Nullable
    /* renamed from: c */
    public final Drawable m24379c() {
        if (this.f31834q0 == null || this.f31840u0 == null) {
            return null;
        }
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(this.f31834q0);
        materialShapeDrawable.setFillColor(this.f31840u0);
        return materialShapeDrawable;
    }

    @Nullable
    public ColorStateList createDefaultColorStateList(int i) {
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
        int[] iArr = f31813A0;
        return new ColorStateList(new int[][]{iArr, f31816z0, ViewGroup.EMPTY_STATE_SET}, new int[]{colorStateList.getColorForState(iArr, defaultColor), i2, defaultColor});
    }

    @NonNull
    public abstract NavigationBarItemView createNavigationBarItemView(@NonNull Context context);

    /* renamed from: d */
    public BadgeDrawable m24380d(int i) {
        m24386j(i);
        BadgeDrawable badgeDrawable = this.f31843w.get(i);
        if (badgeDrawable == null) {
            badgeDrawable = BadgeDrawable.create(getContext());
            this.f31843w.put(i, badgeDrawable);
        }
        NavigationBarItemView findItemView = findItemView(i);
        if (findItemView != null) {
            findItemView.setBadge(badgeDrawable);
        }
        return badgeDrawable;
    }

    /* renamed from: e */
    public final boolean m24381e(int i) {
        return i != -1;
    }

    /* renamed from: f */
    public void m24382f(int i) {
        m24386j(i);
        NavigationBarItemView findItemView = findItemView(i);
        if (findItemView != null) {
            findItemView.m24366n();
        }
        this.f31843w.put(i, null);
    }

    @Nullable
    public NavigationBarItemView findItemView(int i) {
        m24386j(i);
        NavigationBarItemView[] navigationBarItemViewArr = this.f31825j;
        if (navigationBarItemViewArr == null) {
            return null;
        }
        for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
            if (navigationBarItemView.getId() == i) {
                return navigationBarItemView;
            }
        }
        return null;
    }

    /* renamed from: g */
    public final void m24383g() {
        HashSet hashSet = new HashSet();
        for (int i = 0; i < this.f31844w0.size(); i++) {
            hashSet.add(Integer.valueOf(this.f31844w0.getItem(i).getItemId()));
        }
        for (int i2 = 0; i2 < this.f31843w.size(); i2++) {
            int keyAt = this.f31843w.keyAt(i2);
            if (!hashSet.contains(Integer.valueOf(keyAt))) {
                this.f31843w.delete(keyAt);
            }
        }
    }

    @Px
    public int getActiveIndicatorLabelPadding() {
        return this.f31847z;
    }

    @Nullable
    public BadgeDrawable getBadge(int i) {
        return this.f31843w.get(i);
    }

    public SparseArray<BadgeDrawable> getBadgeDrawables() {
        return this.f31843w;
    }

    @Nullable
    public ColorStateList getIconTintList() {
        return this.f31829m;
    }

    @Nullable
    public ColorStateList getItemActiveIndicatorColor() {
        return this.f31840u0;
    }

    public boolean getItemActiveIndicatorEnabled() {
        return this.f31817J;
    }

    @Px
    public int getItemActiveIndicatorHeight() {
        return this.f31819Q;
    }

    @Px
    public int getItemActiveIndicatorMarginHorizontal() {
        return this.f31827k0;
    }

    @Nullable
    public ShapeAppearanceModel getItemActiveIndicatorShapeAppearance() {
        return this.f31834q0;
    }

    @Px
    public int getItemActiveIndicatorWidth() {
        return this.f31818O;
    }

    @Nullable
    public Drawable getItemBackground() {
        NavigationBarItemView[] navigationBarItemViewArr = this.f31825j;
        return (navigationBarItemViewArr == null || navigationBarItemViewArr.length <= 0) ? this.f31837t : navigationBarItemViewArr[0].getBackground();
    }

    @Deprecated
    public int getItemBackgroundRes() {
        return this.f31841v;
    }

    @Dimension
    public int getItemIconSize() {
        return this.f31830n;
    }

    @Px
    public int getItemPaddingBottom() {
        return this.f31846y;
    }

    @Px
    public int getItemPaddingTop() {
        return this.f31845x;
    }

    @Nullable
    public ColorStateList getItemRippleColor() {
        return this.f31839u;
    }

    @StyleRes
    public int getItemTextAppearanceActive() {
        return this.f31835r;
    }

    @StyleRes
    public int getItemTextAppearanceInactive() {
        return this.f31833q;
    }

    @Nullable
    public ColorStateList getItemTextColor() {
        return this.f31831o;
    }

    public int getLabelVisibilityMode() {
        return this.f31824i;
    }

    @Nullable
    public MenuBuilder getMenu() {
        return this.f31844w0;
    }

    public int getSelectedItemId() {
        return this.f31826k;
    }

    public int getSelectedItemPosition() {
        return this.f31828l;
    }

    @Override // androidx.appcompat.view.menu.MenuView
    public int getWindowAnimations() {
        return 0;
    }

    /* renamed from: h */
    public void m24384h(SparseArray<BadgeDrawable> sparseArray) {
        for (int i = 0; i < sparseArray.size(); i++) {
            int keyAt = sparseArray.keyAt(i);
            if (this.f31843w.indexOfKey(keyAt) < 0) {
                this.f31843w.append(keyAt, sparseArray.get(keyAt));
            }
        }
        NavigationBarItemView[] navigationBarItemViewArr = this.f31825j;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                BadgeDrawable badgeDrawable = this.f31843w.get(navigationBarItemView.getId());
                if (badgeDrawable != null) {
                    navigationBarItemView.setBadge(badgeDrawable);
                }
            }
        }
    }

    /* renamed from: i */
    public void m24385i(int i) {
        int size = this.f31844w0.size();
        for (int i2 = 0; i2 < size; i2++) {
            MenuItem item = this.f31844w0.getItem(i2);
            if (i == item.getItemId()) {
                this.f31826k = i;
                this.f31828l = i2;
                item.setChecked(true);
                return;
            }
        }
    }

    @Override // androidx.appcompat.view.menu.MenuView
    public void initialize(@NonNull MenuBuilder menuBuilder) {
        this.f31844w0 = menuBuilder;
    }

    public boolean isItemActiveIndicatorResizeable() {
        return this.f31838t0;
    }

    public boolean isShifting(int i, int i2) {
        if (i == -1) {
            if (i2 > 3) {
                return true;
            }
        } else if (i == 0) {
            return true;
        }
        return false;
    }

    /* renamed from: j */
    public final void m24386j(int i) {
        if (m24381e(i)) {
            return;
        }
        throw new IllegalArgumentException(i + " is not a valid view id");
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@NonNull AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(1, this.f31844w0.getVisibleItems().size(), false, 1));
    }

    public void setActiveIndicatorLabelPadding(@Px int i) {
        this.f31847z = i;
        NavigationBarItemView[] navigationBarItemViewArr = this.f31825j;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setActiveIndicatorLabelPadding(i);
            }
        }
    }

    public void setIconTintList(@Nullable ColorStateList colorStateList) {
        this.f31829m = colorStateList;
        NavigationBarItemView[] navigationBarItemViewArr = this.f31825j;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setIconTintList(colorStateList);
            }
        }
    }

    public void setItemActiveIndicatorColor(@Nullable ColorStateList colorStateList) {
        this.f31840u0 = colorStateList;
        NavigationBarItemView[] navigationBarItemViewArr = this.f31825j;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setActiveIndicatorDrawable(m24379c());
            }
        }
    }

    public void setItemActiveIndicatorEnabled(boolean z) {
        this.f31817J = z;
        NavigationBarItemView[] navigationBarItemViewArr = this.f31825j;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setActiveIndicatorEnabled(z);
            }
        }
    }

    public void setItemActiveIndicatorHeight(@Px int i) {
        this.f31819Q = i;
        NavigationBarItemView[] navigationBarItemViewArr = this.f31825j;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setActiveIndicatorHeight(i);
            }
        }
    }

    public void setItemActiveIndicatorMarginHorizontal(@Px int i) {
        this.f31827k0 = i;
        NavigationBarItemView[] navigationBarItemViewArr = this.f31825j;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setActiveIndicatorMarginHorizontal(i);
            }
        }
    }

    public void setItemActiveIndicatorResizeable(boolean z) {
        this.f31838t0 = z;
        NavigationBarItemView[] navigationBarItemViewArr = this.f31825j;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setActiveIndicatorResizeable(z);
            }
        }
    }

    public void setItemActiveIndicatorShapeAppearance(@Nullable ShapeAppearanceModel shapeAppearanceModel) {
        this.f31834q0 = shapeAppearanceModel;
        NavigationBarItemView[] navigationBarItemViewArr = this.f31825j;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setActiveIndicatorDrawable(m24379c());
            }
        }
    }

    public void setItemActiveIndicatorWidth(@Px int i) {
        this.f31818O = i;
        NavigationBarItemView[] navigationBarItemViewArr = this.f31825j;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setActiveIndicatorWidth(i);
            }
        }
    }

    public void setItemBackground(@Nullable Drawable drawable) {
        this.f31837t = drawable;
        NavigationBarItemView[] navigationBarItemViewArr = this.f31825j;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setItemBackground(drawable);
            }
        }
    }

    public void setItemBackgroundRes(int i) {
        this.f31841v = i;
        NavigationBarItemView[] navigationBarItemViewArr = this.f31825j;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setItemBackground(i);
            }
        }
    }

    public void setItemIconSize(@Dimension int i) {
        this.f31830n = i;
        NavigationBarItemView[] navigationBarItemViewArr = this.f31825j;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setIconSize(i);
            }
        }
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public void setItemOnTouchListener(int i, @Nullable View.OnTouchListener onTouchListener) {
        if (onTouchListener == null) {
            this.f31823h.remove(i);
        } else {
            this.f31823h.put(i, onTouchListener);
        }
        NavigationBarItemView[] navigationBarItemViewArr = this.f31825j;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                if (navigationBarItemView.getItemData().getItemId() == i) {
                    navigationBarItemView.setOnTouchListener(onTouchListener);
                }
            }
        }
    }

    public void setItemPaddingBottom(@Px int i) {
        this.f31846y = i;
        NavigationBarItemView[] navigationBarItemViewArr = this.f31825j;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setItemPaddingBottom(i);
            }
        }
    }

    public void setItemPaddingTop(@Px int i) {
        this.f31845x = i;
        NavigationBarItemView[] navigationBarItemViewArr = this.f31825j;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setItemPaddingTop(i);
            }
        }
    }

    public void setItemRippleColor(@Nullable ColorStateList colorStateList) {
        this.f31839u = colorStateList;
        NavigationBarItemView[] navigationBarItemViewArr = this.f31825j;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setItemRippleColor(colorStateList);
            }
        }
    }

    public void setItemTextAppearanceActive(@StyleRes int i) {
        this.f31835r = i;
        NavigationBarItemView[] navigationBarItemViewArr = this.f31825j;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setTextAppearanceActive(i);
                ColorStateList colorStateList = this.f31831o;
                if (colorStateList != null) {
                    navigationBarItemView.setTextColor(colorStateList);
                }
            }
        }
    }

    public void setItemTextAppearanceActiveBoldEnabled(boolean z) {
        this.f31836s = z;
        NavigationBarItemView[] navigationBarItemViewArr = this.f31825j;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setTextAppearanceActiveBoldEnabled(z);
            }
        }
    }

    public void setItemTextAppearanceInactive(@StyleRes int i) {
        this.f31833q = i;
        NavigationBarItemView[] navigationBarItemViewArr = this.f31825j;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setTextAppearanceInactive(i);
                ColorStateList colorStateList = this.f31831o;
                if (colorStateList != null) {
                    navigationBarItemView.setTextColor(colorStateList);
                }
            }
        }
    }

    public void setItemTextColor(@Nullable ColorStateList colorStateList) {
        this.f31831o = colorStateList;
        NavigationBarItemView[] navigationBarItemViewArr = this.f31825j;
        if (navigationBarItemViewArr != null) {
            for (NavigationBarItemView navigationBarItemView : navigationBarItemViewArr) {
                navigationBarItemView.setTextColor(colorStateList);
            }
        }
    }

    public void setLabelVisibilityMode(int i) {
        this.f31824i = i;
    }

    public void setPresenter(@NonNull NavigationBarPresenter navigationBarPresenter) {
        this.f31842v0 = navigationBarPresenter;
    }

    public void updateMenuView() {
        TransitionSet transitionSet;
        MenuBuilder menuBuilder = this.f31844w0;
        if (menuBuilder == null || this.f31825j == null) {
            return;
        }
        int size = menuBuilder.size();
        if (size != this.f31825j.length) {
            buildMenuView();
            return;
        }
        int i = this.f31826k;
        for (int i2 = 0; i2 < size; i2++) {
            MenuItem item = this.f31844w0.getItem(i2);
            if (item.isChecked()) {
                this.f31826k = item.getItemId();
                this.f31828l = i2;
            }
        }
        if (i != this.f31826k && (transitionSet = this.f31820e) != null) {
            TransitionManager.beginDelayedTransition(this, transitionSet);
        }
        boolean isShifting = isShifting(this.f31824i, this.f31844w0.getVisibleItems().size());
        for (int i3 = 0; i3 < size; i3++) {
            this.f31842v0.setUpdateSuspended(true);
            this.f31825j[i3].setLabelVisibilityMode(this.f31824i);
            this.f31825j[i3].setShifting(isShifting);
            this.f31825j[i3].initialize((MenuItemImpl) this.f31844w0.getItem(i3), 0);
            this.f31842v0.setUpdateSuspended(false);
        }
    }
}
