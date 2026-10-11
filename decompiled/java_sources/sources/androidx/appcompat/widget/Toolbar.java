package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Layout;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.inspector.InspectionCompanion;
import android.view.inspector.PropertyMapper;
import android.view.inspector.PropertyReader;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.annotation.ColorInt;
import androidx.annotation.DoNotInline;
import androidx.annotation.DrawableRes;
import androidx.annotation.MainThread;
import androidx.annotation.MenuRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.C0118R;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.view.CollapsibleActionView;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.view.menu.SubMenuBuilder;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.GravityCompat;
import androidx.core.view.MenuHost;
import androidx.core.view.MenuHostHelper;
import androidx.core.view.MenuProvider;
import androidx.core.view.ViewCompat;
import androidx.customview.view.AbsSavedState;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import com.sunia.HTREnginev2.jtl;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* loaded from: classes3.dex */
public class Toolbar extends ViewGroup implements MenuHost {

    /* renamed from: M0 */
    public static final String f2015M0 = "Toolbar";

    /* renamed from: A0 */
    public OnMenuItemClickListener f2016A0;

    /* renamed from: B0 */
    public final ActionMenuView.OnMenuItemClickListener f2017B0;

    /* renamed from: C0 */
    public ToolbarWidgetWrapper f2018C0;

    /* renamed from: D0 */
    public ActionMenuPresenter f2019D0;

    /* renamed from: E0 */
    public C0301f f2020E0;

    /* renamed from: F0 */
    public MenuPresenter.Callback f2021F0;

    /* renamed from: G0 */
    public MenuBuilder.Callback f2022G0;

    /* renamed from: H0 */
    public boolean f2023H0;

    /* renamed from: I0 */
    public OnBackInvokedCallback f2024I0;

    /* renamed from: J */
    public int f2025J;

    /* renamed from: J0 */
    public OnBackInvokedDispatcher f2026J0;

    /* renamed from: K0 */
    public boolean f2027K0;

    /* renamed from: L0 */
    public final Runnable f2028L0;

    /* renamed from: O */
    public CharSequence f2029O;

    /* renamed from: Q */
    public CharSequence f2030Q;

    /* renamed from: e */
    public ActionMenuView f2031e;

    /* renamed from: f */
    public TextView f2032f;

    /* renamed from: g */
    public TextView f2033g;

    /* renamed from: h */
    public ImageButton f2034h;

    /* renamed from: i */
    public ImageView f2035i;

    /* renamed from: j */
    public Drawable f2036j;

    /* renamed from: k */
    public CharSequence f2037k;

    /* renamed from: k0 */
    public ColorStateList f2038k0;

    /* renamed from: l */
    public ImageButton f2039l;

    /* renamed from: m */
    public View f2040m;

    /* renamed from: n */
    public Context f2041n;

    /* renamed from: o */
    public int f2042o;

    /* renamed from: p */
    public int f2043p;

    /* renamed from: q */
    public int f2044q;

    /* renamed from: q0 */
    public ColorStateList f2045q0;

    /* renamed from: r */
    public int f2046r;

    /* renamed from: s */
    public int f2047s;

    /* renamed from: t */
    public int f2048t;

    /* renamed from: t0 */
    public boolean f2049t0;

    /* renamed from: u */
    public int f2050u;

    /* renamed from: u0 */
    public boolean f2051u0;

    /* renamed from: v */
    public int f2052v;

    /* renamed from: v0 */
    public final ArrayList<View> f2053v0;

    /* renamed from: w */
    public int f2054w;

    /* renamed from: w0 */
    public final ArrayList<View> f2055w0;

    /* renamed from: x */
    public jtl f2056x;

    /* renamed from: x0 */
    public final int[] f2057x0;

    /* renamed from: y */
    public int f2058y;

    /* renamed from: y0 */
    public final MenuHostHelper f2059y0;

    /* renamed from: z */
    public int f2060z;

    /* renamed from: z0 */
    public ArrayList<MenuItem> f2061z0;

    @RequiresApi(29)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes3.dex */
    public final class InspectionCompanion implements android.view.inspector.InspectionCompanion<Toolbar> {

        /* renamed from: a */
        public boolean f2062a = false;

        /* renamed from: b */
        public int f2063b;

        /* renamed from: c */
        public int f2064c;

        /* renamed from: d */
        public int f2065d;

        /* renamed from: e */
        public int f2066e;

        /* renamed from: f */
        public int f2067f;

        /* renamed from: g */
        public int f2068g;

        /* renamed from: h */
        public int f2069h;

        /* renamed from: i */
        public int f2070i;

        /* renamed from: j */
        public int f2071j;

        /* renamed from: k */
        public int f2072k;

        /* renamed from: l */
        public int f2073l;

        /* renamed from: m */
        public int f2074m;

        /* renamed from: n */
        public int f2075n;

        /* renamed from: o */
        public int f2076o;

        /* renamed from: p */
        public int f2077p;

        /* renamed from: q */
        public int f2078q;

        /* renamed from: r */
        public int f2079r;

        /* renamed from: s */
        public int f2080s;

        /* renamed from: t */
        public int f2081t;

        /* renamed from: u */
        public int f2082u;

        @Override // android.view.inspector.InspectionCompanion
        public void mapProperties(@NonNull PropertyMapper propertyMapper) {
            this.f2063b = propertyMapper.mapObject("collapseContentDescription", C0118R.attr.collapseContentDescription);
            this.f2064c = propertyMapper.mapObject("collapseIcon", C0118R.attr.collapseIcon);
            this.f2065d = propertyMapper.mapInt("contentInsetEnd", C0118R.attr.contentInsetEnd);
            this.f2066e = propertyMapper.mapInt("contentInsetEndWithActions", C0118R.attr.contentInsetEndWithActions);
            this.f2067f = propertyMapper.mapInt("contentInsetLeft", C0118R.attr.contentInsetLeft);
            this.f2068g = propertyMapper.mapInt("contentInsetRight", C0118R.attr.contentInsetRight);
            this.f2069h = propertyMapper.mapInt("contentInsetStart", C0118R.attr.contentInsetStart);
            this.f2070i = propertyMapper.mapInt("contentInsetStartWithNavigation", C0118R.attr.contentInsetStartWithNavigation);
            this.f2071j = propertyMapper.mapObject("logo", C0118R.attr.logo);
            this.f2072k = propertyMapper.mapObject("logoDescription", C0118R.attr.logoDescription);
            this.f2073l = propertyMapper.mapObject("menu", C0118R.attr.menu);
            this.f2074m = propertyMapper.mapObject("navigationContentDescription", C0118R.attr.navigationContentDescription);
            this.f2075n = propertyMapper.mapObject("navigationIcon", C0118R.attr.navigationIcon);
            this.f2076o = propertyMapper.mapResourceId("popupTheme", C0118R.attr.popupTheme);
            this.f2077p = propertyMapper.mapObject("subtitle", C0118R.attr.subtitle);
            this.f2078q = propertyMapper.mapObject("title", C0118R.attr.title);
            this.f2079r = propertyMapper.mapInt("titleMarginBottom", C0118R.attr.titleMarginBottom);
            this.f2080s = propertyMapper.mapInt("titleMarginEnd", C0118R.attr.titleMarginEnd);
            this.f2081t = propertyMapper.mapInt("titleMarginStart", C0118R.attr.titleMarginStart);
            this.f2082u = propertyMapper.mapInt("titleMarginTop", C0118R.attr.titleMarginTop);
            this.f2062a = true;
        }

