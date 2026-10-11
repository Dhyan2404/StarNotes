package com.google.android.material.search;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.activity.BackEventCompat;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.MenuRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.graphics.drawable.DrawerArrowDrawable;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.widget.TextViewCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.C5139R;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.elevation.ElevationOverlayProvider;
import com.google.android.material.internal.ClippableRoundedCornerLayout;
import com.google.android.material.internal.ContextUtils;
import com.google.android.material.internal.FadeThroughDrawable;
import com.google.android.material.internal.ToolbarUtils;
import com.google.android.material.internal.TouchObserverFrameLayout;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.motion.MaterialBackHandler;
import com.google.android.material.motion.MaterialBackOrchestrator;
import com.google.android.material.motion.MaterialMainContainerBackHelper;
import com.google.android.material.search.SearchView;
import com.google.android.material.shape.MaterialShapeUtils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;

/* loaded from: classes6.dex */
public class SearchView extends FrameLayout implements CoordinatorLayout.AttachedBehavior, MaterialBackHandler {

    /* renamed from: v0 */
    public static final long f32058v0 = 100;

    /* renamed from: w0 */
    public static final int f32059w0 = C5139R.style.Widget_Material3_SearchView;

    /* renamed from: J */
    public boolean f32060J;

    /* renamed from: O */
    public boolean f32061O;

    /* renamed from: Q */
    @ColorInt
    public final int f32062Q;

    /* renamed from: e */
    public final View f32063e;

    /* renamed from: f */
    public final ClippableRoundedCornerLayout f32064f;

    /* renamed from: g */
    public final View f32065g;

    /* renamed from: h */
    public final View f32066h;

    /* renamed from: i */
    public final FrameLayout f32067i;

    /* renamed from: j */
    public final FrameLayout f32068j;

    /* renamed from: k */
    public final MaterialToolbar f32069k;

    /* renamed from: k0 */
    public boolean f32070k0;

    /* renamed from: l */
    public final Toolbar f32071l;

    /* renamed from: m */
    public final TextView f32072m;

    /* renamed from: n */
    public final EditText f32073n;

    /* renamed from: o */
    public final ImageButton f32074o;

    /* renamed from: p */
    public final View f32075p;

    /* renamed from: q */
    public final TouchObserverFrameLayout f32076q;

    /* renamed from: q0 */
    public boolean f32077q0;

    /* renamed from: r */
    public final boolean f32078r;

    /* renamed from: s */
    public final C5366b f32079s;

    /* renamed from: t */
    @NonNull
    public final MaterialBackOrchestrator f32080t;

    /* renamed from: t0 */
    @NonNull
    public TransitionState f32081t0;

    /* renamed from: u */
    public final boolean f32082u;

    /* renamed from: u0 */
    public Map<View, Integer> f32083u0;

    /* renamed from: v */
    public final ElevationOverlayProvider f32084v;

    /* renamed from: w */
    public final Set<TransitionListener> f32085w;

    /* renamed from: x */
    @Nullable
    public SearchBar f32086x;

    /* renamed from: y */
    public int f32087y;

    /* renamed from: z */
    public boolean f32088z;

    /* loaded from: classes6.dex */
    public static class Behavior extends CoordinatorLayout.Behavior<SearchView> {
        public Behavior() {
        }

        public Behavior(@NonNull Context context, @Nullable AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean onDependentViewChanged(@NonNull CoordinatorLayout coordinatorLayout, @NonNull SearchView searchView, @NonNull View view) {
            if (searchView.isSetupWithSearchBar() || !(view instanceof SearchBar)) {
                return false;
            }
            searchView.setupWithSearchBar((SearchBar) view);
            return false;
        }
    }

    /* loaded from: classes6.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C5363a();
        String text;
        int visibility;

        /* renamed from: com.google.android.material.search.SearchView$SavedState$a */
        /* loaded from: classes6.dex */
        public class C5363a implements Parcelable.ClassLoaderCreator<SavedState> {
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
            parcel.writeInt(this.visibility);
        }

