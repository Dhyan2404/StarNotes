package com.google.android.material.search;

import android.R;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.MenuRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityManagerCompat;
import androidx.core.widget.TextViewCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.C5139R;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.internal.ToolbarUtils;
import com.google.android.material.search.SearchBar;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.MaterialShapeUtils;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.errorprone.annotations.CanIgnoreReturnValue;

/* loaded from: classes6.dex */
public class SearchBar extends Toolbar {

    /* renamed from: c1 */
    public static final int f32038c1 = C5139R.style.Widget_Material3_SearchBar;

    /* renamed from: d1 */
    public static final int f32039d1 = 53;

    /* renamed from: e1 */
    public static final String f32040e1 = "http://schemas.android.com/apk/res-auto";

    /* renamed from: N0 */
    public final TextView f32041N0;

    /* renamed from: O0 */
    public final boolean f32042O0;

    /* renamed from: P0 */
    public final boolean f32043P0;

    /* renamed from: Q0 */
    public final C5365a f32044Q0;

    /* renamed from: R0 */
    public final Drawable f32045R0;

    /* renamed from: S0 */
    public final boolean f32046S0;

    /* renamed from: T0 */
    public final boolean f32047T0;

    /* renamed from: U0 */
    @Nullable
    public View f32048U0;

    /* renamed from: V0 */
    @Nullable
    public Integer f32049V0;

    /* renamed from: W0 */
    @Nullable
    public Drawable f32050W0;

    /* renamed from: X0 */
    public int f32051X0;

    /* renamed from: Y0 */
    public boolean f32052Y0;

    /* renamed from: Z0 */
    public MaterialShapeDrawable f32053Z0;

    /* renamed from: a1 */
    @Nullable
    public final AccessibilityManager f32054a1;

    /* renamed from: b1 */
    public final AccessibilityManagerCompat.TouchExplorationStateChangeListener f32055b1;

    /* loaded from: classes6.dex */
    public static abstract class OnLoadAnimationCallback {
        public void onAnimationEnd() {
        }

        public void onAnimationStart() {
        }
    }

    /* loaded from: classes6.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C5361a();
        String text;

        /* renamed from: com.google.android.material.search.SearchBar$SavedState$a */
        /* loaded from: classes6.dex */
        public class C5361a implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
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