        @Override // android.view.inspector.InspectionCompanion
        public void readProperties(@NonNull Toolbar toolbar, @NonNull PropertyReader propertyReader) {
            if (this.f2062a) {
                propertyReader.readObject(this.f2063b, toolbar.getCollapseContentDescription());
                propertyReader.readObject(this.f2064c, toolbar.getCollapseIcon());
                propertyReader.readInt(this.f2065d, toolbar.getContentInsetEnd());
                propertyReader.readInt(this.f2066e, toolbar.getContentInsetEndWithActions());
                propertyReader.readInt(this.f2067f, toolbar.getContentInsetLeft());
                propertyReader.readInt(this.f2068g, toolbar.getContentInsetRight());
                propertyReader.readInt(this.f2069h, toolbar.getContentInsetStart());
                propertyReader.readInt(this.f2070i, toolbar.getContentInsetStartWithNavigation());
                propertyReader.readObject(this.f2071j, toolbar.getLogo());
                propertyReader.readObject(this.f2072k, toolbar.getLogoDescription());
                propertyReader.readObject(this.f2073l, toolbar.getMenu());
                propertyReader.readObject(this.f2074m, toolbar.getNavigationContentDescription());
                propertyReader.readObject(this.f2075n, toolbar.getNavigationIcon());
                propertyReader.readResourceId(this.f2076o, toolbar.getPopupTheme());
                propertyReader.readObject(this.f2077p, toolbar.getSubtitle());
                propertyReader.readObject(this.f2078q, toolbar.getTitle());
                propertyReader.readInt(this.f2079r, toolbar.getTitleMarginBottom());
                propertyReader.readInt(this.f2080s, toolbar.getTitleMarginEnd());
                propertyReader.readInt(this.f2081t, toolbar.getTitleMarginStart());
                propertyReader.readInt(this.f2082u, toolbar.getTitleMarginTop());
                return;
            }
            throw new InspectionCompanion.UninitializedPropertyMapException();
        }
    }

    /* loaded from: classes3.dex */
    public interface OnMenuItemClickListener {
        boolean onMenuItemClick(MenuItem menuItem);
    }

    /* loaded from: classes3.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C0295a();
        int expandedMenuItemId;
        boolean isOverflowOpen;

        /* renamed from: androidx.appcompat.widget.Toolbar$SavedState$a */
        /* loaded from: classes3.dex */
        public class C0295a implements Parcelable.ClassLoaderCreator<SavedState> {
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

        public SavedState(Parcel parcel) {
            this(parcel, null);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.expandedMenuItemId);
            parcel.writeInt(this.isOverflowOpen ? 1 : 0);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.expandedMenuItemId = parcel.readInt();
            this.isOverflowOpen = parcel.readInt() != 0;
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    /* renamed from: androidx.appcompat.widget.Toolbar$a */
    /* loaded from: classes3.dex */
    public class C0296a implements ActionMenuView.OnMenuItemClickListener {
        public C0296a() {
        }