        public SavedState(Parcel parcel, @Nullable ClassLoader classLoader) {
            super(parcel, classLoader);
            this.text = parcel.readString();
            this.visibility = parcel.readInt();
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    /* loaded from: classes6.dex */
    public interface TransitionListener {
        void onStateChanged(@NonNull SearchView searchView, @NonNull TransitionState transitionState, @NonNull TransitionState transitionState2);
    }

    /* loaded from: classes6.dex */
    public enum TransitionState {
        HIDING,
        HIDDEN,
        SHOWING,
        SHOWN
    }

    /* renamed from: com.google.android.material.search.SearchView$a */
    /* loaded from: classes6.dex */
    public class C5364a implements TextWatcher {
        public C5364a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            SearchView.this.f32074o.setVisibility(charSequence.length() > 0 ? 0 : 8);
        }
    }

    public SearchView(@NonNull Context context) {
        this(context, null);
    }

    @Nullable
    private Window getActivityWindow() {
        Activity activity = ContextUtils.getActivity(getContext());
        if (activity == null) {
            return null;
        }
        return activity.getWindow();
    }

    private float getOverlayElevation() {
        SearchBar searchBar = this.f32086x;
        return searchBar != null ? searchBar.getCompatElevation() : getResources().getDimension(C5139R.dimen.m3_searchview_elevation);
    }