        public SavedState(Parcel parcel) {
            this(parcel, null);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.text);
        }

        public SavedState(Parcel parcel, @Nullable ClassLoader classLoader) {
            super(parcel, classLoader);
            this.text = parcel.readString();
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    /* renamed from: com.google.android.material.search.SearchBar$a */
    /* loaded from: classes6.dex */
    public class ViewOnAttachStateChangeListenerC5362a implements View.OnAttachStateChangeListener {
        public ViewOnAttachStateChangeListenerC5362a() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            AccessibilityManagerCompat.addTouchExplorationStateChangeListener(SearchBar.this.f32054a1, SearchBar.this.f32055b1);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            AccessibilityManagerCompat.removeTouchExplorationStateChangeListener(SearchBar.this.f32054a1, SearchBar.this.f32055b1);
        }
    }

    public SearchBar(@NonNull Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: J */
    public /* synthetic */ void m24545J(boolean z) {
        setFocusableInTouchMode(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: K */
    public /* synthetic */ void m24546K() {
        this.f32044Q0.m24623J(this);
    }

    private void setNavigationIconDecorative(boolean z) {
        ImageButton navigationIconButton = ToolbarUtils.getNavigationIconButton(this);
        if (navigationIconButton == null) {
            return;
        }
        navigationIconButton.setClickable(!z);
        navigationIconButton.setFocusable(!z);
        Drawable background = navigationIconButton.getBackground();
        if (background != null) {
            this.f32050W0 = background;
        }
        navigationIconButton.setBackgroundDrawable(z ? null : this.f32050W0);
        m24557Q();
    }

    /* renamed from: E */
    public final int m24547E(int i, int i2) {
        return i == 0 ? i2 : i;
    }

    /* renamed from: F */
    public final ColorStateList m24548F(@ColorInt int i, @ColorInt int i2) {
        int[][] iArr = {new int[]{R.attr.state_pressed}, new int[]{R.attr.state_focused}, new int[0]};
        int layer = MaterialColors.layer(i, i2);
        return new ColorStateList(iArr, new int[]{layer, layer, i});
    }

    /* renamed from: G */
    public final void m24549G(ShapeAppearanceModel shapeAppearanceModel, @ColorInt int i, float f, float f2, @ColorInt int i2) {
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(shapeAppearanceModel);
        this.f32053Z0 = materialShapeDrawable;
        materialShapeDrawable.initializeElevationOverlay(getContext());
        this.f32053Z0.setElevation(f);
        if (f2 >= 0.0f) {
            this.f32053Z0.setStroke(f2, i2);
        }
        int color = MaterialColors.getColor(this, C5139R.attr.colorControlHighlight);
        this.f32053Z0.setFillColor(ColorStateList.valueOf(i));
        ColorStateList valueOf = ColorStateList.valueOf(color);
        MaterialShapeDrawable materialShapeDrawable2 = this.f32053Z0;
        ViewCompat.setBackground(this, new RippleDrawable(valueOf, materialShapeDrawable2, materialShapeDrawable2));
    }

    /* renamed from: H */
    public final void m24550H() {
        setNavigationIcon(getNavigationIcon() == null ? this.f32045R0 : getNavigationIcon());
        setNavigationIconDecorative(true);
    }

    /* renamed from: I */
    public final void m24551I(@StyleRes int i, String str, String str2) {
        if (i != -1) {
            TextViewCompat.setTextAppearance(this.f32041N0, i);
        }
        setText(str);
        setHint(str2);
        if (getNavigationIcon() == null) {
            MarginLayoutParamsCompat.setMarginStart((ViewGroup.MarginLayoutParams) this.f32041N0.getLayoutParams(), getResources().getDimensionPixelSize(C5139R.dimen.m3_searchbar_text_margin_start_no_navigation_icon));
        }
    }

    /* renamed from: L */
    public final void m24552L() {
        View view = this.f32048U0;
        if (view == null) {
            return;
        }
        int measuredWidth = view.getMeasuredWidth();
        int measuredWidth2 = (getMeasuredWidth() / 2) - (measuredWidth / 2);
        int i = measuredWidth2 + measuredWidth;
        int measuredHeight = this.f32048U0.getMeasuredHeight();
        int measuredHeight2 = (getMeasuredHeight() / 2) - (measuredHeight / 2);
        m24553M(this.f32048U0, measuredWidth2, measuredHeight2, i, measuredHeight2 + measuredHeight);
    }

    /* renamed from: M */
    public final void m24553M(View view, int i, int i2, int i3, int i4) {
        if (ViewCompat.getLayoutDirection(this) == 1) {
            view.layout(getMeasuredWidth() - i3, i2, getMeasuredWidth() - i, i4);
        } else {
            view.layout(i, i2, i3, i4);
        }
    }

    @Nullable
    /* renamed from: N */
    public final Drawable m24554N(@Nullable Drawable drawable) {
        int color;
        if (!this.f32046S0 || drawable == null) {
            return drawable;
        }
        Integer num = this.f32049V0;
        if (num != null) {
            color = num.intValue();
        } else {
            color = MaterialColors.getColor(this, drawable == this.f32045R0 ? C5139R.attr.colorOnSurfaceVariant : C5139R.attr.colorOnSurface);
        }
        Drawable wrap = DrawableCompat.wrap(drawable.mutate());
        DrawableCompat.setTint(wrap, color);
        return wrap;
    }

    /* renamed from: O */
    public final void m24555O(int i, int i2) {
        View view = this.f32048U0;
        if (view != null) {
            view.measure(i, i2);
        }
    }

    /* renamed from: P */
    public final void m24556P() {
        if (this.f32043P0 && (getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            Resources resources = getResources();
            int dimensionPixelSize = resources.getDimensionPixelSize(C5139R.dimen.m3_searchbar_margin_horizontal);
            int dimensionPixelSize2 = resources.getDimensionPixelSize(getDefaultMarginVerticalResource());
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) getLayoutParams();
            marginLayoutParams.leftMargin = m24547E(marginLayoutParams.leftMargin, dimensionPixelSize);
            marginLayoutParams.topMargin = m24547E(marginLayoutParams.topMargin, dimensionPixelSize2);
            marginLayoutParams.rightMargin = m24547E(marginLayoutParams.rightMargin, dimensionPixelSize);
            marginLayoutParams.bottomMargin = m24547E(marginLayoutParams.bottomMargin, dimensionPixelSize2);
        }
    }

    /* renamed from: Q */
    public final void m24557Q() {
        if (Build.VERSION.SDK_INT < 34) {
            return;
        }
        boolean z = getLayoutDirection() == 1;
        ImageButton navigationIconButton = ToolbarUtils.getNavigationIconButton(this);
        int width = (navigationIconButton == null || !navigationIconButton.isClickable()) ? 0 : z ? getWidth() - navigationIconButton.getLeft() : navigationIconButton.getRight();
        ActionMenuView actionMenuView = ToolbarUtils.getActionMenuView(this);
        int right = actionMenuView != null ? z ? actionMenuView.getRight() : getWidth() - actionMenuView.getLeft() : 0;
        float f = -(z ? right : width);
        if (!z) {
            width = right;
        }
        setHandwritingBoundsOffsets(f, 0.0f, -width, 0.0f);
    }

    /* renamed from: R */
    public final void m24558R() {
        if (getLayoutParams() instanceof AppBarLayout.LayoutParams) {
            AppBarLayout.LayoutParams layoutParams = (AppBarLayout.LayoutParams) getLayoutParams();
            if (this.f32052Y0) {
                if (layoutParams.getScrollFlags() == 0) {
                    layoutParams.setScrollFlags(53);
                }
            } else if (layoutParams.getScrollFlags() == 53) {
                layoutParams.setScrollFlags(0);
            }
        }
    }

    /* renamed from: S */
    public final void m24559S() {
        AccessibilityManager accessibilityManager = this.f32054a1;
        if (accessibilityManager != null) {
            if (accessibilityManager.isEnabled() && this.f32054a1.isTouchExplorationEnabled()) {
                setFocusableInTouchMode(true);
            }
            addOnAttachStateChangeListener(new ViewOnAttachStateChangeListenerC5362a());
        }
    }

    /* renamed from: T */
    public final void m24560T(@Nullable AttributeSet attributeSet) {
        if (attributeSet == null) {
            return;
        }
        if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "title") != null) {
            throw new UnsupportedOperationException("SearchBar does not support title. Use hint or text instead.");
        }
        if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "subtitle") != null) {
            throw new UnsupportedOperationException("SearchBar does not support subtitle. Use hint or text instead.");
        }
    }

    public void addCollapseAnimationListener(@NonNull AnimatorListenerAdapter animatorListenerAdapter) {
        this.f32044Q0.m24625h(animatorListenerAdapter);
    }

    public void addExpandAnimationListener(@NonNull AnimatorListenerAdapter animatorListenerAdapter) {
        this.f32044Q0.m24626i(animatorListenerAdapter);
    }

    public void addOnLoadAnimationCallback(@NonNull OnLoadAnimationCallback onLoadAnimationCallback) {
        this.f32044Q0.m24627j(onLoadAnimationCallback);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (this.f32042O0 && this.f32048U0 == null && !(view instanceof ActionMenuView)) {
            this.f32048U0 = view;
            view.setAlpha(0.0f);
        }
        super.addView(view, i, layoutParams);
    }

    public void clearText() {
        this.f32041N0.setText("");
    }

    @CanIgnoreReturnValue
    public boolean collapse(@NonNull View view) {
        return collapse(view, null);
    }

    @CanIgnoreReturnValue
    public boolean expand(@NonNull View view) {
        return expand(view, null);
    }

    @Nullable
    public View getCenterView() {
        return this.f32048U0;
    }

    public float getCompatElevation() {
        MaterialShapeDrawable materialShapeDrawable = this.f32053Z0;
        return materialShapeDrawable != null ? materialShapeDrawable.getElevation() : ViewCompat.getElevation(this);
    }

    public float getCornerSize() {
        return this.f32053Z0.getTopLeftCornerResolvedSize();
    }

    @DimenRes
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public int getDefaultMarginVerticalResource() {
        return C5139R.dimen.m3_searchbar_margin_vertical;
    }

    @DrawableRes
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public int getDefaultNavigationIconResource() {
        return C5139R.drawable.ic_search_black_24;
    }

    @Nullable
    public CharSequence getHint() {
        return this.f32041N0.getHint();
    }

    public int getMenuResId() {
        return this.f32051X0;
    }

    @ColorInt
    public int getStrokeColor() {
        return this.f32053Z0.getStrokeColor().getDefaultColor();
    }

    @Dimension
    public float getStrokeWidth() {
        return this.f32053Z0.getStrokeWidth();
    }

    @NonNull
    public CharSequence getText() {
        return this.f32041N0.getText();
    }

    @NonNull
    public TextView getTextView() {
        return this.f32041N0;
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void inflateMenu(@MenuRes int i) {
        Menu menu = getMenu();
        boolean z = menu instanceof MenuBuilder;
        if (z) {
            ((MenuBuilder) menu).stopDispatchingItemsChanged();
        }
        super.inflateMenu(i);
        this.f32051X0 = i;
        if (z) {
            ((MenuBuilder) menu).startDispatchingItemsChanged();
        }
    }

    public boolean isCollapsing() {
        return this.f32044Q0.m24641x();
    }

    public boolean isDefaultScrollFlagsEnabled() {
        return this.f32052Y0;
    }

    public boolean isExpanding() {
        return this.f32044Q0.m24642y();
    }

    public boolean isOnLoadAnimationFadeInEnabled() {
        return this.f32044Q0.m24643z();
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        MaterialShapeUtils.setParentAbsoluteElevation(this, this.f32053Z0);
        m24556P();
        m24558R();
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(EditText.class.getCanonicalName());
        accessibilityNodeInfo.setEditable(isEnabled());
        CharSequence text = getText();
        boolean isEmpty = TextUtils.isEmpty(text);
        accessibilityNodeInfo.setHintText(getHint());
        accessibilityNodeInfo.setShowingHintText(isEmpty);
        if (isEmpty) {
            text = getHint();
        }
        accessibilityNodeInfo.setText(text);
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        m24552L();
        m24557Q();
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        m24555O(i, i2);
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setText(savedState.text);
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    @NonNull
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        CharSequence text = getText();
        savedState.text = text == null ? null : text.toString();
        return savedState;
    }

    public boolean removeCollapseAnimationListener(@NonNull AnimatorListenerAdapter animatorListenerAdapter) {
        return this.f32044Q0.m24617D(animatorListenerAdapter);
    }

    public boolean removeExpandAnimationListener(@NonNull AnimatorListenerAdapter animatorListenerAdapter) {
        return this.f32044Q0.m24618E(animatorListenerAdapter);
    }

    public boolean removeOnLoadAnimationCallback(@NonNull OnLoadAnimationCallback onLoadAnimationCallback) {
        return this.f32044Q0.m24619F(onLoadAnimationCallback);
    }

    public void setCenterView(@Nullable View view) {
        View view2 = this.f32048U0;
        if (view2 != null) {
            removeView(view2);
            this.f32048U0 = null;
        }
        if (view != null) {
            addView(view);
        }
    }

    public void setDefaultScrollFlagsEnabled(boolean z) {
        this.f32052Y0 = z;
        m24558R();
    }

    @Override // android.view.View
    @RequiresApi(21)
    public void setElevation(float f) {
        super.setElevation(f);
        MaterialShapeDrawable materialShapeDrawable = this.f32053Z0;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.setElevation(f);
        }
    }

    public void setHint(@Nullable CharSequence charSequence) {
        this.f32041N0.setHint(charSequence);
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setNavigationIcon(@Nullable Drawable drawable) {
        super.setNavigationIcon(m24554N(drawable));
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setNavigationOnClickListener(View.OnClickListener onClickListener) {
        if (this.f32047T0) {
            return;
        }
        super.setNavigationOnClickListener(onClickListener);
        setNavigationIconDecorative(onClickListener == null);
    }

    public void setOnLoadAnimationFadeInEnabled(boolean z) {
        this.f32044Q0.m24620G(z);
    }

    public void setStrokeColor(@ColorInt int i) {
        if (getStrokeColor() != i) {
            this.f32053Z0.setStrokeColor(ColorStateList.valueOf(i));
        }
    }

    public void setStrokeWidth(@Dimension float f) {
        if (getStrokeWidth() != f) {
            this.f32053Z0.setStrokeWidth(f);
        }
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setSubtitle(CharSequence charSequence) {
    }

    public void setText(@Nullable CharSequence charSequence) {
        this.f32041N0.setText(charSequence);
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setTitle(CharSequence charSequence) {
    }

    public void startOnLoadAnimation() {
        post(new Runnable() { // from class: com.sunia.HTREnginev2.n6m
            @Override // java.lang.Runnable
            public final void run() {
                SearchBar.this.m24546K();
            }
        });
    }

    public void stopOnLoadAnimation() {
        this.f32044Q0.m24624K(this);
    }

    /* loaded from: classes6.dex */
    public static class ScrollingViewBehavior extends AppBarLayout.ScrollingViewBehavior {

        /* renamed from: l */
        public boolean f32056l;

        public ScrollingViewBehavior() {
            this.f32056l = false;
        }

        /* renamed from: k */
        public final void m24564k(AppBarLayout appBarLayout) {
            appBarLayout.setBackgroundColor(0);
            appBarLayout.setTargetElevation(0.0f);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.ScrollingViewBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean onDependentViewChanged(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull View view2) {
            boolean onDependentViewChanged = super.onDependentViewChanged(coordinatorLayout, view, view2);
            if (!this.f32056l && (view2 instanceof AppBarLayout)) {
                this.f32056l = true;
                m24564k((AppBarLayout) view2);
            }
            return onDependentViewChanged;
        }

        @Override // com.sunia.HTREnginev2.tfh
        public boolean shouldHeaderOverlapScrollingChild() {
            return true;
        }

        public ScrollingViewBehavior(@NonNull Context context, @Nullable AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f32056l = false;
        }
    }

    public SearchBar(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C5139R.attr.materialSearchBarStyle);
    }

    @CanIgnoreReturnValue
    public boolean collapse(@NonNull View view, @Nullable AppBarLayout appBarLayout) {
        return collapse(view, appBarLayout, false);
    }

    @CanIgnoreReturnValue
    public boolean expand(@NonNull View view, @Nullable AppBarLayout appBarLayout) {
        return expand(view, appBarLayout, false);
    }

    public void setHint(@StringRes int i) {
        this.f32041N0.setHint(i);
    }

    public void setText(@StringRes int i) {
        this.f32041N0.setText(i);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public SearchBar(@androidx.annotation.NonNull android.content.Context r11, @androidx.annotation.Nullable android.util.AttributeSet r12, int r13) {
        /*
            r10 = this;
            int r6 = com.google.android.material.search.SearchBar.f32038c1
            android.content.Context r11 = com.google.android.material.theme.overlay.MaterialThemeOverlay.wrap(r11, r12, r13, r6)
            r10.<init>(r11, r12, r13)
            r11 = -1
            r10.f32051X0 = r11
            com.sunia.HTREnginev2.m6m r0 = new com.sunia.HTREnginev2.m6m
            r0.<init>()
            r10.f32055b1 = r0
            android.content.Context r7 = r10.getContext()
            r10.m24560T(r12)
            int r0 = r10.getDefaultNavigationIconResource()
            android.graphics.drawable.Drawable r0 = androidx.appcompat.content.res.AppCompatResources.getDrawable(r7, r0)
            r10.f32045R0 = r0
            com.google.android.material.search.a r0 = new com.google.android.material.search.a
            r0.<init>()
            r10.f32044Q0 = r0
            int[] r2 = com.google.android.material.C5139R.styleable.SearchBar
            r8 = 0
            int[] r5 = new int[r8]
            r0 = r7
            r1 = r12
            r3 = r13
            r4 = r6
            android.content.res.TypedArray r0 = com.google.android.material.internal.ThemeEnforcement.obtainStyledAttributes(r0, r1, r2, r3, r4, r5)
            com.google.android.material.shape.ShapeAppearanceModel$Builder r12 = com.google.android.material.shape.ShapeAppearanceModel.builder(r7, r12, r13, r6)
            com.google.android.material.shape.ShapeAppearanceModel r2 = r12.build()
            int r12 = com.google.android.material.C5139R.styleable.SearchBar_backgroundTint
            int r3 = r0.getColor(r12, r8)
            int r12 = com.google.android.material.C5139R.styleable.SearchBar_elevation
            r13 = 0
            float r4 = r0.getDimension(r12, r13)
            int r12 = com.google.android.material.C5139R.styleable.SearchBar_defaultMarginsEnabled
            r13 = 1
            boolean r12 = r0.getBoolean(r12, r13)
            r10.f32043P0 = r12
            int r12 = com.google.android.material.C5139R.styleable.SearchBar_defaultScrollFlagsEnabled
            boolean r12 = r0.getBoolean(r12, r13)
            r10.f32052Y0 = r12
            int r12 = com.google.android.material.C5139R.styleable.SearchBar_hideNavigationIcon
            boolean r12 = r0.getBoolean(r12, r8)
            int r1 = com.google.android.material.C5139R.styleable.SearchBar_forceDefaultNavigationOnClickListener
            boolean r1 = r0.getBoolean(r1, r8)
            r10.f32047T0 = r1
            int r1 = com.google.android.material.C5139R.styleable.SearchBar_tintNavigationIcon
            boolean r1 = r0.getBoolean(r1, r13)
            r10.f32046S0 = r1
            int r1 = com.google.android.material.C5139R.styleable.SearchBar_navigationIconTint
            boolean r1 = r0.hasValue(r1)
            if (r1 == 0) goto L88
            int r1 = com.google.android.material.C5139R.styleable.SearchBar_navigationIconTint
            int r1 = r0.getColor(r1, r11)
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            r10.f32049V0 = r1
        L88:
            int r1 = com.google.android.material.C5139R.styleable.SearchBar_android_textAppearance
            int r11 = r0.getResourceId(r1, r11)
            int r1 = com.google.android.material.C5139R.styleable.SearchBar_android_text
            java.lang.String r1 = r0.getString(r1)
            int r5 = com.google.android.material.C5139R.styleable.SearchBar_android_hint
            java.lang.String r5 = r0.getString(r5)
            int r6 = com.google.android.material.C5139R.styleable.SearchBar_strokeWidth
            r9 = -1082130432(0xffffffffbf800000, float:-1.0)
            float r6 = r0.getDimension(r6, r9)
            int r9 = com.google.android.material.C5139R.styleable.SearchBar_strokeColor
            int r8 = r0.getColor(r9, r8)
            r0.recycle()
            if (r12 != 0) goto Lb0
            r10.m24550H()
        Lb0:
            r10.setClickable(r13)
            r10.setFocusable(r13)
            android.view.LayoutInflater r12 = android.view.LayoutInflater.from(r7)
            int r0 = com.google.android.material.C5139R.layout.mtrl_search_bar
            r12.inflate(r0, r10)
            r10.f32042O0 = r13
            int r12 = com.google.android.material.C5139R.id.open_search_bar_text_view
            android.view.View r12 = r10.findViewById(r12)
            android.widget.TextView r12 = (android.widget.TextView) r12
            r10.f32041N0 = r12
            androidx.core.view.ViewCompat.setElevation(r10, r4)
            r10.m24551I(r11, r1, r5)
            r1 = r10
            r5 = r6
            r6 = r8
            r1.m24549G(r2, r3, r4, r5, r6)
            android.content.Context r11 = r10.getContext()
            java.lang.String r12 = "accessibility"
            java.lang.Object r11 = r11.getSystemService(r12)
            android.view.accessibility.AccessibilityManager r11 = (android.view.accessibility.AccessibilityManager) r11
            r10.f32054a1 = r11
            r10.m24559S()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.search.SearchBar.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }

    @CanIgnoreReturnValue
    public boolean collapse(@NonNull View view, @Nullable AppBarLayout appBarLayout, boolean z) {
        if ((view.getVisibility() != 0 || isCollapsing()) && !isExpanding()) {
            return false;
        }
        this.f32044Q0.m24621H(this, view, appBarLayout, z);
        return true;
    }

    @CanIgnoreReturnValue
    public boolean expand(@NonNull View view, @Nullable AppBarLayout appBarLayout, boolean z) {
        if ((view.getVisibility() == 0 || isExpanding()) && !isCollapsing()) {
            return false;
        }
        this.f32044Q0.m24622I(this, view, appBarLayout, z);
        return true;
    }
}