        @Override // androidx.appcompat.widget.ActionMenuView.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            if (Toolbar.this.f2059y0.onMenuItemSelected(menuItem)) {
                return true;
            }
            OnMenuItemClickListener onMenuItemClickListener = Toolbar.this.f2016A0;
            if (onMenuItemClickListener != null) {
                return onMenuItemClickListener.onMenuItemClick(menuItem);
            }
            return false;
        }
    }

    /* renamed from: androidx.appcompat.widget.Toolbar$b */
    /* loaded from: classes3.dex */
    public class RunnableC0297b implements Runnable {
        public RunnableC0297b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Toolbar.this.showOverflowMenu();
        }
    }

    /* renamed from: androidx.appcompat.widget.Toolbar$c */
    /* loaded from: classes3.dex */
    public class C0298c implements MenuBuilder.Callback {
        public C0298c() {
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public boolean onMenuItemSelected(@NonNull MenuBuilder menuBuilder, @NonNull MenuItem menuItem) {
            MenuBuilder.Callback callback = Toolbar.this.f2022G0;
            return callback != null && callback.onMenuItemSelected(menuBuilder, menuItem);
        }

        @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
        public void onMenuModeChange(@NonNull MenuBuilder menuBuilder) {
            if (!Toolbar.this.f2031e.isOverflowMenuShowing()) {
                Toolbar.this.f2059y0.onPrepareMenu(menuBuilder);
            }
            MenuBuilder.Callback callback = Toolbar.this.f2022G0;
            if (callback != null) {
                callback.onMenuModeChange(menuBuilder);
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.Toolbar$d */
    /* loaded from: classes3.dex */
    public class ViewOnClickListenerC0299d implements View.OnClickListener {
        public ViewOnClickListenerC0299d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Toolbar.this.collapseActionView();
        }
    }

    @RequiresApi(33)
    /* renamed from: androidx.appcompat.widget.Toolbar$e */
    /* loaded from: classes3.dex */
    public static class C0300e {
        @Nullable
        @DoNotInline
        /* renamed from: a */
        public static OnBackInvokedDispatcher m967a(@NonNull View view) {
            return view.findOnBackInvokedDispatcher();
        }

        @NonNull
        @DoNotInline
        /* renamed from: b */
        public static OnBackInvokedCallback m968b(@NonNull final Runnable runnable) {
            Objects.requireNonNull(runnable);
            return new OnBackInvokedCallback() { // from class: com.sunia.HTREnginev2.rjn
                public final void onBackInvoked() {
                    runnable.run();
                }
            };
        }

        @DoNotInline
        /* renamed from: c */
        public static void m969c(@NonNull Object obj, @NonNull Object obj2) {
            ((OnBackInvokedDispatcher) obj).registerOnBackInvokedCallback(1000000, (OnBackInvokedCallback) obj2);
        }

        @DoNotInline
        /* renamed from: d */
        public static void m970d(@NonNull Object obj, @NonNull Object obj2) {
            ((OnBackInvokedDispatcher) obj).unregisterOnBackInvokedCallback((OnBackInvokedCallback) obj2);
        }
    }

    /* renamed from: androidx.appcompat.widget.Toolbar$f */
    /* loaded from: classes3.dex */
    public class C0301f implements MenuPresenter {

        /* renamed from: e */
        public MenuBuilder f2091e;

        /* renamed from: f */
        public MenuItemImpl f2092f;

        public C0301f() {
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        public boolean collapseItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
            KeyEvent.Callback callback = Toolbar.this.f2040m;
            if (callback instanceof CollapsibleActionView) {
                ((CollapsibleActionView) callback).onActionViewCollapsed();
            }
            Toolbar toolbar = Toolbar.this;
            toolbar.removeView(toolbar.f2040m);
            Toolbar toolbar2 = Toolbar.this;
            toolbar2.removeView(toolbar2.f2039l);
            Toolbar toolbar3 = Toolbar.this;
            toolbar3.f2040m = null;
            toolbar3.m938a();
            this.f2092f = null;
            Toolbar.this.requestLayout();
            menuItemImpl.setActionViewExpanded(false);
            Toolbar.this.m962z();
            return true;
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        public boolean expandItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
            Toolbar.this.m941d();
            ViewParent parent = Toolbar.this.f2039l.getParent();
            Toolbar toolbar = Toolbar.this;
            if (parent != toolbar) {
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(toolbar.f2039l);
                }
                Toolbar toolbar2 = Toolbar.this;
                toolbar2.addView(toolbar2.f2039l);
            }
            Toolbar.this.f2040m = menuItemImpl.getActionView();
            this.f2092f = menuItemImpl;
            ViewParent parent2 = Toolbar.this.f2040m.getParent();
            Toolbar toolbar3 = Toolbar.this;
            if (parent2 != toolbar3) {
                if (parent2 instanceof ViewGroup) {
                    ((ViewGroup) parent2).removeView(toolbar3.f2040m);
                }
                LayoutParams generateDefaultLayoutParams = Toolbar.this.generateDefaultLayoutParams();
                Toolbar toolbar4 = Toolbar.this;
                generateDefaultLayoutParams.gravity = (toolbar4.f2046r & 112) | GravityCompat.START;
                generateDefaultLayoutParams.f2086a = 2;
                toolbar4.f2040m.setLayoutParams(generateDefaultLayoutParams);
                Toolbar toolbar5 = Toolbar.this;
                toolbar5.addView(toolbar5.f2040m);
            }
            Toolbar.this.m959w();
            Toolbar.this.requestLayout();
            menuItemImpl.setActionViewExpanded(true);
            KeyEvent.Callback callback = Toolbar.this.f2040m;
            if (callback instanceof CollapsibleActionView) {
                ((CollapsibleActionView) callback).onActionViewExpanded();
            }
            Toolbar.this.m962z();
            return true;
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        public boolean flagActionItems() {
            return false;
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        public int getId() {
            return 0;
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        public MenuView getMenuView(ViewGroup viewGroup) {
            return null;
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        public void initForMenu(Context context, MenuBuilder menuBuilder) {
            MenuItemImpl menuItemImpl;
            MenuBuilder menuBuilder2 = this.f2091e;
            if (menuBuilder2 != null && (menuItemImpl = this.f2092f) != null) {
                menuBuilder2.collapseItemActionView(menuItemImpl);
            }
            this.f2091e = menuBuilder;
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        public void onRestoreInstanceState(Parcelable parcelable) {
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        public Parcelable onSaveInstanceState() {
            return null;
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        public boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
            return false;
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        public void setCallback(MenuPresenter.Callback callback) {
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter
        public void updateMenuView(boolean z) {
            if (this.f2092f != null) {
                MenuBuilder menuBuilder = this.f2091e;
                boolean z2 = false;
                if (menuBuilder != null) {
                    int size = menuBuilder.size();
                    int i = 0;
                    while (true) {
                        if (i >= size) {
                            break;
                        }
                        if (this.f2091e.getItem(i) == this.f2092f) {
                            z2 = true;
                            break;
                        }
                        i++;
                    }
                }
                if (z2) {
                    return;
                }
                collapseItemActionView(this.f2091e, this.f2092f);
            }
        }
    }

    public Toolbar(@NonNull Context context) {
        this(context, null);
    }

    private ArrayList<MenuItem> getCurrentMenuItems() {
        ArrayList<MenuItem> arrayList = new ArrayList<>();
        Menu menu = getMenu();
        for (int i = 0; i < menu.size(); i++) {
            arrayList.add(menu.getItem(i));
        }
        return arrayList;
    }

    private MenuInflater getMenuInflater() {
        return new SupportMenuInflater(getContext());
    }

    /* renamed from: v */
    private void m937v() {
        removeCallbacks(this.f2028L0);
        post(this.f2028L0);
    }

    /* renamed from: a */
    public void m938a() {
        for (int size = this.f2055w0.size() - 1; size >= 0; size--) {
            addView(this.f2055w0.get(size));
        }
        this.f2055w0.clear();
    }

    @Override // androidx.core.view.MenuHost
    @MainThread
    public void addMenuProvider(@NonNull MenuProvider menuProvider) {
        this.f2059y0.addMenuProvider(menuProvider);
    }

    /* renamed from: b */
    public final void m939b(List<View> list, int i) {
        boolean z = getLayoutDirection() == 1;
        int childCount = getChildCount();
        int absoluteGravity = GravityCompat.getAbsoluteGravity(i, getLayoutDirection());
        list.clear();
        if (!z) {
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.f2086a == 0 && m961y(childAt) && m947j(layoutParams.gravity) == absoluteGravity) {
                    list.add(childAt);
                }
            }
            return;
        }
        for (int i3 = childCount - 1; i3 >= 0; i3--) {
            View childAt2 = getChildAt(i3);
            LayoutParams layoutParams2 = (LayoutParams) childAt2.getLayoutParams();
            if (layoutParams2.f2086a == 0 && m961y(childAt2) && m947j(layoutParams2.gravity) == absoluteGravity) {
                list.add(childAt2);
            }
        }
    }

    /* renamed from: c */
    public final void m940c(View view, boolean z) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        LayoutParams generateDefaultLayoutParams = layoutParams == null ? generateDefaultLayoutParams() : !checkLayoutParams(layoutParams) ? generateLayoutParams(layoutParams) : (LayoutParams) layoutParams;
        generateDefaultLayoutParams.f2086a = 1;
        if (!z || this.f2040m == null) {
            addView(view, generateDefaultLayoutParams);
        } else {
            view.setLayoutParams(generateDefaultLayoutParams);
            this.f2055w0.add(view);
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public boolean canShowOverflowMenu() {
        ActionMenuView actionMenuView;
        return getVisibility() == 0 && (actionMenuView = this.f2031e) != null && actionMenuView.isOverflowReserved();
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof LayoutParams);
    }

    public void collapseActionView() {
        C0301f c0301f = this.f2020E0;
        MenuItemImpl menuItemImpl = c0301f == null ? null : c0301f.f2092f;
        if (menuItemImpl != null) {
            menuItemImpl.collapseActionView();
        }
    }

    /* renamed from: d */
    public void m941d() {
        if (this.f2039l == null) {
            AppCompatImageButton appCompatImageButton = new AppCompatImageButton(getContext(), null, C0118R.attr.toolbarNavigationButtonStyle);
            this.f2039l = appCompatImageButton;
            appCompatImageButton.setImageDrawable(this.f2036j);
            this.f2039l.setContentDescription(this.f2037k);
            LayoutParams generateDefaultLayoutParams = generateDefaultLayoutParams();
            generateDefaultLayoutParams.gravity = (this.f2046r & 112) | GravityCompat.START;
            generateDefaultLayoutParams.f2086a = 2;
            this.f2039l.setLayoutParams(generateDefaultLayoutParams);
            this.f2039l.setOnClickListener(new ViewOnClickListenerC0299d());
        }
    }

    public void dismissPopupMenus() {
        ActionMenuView actionMenuView = this.f2031e;
        if (actionMenuView != null) {
            actionMenuView.dismissPopupMenus();
        }
    }

    /* renamed from: e */
    public final void m942e() {
        if (this.f2056x == null) {
            this.f2056x = new jtl();
        }
    }

    /* renamed from: f */
    public final void m943f() {
        if (this.f2035i == null) {
            this.f2035i = new AppCompatImageView(getContext());
        }
    }

    /* renamed from: g */
    public final void m944g() {
        m945h();
        if (this.f2031e.peekMenu() == null) {
            MenuBuilder menuBuilder = (MenuBuilder) this.f2031e.getMenu();
            if (this.f2020E0 == null) {
                this.f2020E0 = new C0301f();
            }
            this.f2031e.setExpandedActionViewsExclusive(true);
            menuBuilder.addMenuPresenter(this.f2020E0, this.f2041n);
            m962z();
        }
    }

    @Nullable
    public CharSequence getCollapseContentDescription() {
        ImageButton imageButton = this.f2039l;
        if (imageButton != null) {
            return imageButton.getContentDescription();
        }
        return null;
    }

    @Nullable
    public Drawable getCollapseIcon() {
        ImageButton imageButton = this.f2039l;
        if (imageButton != null) {
            return imageButton.getDrawable();
        }
        return null;
    }

    public int getContentInsetEnd() {
        jtl jtlVar = this.f2056x;
        if (jtlVar != null) {
            return jtlVar.m55044a();
        }
        return 0;
    }

    public int getContentInsetEndWithActions() {
        int i = this.f2060z;
        return i != Integer.MIN_VALUE ? i : getContentInsetEnd();
    }

    public int getContentInsetLeft() {
        jtl jtlVar = this.f2056x;
        if (jtlVar != null) {
            return jtlVar.m55045b();
        }
        return 0;
    }

    public int getContentInsetRight() {
        jtl jtlVar = this.f2056x;
        if (jtlVar != null) {
            return jtlVar.m55046c();
        }
        return 0;
    }

    public int getContentInsetStart() {
        jtl jtlVar = this.f2056x;
        if (jtlVar != null) {
            return jtlVar.m55047d();
        }
        return 0;
    }

    public int getContentInsetStartWithNavigation() {
        int i = this.f2058y;
        return i != Integer.MIN_VALUE ? i : getContentInsetStart();
    }

    public int getCurrentContentInsetEnd() {
        MenuBuilder peekMenu;
        ActionMenuView actionMenuView = this.f2031e;
        return actionMenuView != null && (peekMenu = actionMenuView.peekMenu()) != null && peekMenu.hasVisibleItems() ? Math.max(getContentInsetEnd(), Math.max(this.f2060z, 0)) : getContentInsetEnd();
    }

    public int getCurrentContentInsetLeft() {
        return getLayoutDirection() == 1 ? getCurrentContentInsetEnd() : getCurrentContentInsetStart();
    }

    public int getCurrentContentInsetRight() {
        return getLayoutDirection() == 1 ? getCurrentContentInsetStart() : getCurrentContentInsetEnd();
    }

    public int getCurrentContentInsetStart() {
        return getNavigationIcon() != null ? Math.max(getContentInsetStart(), Math.max(this.f2058y, 0)) : getContentInsetStart();
    }

    public Drawable getLogo() {
        ImageView imageView = this.f2035i;
        if (imageView != null) {
            return imageView.getDrawable();
        }
        return null;
    }

    public CharSequence getLogoDescription() {
        ImageView imageView = this.f2035i;
        if (imageView != null) {
            return imageView.getContentDescription();
        }
        return null;
    }

    public Menu getMenu() {
        m944g();
        return this.f2031e.getMenu();
    }

    @Nullable
    @VisibleForTesting
    public View getNavButtonView() {
        return this.f2034h;
    }

    @Nullable
    public CharSequence getNavigationContentDescription() {
        ImageButton imageButton = this.f2034h;
        if (imageButton != null) {
            return imageButton.getContentDescription();
        }
        return null;
    }

    @Nullable
    public Drawable getNavigationIcon() {
        ImageButton imageButton = this.f2034h;
        if (imageButton != null) {
            return imageButton.getDrawable();
        }
        return null;
    }

    public ActionMenuPresenter getOuterActionMenuPresenter() {
        return this.f2019D0;
    }

    @Nullable
    public Drawable getOverflowIcon() {
        m944g();
        return this.f2031e.getOverflowIcon();
    }

    Context getPopupContext() {
        return this.f2041n;
    }

    @StyleRes
    public int getPopupTheme() {
        return this.f2042o;
    }

    public CharSequence getSubtitle() {
        return this.f2030Q;
    }

    @Nullable
    @VisibleForTesting
    public final TextView getSubtitleTextView() {
        return this.f2033g;
    }

    public CharSequence getTitle() {
        return this.f2029O;
    }

    public int getTitleMarginBottom() {
        return this.f2054w;
    }

    public int getTitleMarginEnd() {
        return this.f2050u;
    }

    public int getTitleMarginStart() {
        return this.f2048t;
    }

    public int getTitleMarginTop() {
        return this.f2052v;
    }

    @Nullable
    @VisibleForTesting
    public final TextView getTitleTextView() {
        return this.f2032f;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public DecorToolbar getWrapper() {
        if (this.f2018C0 == null) {
            this.f2018C0 = new ToolbarWidgetWrapper(this, true);
        }
        return this.f2018C0;
    }

    /* renamed from: h */
    public final void m945h() {
        if (this.f2031e == null) {
            ActionMenuView actionMenuView = new ActionMenuView(getContext());
            this.f2031e = actionMenuView;
            actionMenuView.setPopupTheme(this.f2042o);
            this.f2031e.setOnMenuItemClickListener(this.f2017B0);
            this.f2031e.setMenuCallbacks(this.f2021F0, new C0298c());
            LayoutParams generateDefaultLayoutParams = generateDefaultLayoutParams();
            generateDefaultLayoutParams.gravity = (this.f2046r & 112) | 8388613;
            this.f2031e.setLayoutParams(generateDefaultLayoutParams);
            m940c(this.f2031e, false);
        }
    }

    public boolean hasExpandedActionView() {
        C0301f c0301f = this.f2020E0;
        return (c0301f == null || c0301f.f2092f == null) ? false : true;
    }

    public boolean hideOverflowMenu() {
        ActionMenuView actionMenuView = this.f2031e;
        return actionMenuView != null && actionMenuView.hideOverflowMenu();
    }

    /* renamed from: i */
    public final void m946i() {
        if (this.f2034h == null) {
            this.f2034h = new AppCompatImageButton(getContext(), null, C0118R.attr.toolbarNavigationButtonStyle);
            LayoutParams generateDefaultLayoutParams = generateDefaultLayoutParams();
            generateDefaultLayoutParams.gravity = (this.f2046r & 112) | GravityCompat.START;
            this.f2034h.setLayoutParams(generateDefaultLayoutParams);
        }
    }

    public void inflateMenu(@MenuRes int i) {
        getMenuInflater().inflate(i, getMenu());
    }

    @Override // androidx.core.view.MenuHost
    @MainThread
    public void invalidateMenu() {
        Iterator<MenuItem> it2 = this.f2061z0.iterator();
        while (it2.hasNext()) {
            getMenu().removeItem(it2.next().getItemId());
        }
        m958u();
    }

    public boolean isBackInvokedCallbackEnabled() {
        return this.f2027K0;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public boolean isOverflowMenuShowPending() {
        ActionMenuView actionMenuView = this.f2031e;
        return actionMenuView != null && actionMenuView.isOverflowMenuShowPending();
    }

    public boolean isOverflowMenuShowing() {
        ActionMenuView actionMenuView = this.f2031e;
        return actionMenuView != null && actionMenuView.isOverflowMenuShowing();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public boolean isTitleTruncated() {
        Layout layout;
        TextView textView = this.f2032f;
        if (textView == null || (layout = textView.getLayout()) == null) {
            return false;
        }
        int lineCount = layout.getLineCount();
        for (int i = 0; i < lineCount; i++) {
            if (layout.getEllipsisCount(i) > 0) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: j */
    public final int m947j(int i) {
        int layoutDirection = getLayoutDirection();
        int absoluteGravity = GravityCompat.getAbsoluteGravity(i, layoutDirection) & 7;
        return (absoluteGravity == 1 || absoluteGravity == 3 || absoluteGravity == 5) ? absoluteGravity : layoutDirection == 1 ? 5 : 3;
    }

    /* renamed from: k */
    public final int m948k(View view, int i) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int measuredHeight = view.getMeasuredHeight();
        int i2 = i > 0 ? (measuredHeight - i) / 2 : 0;
        int m949l = m949l(layoutParams.gravity);
        if (m949l == 48) {
            return getPaddingTop() - i2;
        }
        if (m949l == 80) {
            return (((getHeight() - getPaddingBottom()) - measuredHeight) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin) - i2;
        }
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int height = getHeight();
        int i3 = (((height - paddingTop) - paddingBottom) - measuredHeight) / 2;
        int i4 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
        if (i3 < i4) {
            i3 = i4;
        } else {
            int i5 = (((height - paddingBottom) - measuredHeight) - i3) - paddingTop;
            int i6 = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
            if (i5 < i6) {
                i3 = Math.max(0, i3 - (i6 - i5));
            }
        }
        return paddingTop + i3;
    }

    /* renamed from: l */
    public final int m949l(int i) {
        int i2 = i & 112;
        return (i2 == 16 || i2 == 48 || i2 == 80) ? i2 : this.f2025J & 112;
    }

    /* renamed from: m */
    public final int m950m(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.getMarginStart() + marginLayoutParams.getMarginEnd();
    }

    /* renamed from: n */
    public final int m951n(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    /* renamed from: o */
    public final int m952o(List<View> list, int[] iArr) {
        int i = iArr[0];
        int i2 = iArr[1];
        int size = list.size();
        int i3 = 0;
        int i4 = 0;
        while (i3 < size) {
            View view = list.get(i3);
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            int i5 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin - i;
            int i6 = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin - i2;
            int max = Math.max(0, i5);
            int max2 = Math.max(0, i6);
            int max3 = Math.max(0, -i5);
            int max4 = Math.max(0, -i6);
            i4 += max + view.getMeasuredWidth() + max2;
            i3++;
            i2 = max4;
            i = max3;
        }
        return i4;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        m962z();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.f2028L0);
        m962z();
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.f2051u0 = false;
        }
        if (!this.f2051u0) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !onHoverEvent) {
                this.f2051u0 = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.f2051u0 = false;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:107:0x01a6  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x029f A[LOOP:0: B:41:0x029d->B:42:0x029f, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x02c1 A[LOOP:1: B:45:0x02bf->B:46:0x02c1, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x02eb  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x02fa A[LOOP:2: B:54:0x02f8->B:55:0x02fa, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0227  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onLayout(boolean r20, int r21, int r22, int r23, int r24) {
        /*
            Method dump skipped, instructions count: 783
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.Toolbar.onLayout(boolean, int, int, int, int):void");
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int[] iArr = this.f2057x0;
        boolean isLayoutRtl = ViewUtils.isLayoutRtl(this);
        int i10 = !isLayoutRtl ? 1 : 0;
        if (m961y(this.f2034h)) {
            m957t(this.f2034h, i, 0, i2, 0, this.f2047s);
            i3 = this.f2034h.getMeasuredWidth() + m950m(this.f2034h);
            i4 = Math.max(0, this.f2034h.getMeasuredHeight() + m951n(this.f2034h));
            i5 = View.combineMeasuredStates(0, this.f2034h.getMeasuredState());
        } else {
            i3 = 0;
            i4 = 0;
            i5 = 0;
        }
        if (m961y(this.f2039l)) {
            m957t(this.f2039l, i, 0, i2, 0, this.f2047s);
            i3 = this.f2039l.getMeasuredWidth() + m950m(this.f2039l);
            i4 = Math.max(i4, this.f2039l.getMeasuredHeight() + m951n(this.f2039l));
            i5 = View.combineMeasuredStates(i5, this.f2039l.getMeasuredState());
        }
        int currentContentInsetStart = getCurrentContentInsetStart();
        int max = 0 + Math.max(currentContentInsetStart, i3);
        iArr[isLayoutRtl ? 1 : 0] = Math.max(0, currentContentInsetStart - i3);
        if (m961y(this.f2031e)) {
            m957t(this.f2031e, i, max, i2, 0, this.f2047s);
            i6 = this.f2031e.getMeasuredWidth() + m950m(this.f2031e);
            i4 = Math.max(i4, this.f2031e.getMeasuredHeight() + m951n(this.f2031e));
            i5 = View.combineMeasuredStates(i5, this.f2031e.getMeasuredState());
        } else {
            i6 = 0;
        }
        int currentContentInsetEnd = getCurrentContentInsetEnd();
        int max2 = max + Math.max(currentContentInsetEnd, i6);
        iArr[i10] = Math.max(0, currentContentInsetEnd - i6);
        if (m961y(this.f2040m)) {
            max2 += m956s(this.f2040m, i, max2, i2, 0, iArr);
            i4 = Math.max(i4, this.f2040m.getMeasuredHeight() + m951n(this.f2040m));
            i5 = View.combineMeasuredStates(i5, this.f2040m.getMeasuredState());
        }
        if (m961y(this.f2035i)) {
            max2 += m956s(this.f2035i, i, max2, i2, 0, iArr);
            i4 = Math.max(i4, this.f2035i.getMeasuredHeight() + m951n(this.f2035i));
            i5 = View.combineMeasuredStates(i5, this.f2035i.getMeasuredState());
        }
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (((LayoutParams) childAt.getLayoutParams()).f2086a == 0 && m961y(childAt)) {
                max2 += m956s(childAt, i, max2, i2, 0, iArr);
                i4 = Math.max(i4, childAt.getMeasuredHeight() + m951n(childAt));
                i5 = View.combineMeasuredStates(i5, childAt.getMeasuredState());
            }
        }
        int i12 = this.f2052v + this.f2054w;
        int i13 = this.f2048t + this.f2050u;
        if (m961y(this.f2032f)) {
            m956s(this.f2032f, i, max2 + i13, i2, i12, iArr);
            int measuredWidth = this.f2032f.getMeasuredWidth() + m950m(this.f2032f);
            i7 = this.f2032f.getMeasuredHeight() + m951n(this.f2032f);
            i8 = View.combineMeasuredStates(i5, this.f2032f.getMeasuredState());
            i9 = measuredWidth;
        } else {
            i7 = 0;
            i8 = i5;
            i9 = 0;
        }
        if (m961y(this.f2033g)) {
            i9 = Math.max(i9, m956s(this.f2033g, i, max2 + i13, i2, i7 + i12, iArr));
            i7 += this.f2033g.getMeasuredHeight() + m951n(this.f2033g);
            i8 = View.combineMeasuredStates(i8, this.f2033g.getMeasuredState());
        }
        setMeasuredDimension(View.resolveSizeAndState(Math.max(max2 + i9 + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i, (-16777216) & i8), m960x() ? 0 : View.resolveSizeAndState(Math.max(Math.max(i4, i7) + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), i2, i8 << 16));
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        MenuItem findItem;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        ActionMenuView actionMenuView = this.f2031e;
        MenuBuilder peekMenu = actionMenuView != null ? actionMenuView.peekMenu() : null;
        int i = savedState.expandedMenuItemId;
        if (i != 0 && this.f2020E0 != null && peekMenu != null && (findItem = peekMenu.findItem(i)) != null) {
            findItem.expandActionView();
        }
        if (savedState.isOverflowOpen) {
            m937v();
        }
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i) {
        super.onRtlPropertiesChanged(i);
        m942e();
        this.f2056x.m55049f(i == 1);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        MenuItemImpl menuItemImpl;
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        C0301f c0301f = this.f2020E0;
        if (c0301f != null && (menuItemImpl = c0301f.f2092f) != null) {
            savedState.expandedMenuItemId = menuItemImpl.getItemId();
        }
        savedState.isOverflowOpen = isOverflowMenuShowing();
        return savedState;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f2049t0 = false;
        }
        if (!this.f2049t0) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !onTouchEvent) {
                this.f2049t0 = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.f2049t0 = false;
        }
        return true;
    }

    /* renamed from: p */
    public final boolean m953p(View view) {
        return view.getParent() == this || this.f2055w0.contains(view);
    }

    /* renamed from: q */
    public final int m954q(View view, int i, int[] iArr, int i2) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int i3 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin - iArr[0];
        int max = i + Math.max(0, i3);
        iArr[0] = Math.max(0, -i3);
        int m948k = m948k(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max, m948k, max + measuredWidth, view.getMeasuredHeight() + m948k);
        return max + measuredWidth + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
    }

    /* renamed from: r */
    public final int m955r(View view, int i, int[] iArr, int i2) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int i3 = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin - iArr[1];
        int max = i - Math.max(0, i3);
        iArr[1] = Math.max(0, -i3);
        int m948k = m948k(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max - measuredWidth, m948k, max, view.getMeasuredHeight() + m948k);
        return max - (measuredWidth + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin);
    }

    @Override // androidx.core.view.MenuHost
    @MainThread
    public void removeMenuProvider(@NonNull MenuProvider menuProvider) {
        this.f2059y0.removeMenuProvider(menuProvider);
    }

    /* renamed from: s */
    public final int m956s(View view, int i, int i2, int i3, int i4, int[] iArr) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i5 = marginLayoutParams.leftMargin - iArr[0];
        int i6 = marginLayoutParams.rightMargin - iArr[1];
        int max = Math.max(0, i5) + Math.max(0, i6);
        iArr[0] = Math.max(0, -i5);
        iArr[1] = Math.max(0, -i6);
        view.measure(ViewGroup.getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + max + i2, marginLayoutParams.width), ViewGroup.getChildMeasureSpec(i3, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i4, marginLayoutParams.height));
        return view.getMeasuredWidth() + max;
    }

    public void setBackInvokedCallbackEnabled(boolean z) {
        if (this.f2027K0 != z) {
            this.f2027K0 = z;
            m962z();
        }
    }

    public void setCollapseContentDescription(@StringRes int i) {
        setCollapseContentDescription(i != 0 ? getContext().getText(i) : null);
    }

    public void setCollapseIcon(@DrawableRes int i) {
        setCollapseIcon(AppCompatResources.getDrawable(getContext(), i));
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setCollapsible(boolean z) {
        this.f2023H0 = z;
        requestLayout();
    }

    public void setContentInsetEndWithActions(int i) {
        if (i < 0) {
            i = Integer.MIN_VALUE;
        }
        if (i != this.f2060z) {
            this.f2060z = i;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setContentInsetStartWithNavigation(int i) {
        if (i < 0) {
            i = Integer.MIN_VALUE;
        }
        if (i != this.f2058y) {
            this.f2058y = i;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setContentInsetsAbsolute(int i, int i2) {
        m942e();
        this.f2056x.m55048e(i, i2);
    }

    public void setContentInsetsRelative(int i, int i2) {
        m942e();
        this.f2056x.m55050g(i, i2);
    }

    public void setLogo(@DrawableRes int i) {
        setLogo(AppCompatResources.getDrawable(getContext(), i));
    }

    public void setLogoDescription(@StringRes int i) {
        setLogoDescription(getContext().getText(i));
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void setMenu(MenuBuilder menuBuilder, ActionMenuPresenter actionMenuPresenter) {
        if (menuBuilder == null && this.f2031e == null) {
            return;
        }
        m945h();
        MenuBuilder peekMenu = this.f2031e.peekMenu();
        if (peekMenu == menuBuilder) {
            return;
        }
        if (peekMenu != null) {
            peekMenu.removeMenuPresenter(this.f2019D0);
            peekMenu.removeMenuPresenter(this.f2020E0);
        }
        if (this.f2020E0 == null) {
            this.f2020E0 = new C0301f();
        }
        actionMenuPresenter.m669q(true);
        if (menuBuilder != null) {
            menuBuilder.addMenuPresenter(actionMenuPresenter, this.f2041n);
            menuBuilder.addMenuPresenter(this.f2020E0, this.f2041n);
        } else {
            actionMenuPresenter.initForMenu(this.f2041n, null);
            this.f2020E0.initForMenu(this.f2041n, null);
            actionMenuPresenter.updateMenuView(true);
            this.f2020E0.updateMenuView(true);
        }
        this.f2031e.setPopupTheme(this.f2042o);
        this.f2031e.setPresenter(actionMenuPresenter);
        this.f2019D0 = actionMenuPresenter;
        m962z();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void setMenuCallbacks(MenuPresenter.Callback callback, MenuBuilder.Callback callback2) {
        this.f2021F0 = callback;
        this.f2022G0 = callback2;
        ActionMenuView actionMenuView = this.f2031e;
        if (actionMenuView != null) {
            actionMenuView.setMenuCallbacks(callback, callback2);
        }
    }

    public void setNavigationContentDescription(@StringRes int i) {
        setNavigationContentDescription(i != 0 ? getContext().getText(i) : null);
    }

    public void setNavigationIcon(@DrawableRes int i) {
        setNavigationIcon(AppCompatResources.getDrawable(getContext(), i));
    }

    public void setNavigationOnClickListener(View.OnClickListener onClickListener) {
        m946i();
        this.f2034h.setOnClickListener(onClickListener);
    }

    public void setOnMenuItemClickListener(OnMenuItemClickListener onMenuItemClickListener) {
        this.f2016A0 = onMenuItemClickListener;
    }

    public void setOverflowIcon(@Nullable Drawable drawable) {
        m944g();
        this.f2031e.setOverflowIcon(drawable);
    }

    public void setPopupTheme(@StyleRes int i) {
        if (this.f2042o != i) {
            this.f2042o = i;
            if (i == 0) {
                this.f2041n = getContext();
            } else {
                this.f2041n = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    public void setSubtitle(@StringRes int i) {
        setSubtitle(getContext().getText(i));
    }

    public void setSubtitleTextAppearance(Context context, @StyleRes int i) {
        this.f2044q = i;
        TextView textView = this.f2033g;
        if (textView != null) {
            textView.setTextAppearance(context, i);
        }
    }

    public void setSubtitleTextColor(@ColorInt int i) {
        setSubtitleTextColor(ColorStateList.valueOf(i));
    }

    public void setTitle(@StringRes int i) {
        setTitle(getContext().getText(i));
    }

    public void setTitleMargin(int i, int i2, int i3, int i4) {
        this.f2048t = i;
        this.f2052v = i2;
        this.f2050u = i3;
        this.f2054w = i4;
        requestLayout();
    }

    public void setTitleMarginBottom(int i) {
        this.f2054w = i;
        requestLayout();
    }

    public void setTitleMarginEnd(int i) {
        this.f2050u = i;
        requestLayout();
    }

    public void setTitleMarginStart(int i) {
        this.f2048t = i;
        requestLayout();
    }

    public void setTitleMarginTop(int i) {
        this.f2052v = i;
        requestLayout();
    }

    public void setTitleTextAppearance(Context context, @StyleRes int i) {
        this.f2043p = i;
        TextView textView = this.f2032f;
        if (textView != null) {
            textView.setTextAppearance(context, i);
        }
    }

    public void setTitleTextColor(@ColorInt int i) {
        setTitleTextColor(ColorStateList.valueOf(i));
    }

    public boolean showOverflowMenu() {
        ActionMenuView actionMenuView = this.f2031e;
        return actionMenuView != null && actionMenuView.showOverflowMenu();
    }

    /* renamed from: t */
    public final void m957t(View view, int i, int i2, int i3, int i4, int i5) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, marginLayoutParams.width);
        int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i3, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i4, marginLayoutParams.height);
        int mode = View.MeasureSpec.getMode(childMeasureSpec2);
        if (mode != 1073741824 && i5 >= 0) {
            if (mode != 0) {
                i5 = Math.min(View.MeasureSpec.getSize(childMeasureSpec2), i5);
            }
            childMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i5, 1073741824);
        }
        view.measure(childMeasureSpec, childMeasureSpec2);
    }

    /* renamed from: u */
    public final void m958u() {
        Menu menu = getMenu();
        ArrayList<MenuItem> currentMenuItems = getCurrentMenuItems();
        this.f2059y0.onCreateMenu(menu, getMenuInflater());
        ArrayList<MenuItem> currentMenuItems2 = getCurrentMenuItems();
        currentMenuItems2.removeAll(currentMenuItems);
        this.f2061z0 = currentMenuItems2;
    }

    /* renamed from: w */
    public void m959w() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (((LayoutParams) childAt.getLayoutParams()).f2086a != 2 && childAt != this.f2031e) {
                removeViewAt(childCount);
                this.f2055w0.add(childAt);
            }
        }
    }

    /* renamed from: x */
    public final boolean m960x() {
        if (!this.f2023H0) {
            return false;
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (m961y(childAt) && childAt.getMeasuredWidth() > 0 && childAt.getMeasuredHeight() > 0) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: y */
    public final boolean m961y(View view) {
        return (view == null || view.getParent() != this || view.getVisibility() == 8) ? false : true;
    }

    /* renamed from: z */
    void m962z() {
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        if (Build.VERSION.SDK_INT >= 33) {
            OnBackInvokedDispatcher m967a = C0300e.m967a(this);
            boolean z = hasExpandedActionView() && m967a != null && isAttachedToWindow() && this.f2027K0;
            if (z && this.f2026J0 == null) {
                if (this.f2024I0 == null) {
                    this.f2024I0 = C0300e.m968b(new Runnable() { // from class: com.sunia.HTREnginev2.qjn
                        @Override // java.lang.Runnable
                        public final void run() {
                            Toolbar.this.collapseActionView();
                        }
                    });
                }
                C0300e.m969c(m967a, this.f2024I0);
                this.f2026J0 = m967a;
                return;
            }
            if (z || (onBackInvokedDispatcher = this.f2026J0) == null) {
                return;
            }
            C0300e.m970d(onBackInvokedDispatcher, this.f2024I0);
            this.f2026J0 = null;
        }
    }

    /* loaded from: classes3.dex */
    public static class LayoutParams extends ActionBar.LayoutParams {

        /* renamed from: b */
        public static final int f2083b = 0;

        /* renamed from: c */
        public static final int f2084c = 1;

        /* renamed from: d */
        public static final int f2085d = 2;

        /* renamed from: a */
        public int f2086a;

        public LayoutParams(@NonNull Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f2086a = 0;
        }

        /* renamed from: a */
        public void m963a(ViewGroup.MarginLayoutParams marginLayoutParams) {
            ((ViewGroup.MarginLayoutParams) this).leftMargin = marginLayoutParams.leftMargin;
            ((ViewGroup.MarginLayoutParams) this).topMargin = marginLayoutParams.topMargin;
            ((ViewGroup.MarginLayoutParams) this).rightMargin = marginLayoutParams.rightMargin;
            ((ViewGroup.MarginLayoutParams) this).bottomMargin = marginLayoutParams.bottomMargin;
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f2086a = 0;
            this.gravity = 8388627;
        }

        public LayoutParams(int i, int i2, int i3) {
            super(i, i2);
            this.f2086a = 0;
            this.gravity = i3;
        }

        public LayoutParams(int i) {
            this(-2, -1, i);
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ActionBar.LayoutParams) layoutParams);
            this.f2086a = 0;
            this.f2086a = layoutParams.f2086a;
        }

        public LayoutParams(ActionBar.LayoutParams layoutParams) {
            super(layoutParams);
            this.f2086a = 0;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f2086a = 0;
            m963a(marginLayoutParams);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f2086a = 0;
        }
    }

    public Toolbar(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C0118R.attr.toolbarStyle);
    }

    @Override // androidx.core.view.MenuHost
    @MainThread
    public void addMenuProvider(@NonNull MenuProvider menuProvider, @NonNull LifecycleOwner lifecycleOwner) {
        this.f2059y0.addMenuProvider(menuProvider, lifecycleOwner);
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    public void setCollapseContentDescription(@Nullable CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            m941d();
        }
        ImageButton imageButton = this.f2039l;
        if (imageButton != null) {
            imageButton.setContentDescription(charSequence);
        }
    }

    public void setCollapseIcon(@Nullable Drawable drawable) {
        if (drawable != null) {
            m941d();
            this.f2039l.setImageDrawable(drawable);
        } else {
            ImageButton imageButton = this.f2039l;
            if (imageButton != null) {
                imageButton.setImageDrawable(this.f2036j);
            }
        }
    }

    public void setLogo(Drawable drawable) {
        if (drawable != null) {
            m943f();
            if (!m953p(this.f2035i)) {
                m940c(this.f2035i, true);
            }
        } else {
            ImageView imageView = this.f2035i;
            if (imageView != null && m953p(imageView)) {
                removeView(this.f2035i);
                this.f2055w0.remove(this.f2035i);
            }
        }
        ImageView imageView2 = this.f2035i;
        if (imageView2 != null) {
            imageView2.setImageDrawable(drawable);
        }
    }

    public void setLogoDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            m943f();
        }
        ImageView imageView = this.f2035i;
        if (imageView != null) {
            imageView.setContentDescription(charSequence);
        }
    }

    public void setNavigationContentDescription(@Nullable CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            m946i();
        }
        ImageButton imageButton = this.f2034h;
        if (imageButton != null) {
            imageButton.setContentDescription(charSequence);
            TooltipCompat.setTooltipText(this.f2034h, charSequence);
        }
    }

    public void setNavigationIcon(@Nullable Drawable drawable) {
        if (drawable != null) {
            m946i();
            if (!m953p(this.f2034h)) {
                m940c(this.f2034h, true);
            }
        } else {
            ImageButton imageButton = this.f2034h;
            if (imageButton != null && m953p(imageButton)) {
                removeView(this.f2034h);
                this.f2055w0.remove(this.f2034h);
            }
        }
        ImageButton imageButton2 = this.f2034h;
        if (imageButton2 != null) {
            imageButton2.setImageDrawable(drawable);
        }
    }

    public void setSubtitle(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.f2033g == null) {
                Context context = getContext();
                AppCompatTextView appCompatTextView = new AppCompatTextView(context);
                this.f2033g = appCompatTextView;
                appCompatTextView.setSingleLine();
                this.f2033g.setEllipsize(TextUtils.TruncateAt.END);
                int i = this.f2044q;
                if (i != 0) {
                    this.f2033g.setTextAppearance(context, i);
                }
                ColorStateList colorStateList = this.f2045q0;
                if (colorStateList != null) {
                    this.f2033g.setTextColor(colorStateList);
                }
            }
            if (!m953p(this.f2033g)) {
                m940c(this.f2033g, true);
            }
        } else {
            TextView textView = this.f2033g;
            if (textView != null && m953p(textView)) {
                removeView(this.f2033g);
                this.f2055w0.remove(this.f2033g);
            }
        }
        TextView textView2 = this.f2033g;
        if (textView2 != null) {
            textView2.setText(charSequence);
        }
        this.f2030Q = charSequence;
    }

    public void setSubtitleTextColor(@NonNull ColorStateList colorStateList) {
        this.f2045q0 = colorStateList;
        TextView textView = this.f2033g;
        if (textView != null) {
            textView.setTextColor(colorStateList);
        }
    }

    public void setTitle(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.f2032f == null) {
                Context context = getContext();
                AppCompatTextView appCompatTextView = new AppCompatTextView(context);
                this.f2032f = appCompatTextView;
                appCompatTextView.setSingleLine();
                this.f2032f.setEllipsize(TextUtils.TruncateAt.END);
                int i = this.f2043p;
                if (i != 0) {
                    this.f2032f.setTextAppearance(context, i);
                }
                ColorStateList colorStateList = this.f2038k0;
                if (colorStateList != null) {
                    this.f2032f.setTextColor(colorStateList);
                }
            }
            if (!m953p(this.f2032f)) {
                m940c(this.f2032f, true);
            }
        } else {
            TextView textView = this.f2032f;
            if (textView != null && m953p(textView)) {
                removeView(this.f2032f);
                this.f2055w0.remove(this.f2032f);
            }
        }
        TextView textView2 = this.f2032f;
        if (textView2 != null) {
            textView2.setText(charSequence);
        }
        this.f2029O = charSequence;
    }

    public void setTitleTextColor(@NonNull ColorStateList colorStateList) {
        this.f2038k0 = colorStateList;
        TextView textView = this.f2032f;
        if (textView != null) {
            textView.setTextColor(colorStateList);
        }
    }

    public Toolbar(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f2025J = 8388627;
        this.f2053v0 = new ArrayList<>();
        this.f2055w0 = new ArrayList<>();
        this.f2057x0 = new int[2];
        this.f2059y0 = new MenuHostHelper(new Runnable() { // from class: com.sunia.HTREnginev2.pjn
            @Override // java.lang.Runnable
            public final void run() {
                Toolbar.this.invalidateMenu();
            }
        });
        this.f2061z0 = new ArrayList<>();
        this.f2017B0 = new C0296a();
        this.f2028L0 = new RunnableC0297b();
        TintTypedArray obtainStyledAttributes = TintTypedArray.obtainStyledAttributes(getContext(), attributeSet, C0118R.styleable.Toolbar, i, 0);
        ViewCompat.saveAttributeDataForStyleable(this, context, C0118R.styleable.Toolbar, attributeSet, obtainStyledAttributes.getWrappedTypeArray(), i, 0);
        this.f2043p = obtainStyledAttributes.getResourceId(C0118R.styleable.Toolbar_titleTextAppearance, 0);
        this.f2044q = obtainStyledAttributes.getResourceId(C0118R.styleable.Toolbar_subtitleTextAppearance, 0);
        this.f2025J = obtainStyledAttributes.getInteger(C0118R.styleable.Toolbar_android_gravity, this.f2025J);
        this.f2046r = obtainStyledAttributes.getInteger(C0118R.styleable.Toolbar_buttonGravity, 48);
        int dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(C0118R.styleable.Toolbar_titleMargin, 0);
        dimensionPixelOffset = obtainStyledAttributes.hasValue(C0118R.styleable.Toolbar_titleMargins) ? obtainStyledAttributes.getDimensionPixelOffset(C0118R.styleable.Toolbar_titleMargins, dimensionPixelOffset) : dimensionPixelOffset;
        this.f2054w = dimensionPixelOffset;
        this.f2052v = dimensionPixelOffset;
        this.f2050u = dimensionPixelOffset;
        this.f2048t = dimensionPixelOffset;
        int dimensionPixelOffset2 = obtainStyledAttributes.getDimensionPixelOffset(C0118R.styleable.Toolbar_titleMarginStart, -1);
        if (dimensionPixelOffset2 >= 0) {
            this.f2048t = dimensionPixelOffset2;
        }
        int dimensionPixelOffset3 = obtainStyledAttributes.getDimensionPixelOffset(C0118R.styleable.Toolbar_titleMarginEnd, -1);
        if (dimensionPixelOffset3 >= 0) {
            this.f2050u = dimensionPixelOffset3;
        }
        int dimensionPixelOffset4 = obtainStyledAttributes.getDimensionPixelOffset(C0118R.styleable.Toolbar_titleMarginTop, -1);
        if (dimensionPixelOffset4 >= 0) {
            this.f2052v = dimensionPixelOffset4;
        }
        int dimensionPixelOffset5 = obtainStyledAttributes.getDimensionPixelOffset(C0118R.styleable.Toolbar_titleMarginBottom, -1);
        if (dimensionPixelOffset5 >= 0) {
            this.f2054w = dimensionPixelOffset5;
        }
        this.f2047s = obtainStyledAttributes.getDimensionPixelSize(C0118R.styleable.Toolbar_maxButtonHeight, -1);
        int dimensionPixelOffset6 = obtainStyledAttributes.getDimensionPixelOffset(C0118R.styleable.Toolbar_contentInsetStart, Integer.MIN_VALUE);
        int dimensionPixelOffset7 = obtainStyledAttributes.getDimensionPixelOffset(C0118R.styleable.Toolbar_contentInsetEnd, Integer.MIN_VALUE);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(C0118R.styleable.Toolbar_contentInsetLeft, 0);
        int dimensionPixelSize2 = obtainStyledAttributes.getDimensionPixelSize(C0118R.styleable.Toolbar_contentInsetRight, 0);
        m942e();
        this.f2056x.m55048e(dimensionPixelSize, dimensionPixelSize2);
        if (dimensionPixelOffset6 != Integer.MIN_VALUE || dimensionPixelOffset7 != Integer.MIN_VALUE) {
            this.f2056x.m55050g(dimensionPixelOffset6, dimensionPixelOffset7);
        }
        this.f2058y = obtainStyledAttributes.getDimensionPixelOffset(C0118R.styleable.Toolbar_contentInsetStartWithNavigation, Integer.MIN_VALUE);
        this.f2060z = obtainStyledAttributes.getDimensionPixelOffset(C0118R.styleable.Toolbar_contentInsetEndWithActions, Integer.MIN_VALUE);
        this.f2036j = obtainStyledAttributes.getDrawable(C0118R.styleable.Toolbar_collapseIcon);
        this.f2037k = obtainStyledAttributes.getText(C0118R.styleable.Toolbar_collapseContentDescription);
        CharSequence text = obtainStyledAttributes.getText(C0118R.styleable.Toolbar_title);
        if (!TextUtils.isEmpty(text)) {
            setTitle(text);
        }
        CharSequence text2 = obtainStyledAttributes.getText(C0118R.styleable.Toolbar_subtitle);
        if (!TextUtils.isEmpty(text2)) {
            setSubtitle(text2);
        }
        this.f2041n = getContext();
        setPopupTheme(obtainStyledAttributes.getResourceId(C0118R.styleable.Toolbar_popupTheme, 0));
        Drawable drawable = obtainStyledAttributes.getDrawable(C0118R.styleable.Toolbar_navigationIcon);
        if (drawable != null) {
            setNavigationIcon(drawable);
        }
        CharSequence text3 = obtainStyledAttributes.getText(C0118R.styleable.Toolbar_navigationContentDescription);
        if (!TextUtils.isEmpty(text3)) {
            setNavigationContentDescription(text3);
        }
        Drawable drawable2 = obtainStyledAttributes.getDrawable(C0118R.styleable.Toolbar_logo);
        if (drawable2 != null) {
            setLogo(drawable2);
        }
        CharSequence text4 = obtainStyledAttributes.getText(C0118R.styleable.Toolbar_logoDescription);
        if (!TextUtils.isEmpty(text4)) {
            setLogoDescription(text4);
        }
        if (obtainStyledAttributes.hasValue(C0118R.styleable.Toolbar_titleTextColor)) {
            setTitleTextColor(obtainStyledAttributes.getColorStateList(C0118R.styleable.Toolbar_titleTextColor));
        }
        if (obtainStyledAttributes.hasValue(C0118R.styleable.Toolbar_subtitleTextColor)) {
            setSubtitleTextColor(obtainStyledAttributes.getColorStateList(C0118R.styleable.Toolbar_subtitleTextColor));
        }
        if (obtainStyledAttributes.hasValue(C0118R.styleable.Toolbar_menu)) {
            inflateMenu(obtainStyledAttributes.getResourceId(C0118R.styleable.Toolbar_menu, 0));
        }
        obtainStyledAttributes.recycle();
    }

    @Override // androidx.core.view.MenuHost
    @SuppressLint({"LambdaLast"})
    @MainThread
    public void addMenuProvider(@NonNull MenuProvider menuProvider, @NonNull LifecycleOwner lifecycleOwner, @NonNull Lifecycle.State state) {
        this.f2059y0.addMenuProvider(menuProvider, lifecycleOwner, state);
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LayoutParams) {
            return new LayoutParams((LayoutParams) layoutParams);
        }
        if (layoutParams instanceof ActionBar.LayoutParams) {
            return new LayoutParams((ActionBar.LayoutParams) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new LayoutParams(layoutParams);
    }
}