    @Px
    private int getStatusBarHeight() {
        int identifier = getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            return getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n */
    public /* synthetic */ void m24575n() {
        this.f32073n.clearFocus();
        SearchBar searchBar = this.f32086x;
        if (searchBar != null) {
            searchBar.requestFocus();
        }
        ViewUtils.hideKeyboard(this.f32073n, this.f32070k0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o */
    public /* synthetic */ void m24576o() {
        if (this.f32073n.requestFocus()) {
            this.f32073n.sendAccessibilityEvent(8);
        }
        ViewUtils.showKeyboard(this.f32073n, this.f32070k0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p */
    public /* synthetic */ void m24577p(View view) {
        hide();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: q */
    public /* synthetic */ void m24578q(View view) {
        clearText();
        m24601x();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: r */
    public /* synthetic */ boolean m24579r(View view, MotionEvent motionEvent) {
        if (!m24598k()) {
            return false;
        }
        clearFocusAndHideKeyboard();
        return false;
    }

    /* renamed from: s */
    public static /* synthetic */ WindowInsetsCompat m24580s(ViewGroup.MarginLayoutParams marginLayoutParams, int i, int i2, View view, WindowInsetsCompat windowInsetsCompat) {
        marginLayoutParams.leftMargin = i + windowInsetsCompat.getSystemWindowInsetLeft();
        marginLayoutParams.rightMargin = i2 + windowInsetsCompat.getSystemWindowInsetRight();
        return windowInsetsCompat;
    }

    private void setStatusBarSpacerEnabledInternal(boolean z) {
        this.f32066h.setVisibility(z ? 0 : 8);
    }

    private void setUpBackgroundViewElevationOverlay(float f) {
        ElevationOverlayProvider elevationOverlayProvider = this.f32084v;
        if (elevationOverlayProvider == null || this.f32065g == null) {
            return;
        }
        this.f32065g.setBackgroundColor(elevationOverlayProvider.compositeOverlayIfNeeded(this.f32062Q, f));
    }

    private void setUpHeaderLayout(int i) {
        if (i != -1) {
            addHeaderView(LayoutInflater.from(getContext()).inflate(i, (ViewGroup) this.f32067i, false));
        }
    }

    private void setUpStatusBarSpacer(@Px int i) {
        if (this.f32066h.getLayoutParams().height != i) {
            this.f32066h.getLayoutParams().height = i;
            this.f32066h.requestLayout();
        }
    }

    /* renamed from: t */
    public static /* synthetic */ boolean m24581t(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: u */
    public /* synthetic */ WindowInsetsCompat m24582u(View view, WindowInsetsCompat windowInsetsCompat) {
        int systemWindowInsetTop = windowInsetsCompat.getSystemWindowInsetTop();
        setUpStatusBarSpacer(systemWindowInsetTop);
        if (!this.f32077q0) {
            setStatusBarSpacerEnabledInternal(systemWindowInsetTop > 0);
        }
        return windowInsetsCompat;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: v */
    public /* synthetic */ WindowInsetsCompat m24583v(View view, WindowInsetsCompat windowInsetsCompat, ViewUtils.RelativePadding relativePadding) {
        boolean isLayoutRtl = ViewUtils.isLayoutRtl(this.f32069k);
        this.f32069k.setPadding((isLayoutRtl ? relativePadding.end : relativePadding.start) + windowInsetsCompat.getSystemWindowInsetLeft(), relativePadding.top, (isLayoutRtl ? relativePadding.start : relativePadding.end) + windowInsetsCompat.getSystemWindowInsetRight(), relativePadding.bottom);
        return windowInsetsCompat;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: w */
    public /* synthetic */ void m24584w(View view) {
        show();
    }

    /* renamed from: A */
    public final void m24585A() {
        setUpBackgroundViewElevationOverlay(getOverlayElevation());
    }

    /* renamed from: B */
    public final void m24586B() {
        this.f32074o.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.o8m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SearchView.this.m24578q(view);
            }
        });
        this.f32073n.addTextChangedListener(new C5364a());
    }

    @SuppressLint({"ClickableViewAccessibility"})
    /* renamed from: C */
    public final void m24587C() {
        this.f32076q.setOnTouchListener(new View.OnTouchListener() { // from class: com.sunia.HTREnginev2.f8m
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean m24579r;
                m24579r = SearchView.this.m24579r(view, motionEvent);
                return m24579r;
            }
        });
    }

    /* renamed from: D */
    public final void m24588D() {
        final ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f32075p.getLayoutParams();
        final int i = marginLayoutParams.leftMargin;
        final int i2 = marginLayoutParams.rightMargin;
        ViewCompat.setOnApplyWindowInsetsListener(this.f32075p, new OnApplyWindowInsetsListener() { // from class: com.sunia.HTREnginev2.j8m
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                WindowInsetsCompat m24580s;
                m24580s = SearchView.m24580s(marginLayoutParams, i, i2, view, windowInsetsCompat);
                return m24580s;
            }
        });
    }

    /* renamed from: E */
    public final void m24589E(@StyleRes int i, String str, String str2) {
        if (i != -1) {
            TextViewCompat.setTextAppearance(this.f32073n, i);
        }
        this.f32073n.setText(str);
        this.f32073n.setHint(str2);
    }

    /* renamed from: F */
    public final void m24590F() {
        m24593I();
        m24588D();
        m24592H();
    }

    @SuppressLint({"ClickableViewAccessibility"})
    /* renamed from: G */
    public final void m24591G() {
        this.f32064f.setOnTouchListener(new View.OnTouchListener() { // from class: com.sunia.HTREnginev2.h8m
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean m24581t;
                m24581t = SearchView.m24581t(view, motionEvent);
                return m24581t;
            }
        });
    }

    /* renamed from: H */
    public final void m24592H() {
        setUpStatusBarSpacer(getStatusBarHeight());
        ViewCompat.setOnApplyWindowInsetsListener(this.f32066h, new OnApplyWindowInsetsListener() { // from class: com.sunia.HTREnginev2.k8m
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                WindowInsetsCompat m24582u;
                m24582u = SearchView.this.m24582u(view, windowInsetsCompat);
                return m24582u;
            }
        });
    }

    /* renamed from: I */
    public final void m24593I() {
        ViewUtils.doOnApplyWindowInsets(this.f32069k, new ViewUtils.OnApplyWindowInsetsListener() { // from class: com.sunia.HTREnginev2.p8m
            @Override // com.google.android.material.internal.ViewUtils.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat, ViewUtils.RelativePadding relativePadding) {
                WindowInsetsCompat m24583v;
                m24583v = SearchView.this.m24583v(view, windowInsetsCompat, relativePadding);
                return m24583v;
            }
        });
    }

    @SuppressLint({"InlinedApi"})
    /* renamed from: J */
    public final void m24594J(ViewGroup viewGroup, boolean z) {
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt != this) {
                if (childAt.findViewById(this.f32064f.getId()) != null) {
                    m24594J((ViewGroup) childAt, z);
                } else if (z) {
                    this.f32083u0.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                    ViewCompat.setImportantForAccessibility(childAt, 4);
                } else {
                    Map<View, Integer> map = this.f32083u0;
                    if (map != null && map.containsKey(childAt)) {
                        ViewCompat.setImportantForAccessibility(childAt, this.f32083u0.get(childAt).intValue());
                    }
                }
            }
        }
    }

    /* renamed from: K */
    public final void m24595K(@NonNull TransitionState transitionState) {
        if (this.f32086x == null || !this.f32082u) {
            return;
        }
        if (transitionState.equals(TransitionState.SHOWN)) {
            this.f32080t.startListeningForBackCallbacks();
        } else if (transitionState.equals(TransitionState.HIDDEN)) {
            this.f32080t.stopListeningForBackCallbacks();
        }
    }

    /* renamed from: L */
    public final void m24596L() {
        MaterialToolbar materialToolbar = this.f32069k;
        if (materialToolbar == null || m24600m(materialToolbar)) {
            return;
        }
        int defaultNavigationIconResource = getDefaultNavigationIconResource();
        if (this.f32086x == null) {
            this.f32069k.setNavigationIcon(defaultNavigationIconResource);
            return;
        }
        Drawable wrap = DrawableCompat.wrap(AppCompatResources.getDrawable(getContext(), defaultNavigationIconResource).mutate());
        if (this.f32069k.getNavigationIconTint() != null) {
            DrawableCompat.setTint(wrap, this.f32069k.getNavigationIconTint().intValue());
        }
        this.f32069k.setNavigationIcon(new FadeThroughDrawable(this.f32086x.getNavigationIcon(), wrap));
        m24597M();
    }

    /* renamed from: M */
    public final void m24597M() {
        ImageButton navigationIconButton = ToolbarUtils.getNavigationIconButton(this.f32069k);
        if (navigationIconButton == null) {
            return;
        }
        int i = this.f32064f.getVisibility() == 0 ? 1 : 0;
        Drawable unwrap = DrawableCompat.unwrap(navigationIconButton.getDrawable());
        if (unwrap instanceof DrawerArrowDrawable) {
            ((DrawerArrowDrawable) unwrap).setProgress(i);
        }
        if (unwrap instanceof FadeThroughDrawable) {
            ((FadeThroughDrawable) unwrap).setProgress(i);
        }
    }

    public void addHeaderView(@NonNull View view) {
        this.f32067i.addView(view);
        this.f32067i.setVisibility(0);
    }

    public void addTransitionListener(@NonNull TransitionListener transitionListener) {
        this.f32085w.add(transitionListener);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (this.f32078r) {
            this.f32076q.addView(view, i, layoutParams);
        } else {
            super.addView(view, i, layoutParams);
        }
    }

    @Override // com.google.android.material.motion.MaterialBackHandler
    public void cancelBackProgress() {
        if (m24599l() || this.f32086x == null || Build.VERSION.SDK_INT < 34) {
            return;
        }
        this.f32079s.m24691o();
    }

    public void clearFocusAndHideKeyboard() {
        this.f32073n.post(new Runnable() { // from class: com.sunia.HTREnginev2.g8m
            @Override // java.lang.Runnable
            public final void run() {
                SearchView.this.m24575n();
            }
        });
    }

    public void clearText() {
        this.f32073n.setText("");
    }

    @VisibleForTesting
    public MaterialMainContainerBackHelper getBackHelper() {
        return this.f32079s.m24694r();
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AttachedBehavior
    @NonNull
    public CoordinatorLayout.Behavior<SearchView> getBehavior() {
        return new Behavior();
    }

    @NonNull
    public TransitionState getCurrentTransitionState() {
        return this.f32081t0;
    }

    @DrawableRes
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public int getDefaultNavigationIconResource() {
        return C5139R.drawable.ic_arrow_back_black_24;
    }

    @NonNull
    public EditText getEditText() {
        return this.f32073n;
    }

    @Nullable
    public CharSequence getHint() {
        return this.f32073n.getHint();
    }

    @NonNull
    public TextView getSearchPrefix() {
        return this.f32072m;
    }

    @Nullable
    public CharSequence getSearchPrefixText() {
        return this.f32072m.getText();
    }

    @SuppressLint({"KotlinPropertyAccess"})
    public int getSoftInputMode() {
        return this.f32087y;
    }

    @NonNull
    @SuppressLint({"KotlinPropertyAccess"})
    public Editable getText() {
        return this.f32073n.getText();
    }

    @NonNull
    public Toolbar getToolbar() {
        return this.f32069k;
    }

    @Override // com.google.android.material.motion.MaterialBackHandler
    public void handleBackInvoked() {
        if (m24599l()) {
            return;
        }
        BackEventCompat m24672S = this.f32079s.m24672S();
        if (Build.VERSION.SDK_INT < 34 || this.f32086x == null || m24672S == null) {
            hide();
        } else {
            this.f32079s.m24692p();
        }
    }

    public void hide() {
        if (this.f32081t0.equals(TransitionState.HIDDEN) || this.f32081t0.equals(TransitionState.HIDING)) {
            return;
        }
        this.f32079s.m24671M();
    }

    public void inflateMenu(@MenuRes int i) {
        this.f32069k.inflateMenu(i);
    }

    public boolean isAnimatedNavigationIcon() {
        return this.f32088z;
    }

    public boolean isAutoShowKeyboard() {
        return this.f32061O;
    }

    public boolean isMenuItemsAnimated() {
        return this.f32060J;
    }

    public boolean isSetupWithSearchBar() {
        return this.f32086x != null;
    }

    public boolean isShowing() {
        return this.f32081t0.equals(TransitionState.SHOWN) || this.f32081t0.equals(TransitionState.SHOWING);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean isUseWindowInsetsController() {
        return this.f32070k0;
    }

    /* renamed from: k */
    public boolean m24598k() {
        return this.f32087y == 48;
    }

    /* renamed from: l */
    public final boolean m24599l() {
        return this.f32081t0.equals(TransitionState.HIDDEN) || this.f32081t0.equals(TransitionState.HIDING);
    }

    /* renamed from: m */
    public final boolean m24600m(@NonNull Toolbar toolbar) {
        return DrawableCompat.unwrap(toolbar.getNavigationIcon()) instanceof DrawerArrowDrawable;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        MaterialShapeUtils.setParentAbsoluteElevation(this);
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        updateSoftInputMode();
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setText(savedState.text);
        setVisible(savedState.visibility == 0);
    }

    @Override // android.view.View
    @NonNull
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        Editable text = getText();
        savedState.text = text == null ? null : text.toString();
        savedState.visibility = this.f32064f.getVisibility();
        return savedState;
    }

    public void removeAllHeaderViews() {
        this.f32067i.removeAllViews();
        this.f32067i.setVisibility(8);
    }

    public void removeHeaderView(@NonNull View view) {
        this.f32067i.removeView(view);
        if (this.f32067i.getChildCount() == 0) {
            this.f32067i.setVisibility(8);
        }
    }

    public void removeTransitionListener(@NonNull TransitionListener transitionListener) {
        this.f32085w.remove(transitionListener);
    }

    public void requestFocusAndShowKeyboard() {
        this.f32073n.postDelayed(new Runnable() { // from class: com.sunia.HTREnginev2.l8m
            @Override // java.lang.Runnable
            public final void run() {
                SearchView.this.m24576o();
            }
        }, 100L);
    }

    public void setAnimatedNavigationIcon(boolean z) {
        this.f32088z = z;
    }

    public void setAutoShowKeyboard(boolean z) {
        this.f32061O = z;
    }

    @Override // android.view.View
    @RequiresApi(21)
    public void setElevation(float f) {
        super.setElevation(f);
        setUpBackgroundViewElevationOverlay(f);
    }

    public void setHint(@Nullable CharSequence charSequence) {
        this.f32073n.setHint(charSequence);
    }

    public void setMenuItemsAnimated(boolean z) {
        this.f32060J = z;
    }

    public void setModalForAccessibility(boolean z) {
        ViewGroup viewGroup = (ViewGroup) getRootView();
        if (z) {
            this.f32083u0 = new HashMap(viewGroup.getChildCount());
        }
        m24594J(viewGroup, z);
        if (z) {
            return;
        }
        this.f32083u0 = null;
    }

    public void setOnMenuItemClickListener(@Nullable Toolbar.OnMenuItemClickListener onMenuItemClickListener) {
        this.f32069k.setOnMenuItemClickListener(onMenuItemClickListener);
    }

    public void setSearchPrefixText(@Nullable CharSequence charSequence) {
        this.f32072m.setText(charSequence);
        this.f32072m.setVisibility(TextUtils.isEmpty(charSequence) ? 8 : 0);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setStatusBarSpacerEnabled(boolean z) {
        this.f32077q0 = true;
        setStatusBarSpacerEnabledInternal(z);
    }

    @SuppressLint({"KotlinPropertyAccess"})
    public void setText(@Nullable CharSequence charSequence) {
        this.f32073n.setText(charSequence);
    }

    public void setToolbarTouchscreenBlocksFocus(boolean z) {
        this.f32069k.setTouchscreenBlocksFocus(z);
    }

    public void setTransitionState(@NonNull TransitionState transitionState) {
        m24602y(transitionState, true);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setUseWindowInsetsController(boolean z) {
        this.f32070k0 = z;
    }

    public void setVisible(boolean z) {
        boolean z2 = this.f32064f.getVisibility() == 0;
        this.f32064f.setVisibility(z ? 0 : 8);
        m24597M();
        m24602y(z ? TransitionState.SHOWN : TransitionState.HIDDEN, z2 != z);
    }

    public void setupWithSearchBar(@Nullable SearchBar searchBar) {
        this.f32086x = searchBar;
        this.f32079s.m24677X(searchBar);
        if (searchBar != null) {
            searchBar.setOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.m8m
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SearchView.this.m24584w(view);
                }
            });
            if (Build.VERSION.SDK_INT >= 34) {
                try {
                    searchBar.setHandwritingDelegatorCallback(new Runnable() { // from class: com.sunia.HTREnginev2.n8m
                        @Override // java.lang.Runnable
                        public final void run() {
                            SearchView.this.show();
                        }
                    });
                    this.f32073n.setIsHandwritingDelegate(true);
                } catch (LinkageError unused) {
                }
            }
        }
        m24596L();
        m24585A();
        m24595K(getCurrentTransitionState());
    }

    public void show() {
        if (this.f32081t0.equals(TransitionState.SHOWN) || this.f32081t0.equals(TransitionState.SHOWING)) {
            return;
        }
        this.f32079s.m24679Z();
    }

    @Override // com.google.android.material.motion.MaterialBackHandler
    public void startBackProgress(@NonNull BackEventCompat backEventCompat) {
        if (m24599l() || this.f32086x == null) {
            return;
        }
        this.f32079s.m24680a0(backEventCompat);
    }

    @Override // com.google.android.material.motion.MaterialBackHandler
    public void updateBackProgress(@NonNull BackEventCompat backEventCompat) {
        if (m24599l() || this.f32086x == null || Build.VERSION.SDK_INT < 34) {
            return;
        }
        this.f32079s.m24685f0(backEventCompat);
    }

    public void updateSoftInputMode() {
        Window activityWindow = getActivityWindow();
        if (activityWindow != null) {
            this.f32087y = activityWindow.getAttributes().softInputMode;
        }
    }

    /* renamed from: x */
    public void m24601x() {
        if (this.f32061O) {
            requestFocusAndShowKeyboard();
        }
    }

    /* renamed from: y */
    public final void m24602y(@NonNull TransitionState transitionState, boolean z) {
        if (this.f32081t0.equals(transitionState)) {
            return;
        }
        if (z) {
            if (transitionState == TransitionState.SHOWN) {
                setModalForAccessibility(true);
            } else if (transitionState == TransitionState.HIDDEN) {
                setModalForAccessibility(false);
            }
        }
        TransitionState transitionState2 = this.f32081t0;
        this.f32081t0 = transitionState;
        Iterator it2 = new LinkedHashSet(this.f32085w).iterator();
        while (it2.hasNext()) {
            ((TransitionListener) it2.next()).onStateChanged(this, transitionState2, transitionState);
        }
        m24595K(transitionState);
    }

    /* renamed from: z */
    public final void m24603z(boolean z, boolean z2) {
        if (z2) {
            this.f32069k.setNavigationIcon((Drawable) null);
            return;
        }
        this.f32069k.setNavigationOnClickListener(new View.OnClickListener() { // from class: com.sunia.HTREnginev2.i8m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SearchView.this.m24577p(view);
            }
        });
        if (z) {
            DrawerArrowDrawable drawerArrowDrawable = new DrawerArrowDrawable(getContext());
            drawerArrowDrawable.setColor(MaterialColors.getColor(this, C5139R.attr.colorOnSurface));
            this.f32069k.setNavigationIcon(drawerArrowDrawable);
        }
    }

    public SearchView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C5139R.attr.materialSearchViewStyle);
    }

    public void setHint(@StringRes int i) {
        this.f32073n.setHint(i);
    }

    public void setText(@StringRes int i) {
        this.f32073n.setText(i);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public SearchView(@androidx.annotation.NonNull android.content.Context r9, @androidx.annotation.Nullable android.util.AttributeSet r10, int r11) {
        /*
            Method dump skipped, instructions count: 309
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.search.SearchView.<init>(android.content.Context, android.util.AttributeSet, int):void");
    }
}
