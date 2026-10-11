package com.google.android.material.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Dimension;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.view.menu.SubMenuBuilder;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.TextViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerViewAccessibilityDelegate;
import com.google.android.material.C5139R;
import java.util.ArrayList;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes6.dex */
public class NavigationMenuPresenter implements MenuPresenter {
    public static final int NO_TEXT_APPEARANCE_SET = 0;

    /* renamed from: v0 */
    public static final String f31596v0 = "android:menu:list";

    /* renamed from: w0 */
    public static final String f31597w0 = "android:menu:adapter";

    /* renamed from: x0 */
    public static final String f31598x0 = "android:menu:header";

    /* renamed from: J */
    @Px
    public int f31599J;

    /* renamed from: O */
    public boolean f31600O;

    /* renamed from: Z */
    public int f31602Z;

    /* renamed from: e */
    public NavigationMenuView f31603e;

    /* renamed from: f */
    public LinearLayout f31604f;

    /* renamed from: g */
    public MenuPresenter.Callback f31605g;

    /* renamed from: h */
    public MenuBuilder f31606h;

    /* renamed from: i */
    public int f31607i;

    /* renamed from: j */
    public C5298c f31608j;

    /* renamed from: k */
    public LayoutInflater f31609k;

    /* renamed from: k0 */
    public int f31610k0;

    /* renamed from: m */
    @Nullable
    public ColorStateList f31612m;

    /* renamed from: p */
    public ColorStateList f31615p;

    /* renamed from: q */
    public ColorStateList f31616q;

    /* renamed from: q0 */
    public int f31617q0;

    /* renamed from: r */
    public Drawable f31618r;

    /* renamed from: s */
    public RippleDrawable f31619s;

    /* renamed from: t */
    public int f31620t;

    /* renamed from: u */
    @Px
    public int f31622u;

    /* renamed from: v */
    public int f31624v;

    /* renamed from: w */
    public int f31625w;

    /* renamed from: x */
    @Px
    public int f31626x;

    /* renamed from: y */
    @Px
    public int f31627y;

    /* renamed from: z */
    @Px
    public int f31628z;

    /* renamed from: l */
    public int f31611l = 0;

    /* renamed from: n */
    public int f31613n = 0;

    /* renamed from: o */
    public boolean f31614o = true;

    /* renamed from: Q */
    public boolean f31601Q = true;

    /* renamed from: t0 */
    public int f31621t0 = -1;

    /* renamed from: u0 */
    public final View.OnClickListener f31623u0 = new ViewOnClickListenerC5296a();

    /* renamed from: com.google.android.material.internal.NavigationMenuPresenter$a */
    /* loaded from: classes6.dex */
    public class ViewOnClickListenerC5296a implements View.OnClickListener {
        public ViewOnClickListenerC5296a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            boolean z = true;
            NavigationMenuPresenter.this.setUpdateSuspended(true);
            MenuItemImpl itemData = ((NavigationMenuItemView) view).getItemData();
            NavigationMenuPresenter navigationMenuPresenter = NavigationMenuPresenter.this;
            boolean performItemAction = navigationMenuPresenter.f31606h.performItemAction(itemData, navigationMenuPresenter, 0);
            if (itemData != null && itemData.isCheckable() && performItemAction) {
                NavigationMenuPresenter.this.f31608j.m24269n(itemData);
            } else {
                z = false;
            }
            NavigationMenuPresenter.this.setUpdateSuspended(false);
            if (z) {
                NavigationMenuPresenter.this.updateMenuView(false);
            }
        }
    }

    /* renamed from: com.google.android.material.internal.NavigationMenuPresenter$b */
    /* loaded from: classes6.dex */
    public static class C5297b extends AbstractC5307l {
        public C5297b(View view) {
            super(view);
        }
    }

    /* renamed from: com.google.android.material.internal.NavigationMenuPresenter$c */
    /* loaded from: classes6.dex */
    public class C5298c extends RecyclerView.Adapter<AbstractC5307l> {

        /* renamed from: h */
        public static final String f31630h = "android:menu:checked";

        /* renamed from: i */
        public static final String f31631i = "android:menu:action_views";

        /* renamed from: j */
        public static final int f31632j = 0;

        /* renamed from: k */
        public static final int f31633k = 1;

        /* renamed from: l */
        public static final int f31634l = 2;

        /* renamed from: m */
        public static final int f31635m = 3;

        /* renamed from: d */
        public final ArrayList<InterfaceC5300e> f31636d = new ArrayList<>();

        /* renamed from: e */
        public MenuItemImpl f31637e;

        /* renamed from: f */
        public boolean f31638f;

        /* renamed from: com.google.android.material.internal.NavigationMenuPresenter$c$a */
        /* loaded from: classes6.dex */
        public class a extends AccessibilityDelegateCompat {

            /* renamed from: d */
            public final /* synthetic */ int f31640d;

            /* renamed from: e */
            public final /* synthetic */ boolean f31641e;

            public a(int i, boolean z) {
                this.f31640d = i;
                this.f31641e = z;
            }

            @Override // androidx.core.view.AccessibilityDelegateCompat
            public void onInitializeAccessibilityNodeInfo(@NonNull View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
                accessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(C5298c.this.m24258c(this.f31640d), 1, 1, 1, this.f31641e, view.isSelected()));
            }
        }

        public C5298c() {
            m24266k();
        }

        /* renamed from: c */
        public final int m24258c(int i) {
            int i2 = i;
            for (int i3 = 0; i3 < i; i3++) {
                if (NavigationMenuPresenter.this.f31608j.getItemViewType(i3) == 2 || NavigationMenuPresenter.this.f31608j.getItemViewType(i3) == 3) {
                    i2--;
                }
            }
            return i2;
        }

        /* renamed from: d */
        public final void m24259d(int i, int i2) {
            while (i < i2) {
                ((C5302g) this.f31636d.get(i)).f31646b = true;
                i++;
            }
        }

        @NonNull
        /* renamed from: e */
        public Bundle m24260e() {
            Bundle bundle = new Bundle();
            MenuItemImpl menuItemImpl = this.f31637e;
            if (menuItemImpl != null) {
                bundle.putInt(f31630h, menuItemImpl.getItemId());
            }
            SparseArray<? extends Parcelable> sparseArray = new SparseArray<>();
            int size = this.f31636d.size();
            for (int i = 0; i < size; i++) {
                InterfaceC5300e interfaceC5300e = this.f31636d.get(i);
                if (interfaceC5300e instanceof C5302g) {
                    MenuItemImpl m24274a = ((C5302g) interfaceC5300e).m24274a();
                    View actionView = m24274a != null ? m24274a.getActionView() : null;
                    if (actionView != null) {
                        ParcelableSparseArray parcelableSparseArray = new ParcelableSparseArray();
                        actionView.saveHierarchyState(parcelableSparseArray);
                        sparseArray.put(m24274a.getItemId(), parcelableSparseArray);
                    }
                }
            }
            bundle.putSparseParcelableArray(f31631i, sparseArray);
            return bundle;
        }

        /* renamed from: f */
        public MenuItemImpl m24261f() {
            return this.f31637e;
        }

        /* renamed from: g */
        public int m24262g() {
            int i = 0;
            for (int i2 = 0; i2 < NavigationMenuPresenter.this.f31608j.getItemCount(); i2++) {
                int itemViewType = NavigationMenuPresenter.this.f31608j.getItemViewType(i2);
                if (itemViewType == 0 || itemViewType == 1) {
                    i++;
                }
            }
            return i;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f31636d.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            InterfaceC5300e interfaceC5300e = this.f31636d.get(i);
            if (interfaceC5300e instanceof C5301f) {
                return 2;
            }
            if (interfaceC5300e instanceof C5299d) {
                return 3;
            }
            if (interfaceC5300e instanceof C5302g) {
                return ((C5302g) interfaceC5300e).m24274a().hasSubMenu() ? 1 : 0;
            }
            throw new RuntimeException("Unknown item type.");
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: h, reason: merged with bridge method [inline-methods] */
        public void onBindViewHolder(@NonNull AbstractC5307l abstractC5307l, int i) {
            int itemViewType = getItemViewType(i);
            if (itemViewType != 0) {
                if (itemViewType != 1) {
                    if (itemViewType != 2) {
                        return;
                    }
                    C5301f c5301f = (C5301f) this.f31636d.get(i);
                    abstractC5307l.itemView.setPadding(NavigationMenuPresenter.this.f31626x, c5301f.m24273b(), NavigationMenuPresenter.this.f31627y, c5301f.m24272a());
                    return;
                }
                TextView textView = (TextView) abstractC5307l.itemView;
                textView.setText(((C5302g) this.f31636d.get(i)).m24274a().getTitle());
                TextViewCompat.setTextAppearance(textView, NavigationMenuPresenter.this.f31611l);
                textView.setPadding(NavigationMenuPresenter.this.f31628z, textView.getPaddingTop(), NavigationMenuPresenter.this.f31599J, textView.getPaddingBottom());
                ColorStateList colorStateList = NavigationMenuPresenter.this.f31612m;
                if (colorStateList != null) {
                    textView.setTextColor(colorStateList);
                }
                m24268m(textView, i, true);
                return;
            }
            NavigationMenuItemView navigationMenuItemView = (NavigationMenuItemView) abstractC5307l.itemView;
            navigationMenuItemView.setIconTintList(NavigationMenuPresenter.this.f31616q);
            navigationMenuItemView.setTextAppearance(NavigationMenuPresenter.this.f31613n);
            ColorStateList colorStateList2 = NavigationMenuPresenter.this.f31615p;
            if (colorStateList2 != null) {
                navigationMenuItemView.setTextColor(colorStateList2);
            }
            Drawable drawable = NavigationMenuPresenter.this.f31618r;
            ViewCompat.setBackground(navigationMenuItemView, drawable != null ? drawable.getConstantState().newDrawable() : null);
            RippleDrawable rippleDrawable = NavigationMenuPresenter.this.f31619s;
            if (rippleDrawable != null) {
                navigationMenuItemView.setForeground(rippleDrawable.getConstantState().newDrawable());
            }
            C5302g c5302g = (C5302g) this.f31636d.get(i);
            navigationMenuItemView.setNeedsEmptyIcon(c5302g.f31646b);
            NavigationMenuPresenter navigationMenuPresenter = NavigationMenuPresenter.this;
            int i2 = navigationMenuPresenter.f31620t;
            int i3 = navigationMenuPresenter.f31622u;
            navigationMenuItemView.setPadding(i2, i3, i2, i3);
            navigationMenuItemView.setIconPadding(NavigationMenuPresenter.this.f31624v);
            NavigationMenuPresenter navigationMenuPresenter2 = NavigationMenuPresenter.this;
            if (navigationMenuPresenter2.f31600O) {
                navigationMenuItemView.setIconSize(navigationMenuPresenter2.f31625w);
            }
            navigationMenuItemView.setMaxLines(NavigationMenuPresenter.this.f31602Z);
            navigationMenuItemView.initialize(c5302g.m24274a(), NavigationMenuPresenter.this.f31614o);
            m24268m(navigationMenuItemView, i, false);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @Nullable
        /* renamed from: i, reason: merged with bridge method [inline-methods] */
        public AbstractC5307l onCreateViewHolder(ViewGroup viewGroup, int i) {
            if (i == 0) {
                NavigationMenuPresenter navigationMenuPresenter = NavigationMenuPresenter.this;
                return new C5304i(navigationMenuPresenter.f31609k, viewGroup, navigationMenuPresenter.f31623u0);
            }
            if (i == 1) {
                return new C5306k(NavigationMenuPresenter.this.f31609k, viewGroup);
            }
            if (i == 2) {
                return new C5305j(NavigationMenuPresenter.this.f31609k, viewGroup);
            }
            if (i != 3) {
                return null;
            }
            return new C5297b(NavigationMenuPresenter.this.f31604f);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* renamed from: j, reason: merged with bridge method [inline-methods] */
        public void onViewRecycled(AbstractC5307l abstractC5307l) {
            if (abstractC5307l instanceof C5304i) {
                ((NavigationMenuItemView) abstractC5307l.itemView).recycle();
            }
        }

        /* renamed from: k */
        public final void m24266k() {
            if (this.f31638f) {
                return;
            }
            boolean z = true;
            this.f31638f = true;
            this.f31636d.clear();
            this.f31636d.add(new C5299d());
            int size = NavigationMenuPresenter.this.f31606h.getVisibleItems().size();
            int i = -1;
            int i2 = 0;
            boolean z2 = false;
            int i3 = 0;
            while (i2 < size) {
                MenuItemImpl menuItemImpl = NavigationMenuPresenter.this.f31606h.getVisibleItems().get(i2);
                if (menuItemImpl.isChecked()) {
                    m24269n(menuItemImpl);
                }
                if (menuItemImpl.isCheckable()) {
                    menuItemImpl.setExclusiveCheckable(false);
                }
                if (menuItemImpl.hasSubMenu()) {
                    SubMenu subMenu = menuItemImpl.getSubMenu();
                    if (subMenu.hasVisibleItems()) {
                        if (i2 != 0) {
                            this.f31636d.add(new C5301f(NavigationMenuPresenter.this.f31617q0, 0));
                        }
                        this.f31636d.add(new C5302g(menuItemImpl));
                        int size2 = this.f31636d.size();
                        int size3 = subMenu.size();
                        int i4 = 0;
                        boolean z3 = false;
                        while (i4 < size3) {
                            MenuItemImpl menuItemImpl2 = (MenuItemImpl) subMenu.getItem(i4);
                            if (menuItemImpl2.isVisible()) {
                                if (!z3 && menuItemImpl2.getIcon() != null) {
                                    z3 = z;
                                }
                                if (menuItemImpl2.isCheckable()) {
                                    menuItemImpl2.setExclusiveCheckable(false);
                                }
                                if (menuItemImpl.isChecked()) {
                                    m24269n(menuItemImpl);
                                }
                                this.f31636d.add(new C5302g(menuItemImpl2));
                            }
                            i4++;
                            z = true;
                        }
                        if (z3) {
                            m24259d(size2, this.f31636d.size());
                        }
                    }
                } else {
                    int groupId = menuItemImpl.getGroupId();
                    if (groupId != i) {
                        i3 = this.f31636d.size();
                        z2 = menuItemImpl.getIcon() != null;
                        if (i2 != 0) {
                            i3++;
                            ArrayList<InterfaceC5300e> arrayList = this.f31636d;
                            int i5 = NavigationMenuPresenter.this.f31617q0;
                            arrayList.add(new C5301f(i5, i5));
                        }
                    } else if (!z2 && menuItemImpl.getIcon() != null) {
                        m24259d(i3, this.f31636d.size());
                        z2 = true;
                    }
                    C5302g c5302g = new C5302g(menuItemImpl);
                    c5302g.f31646b = z2;
                    this.f31636d.add(c5302g);
                    i = groupId;
                }
                i2++;
                z = true;
            }
            this.f31638f = false;
        }

        /* renamed from: l */
        public void m24267l(@NonNull Bundle bundle) {
            MenuItemImpl m24274a;
            View actionView;
            ParcelableSparseArray parcelableSparseArray;
            MenuItemImpl m24274a2;
            int i = bundle.getInt(f31630h, 0);
            if (i != 0) {
                this.f31638f = true;
                int size = this.f31636d.size();
                int i2 = 0;
                while (true) {
                    if (i2 >= size) {
                        break;
                    }
                    InterfaceC5300e interfaceC5300e = this.f31636d.get(i2);
                    if ((interfaceC5300e instanceof C5302g) && (m24274a2 = ((C5302g) interfaceC5300e).m24274a()) != null && m24274a2.getItemId() == i) {
                        m24269n(m24274a2);
                        break;
                    }
                    i2++;
                }
                this.f31638f = false;
                m24266k();
            }
            SparseArray sparseParcelableArray = bundle.getSparseParcelableArray(f31631i);
            if (sparseParcelableArray != null) {
                int size2 = this.f31636d.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    InterfaceC5300e interfaceC5300e2 = this.f31636d.get(i3);
                    if ((interfaceC5300e2 instanceof C5302g) && (m24274a = ((C5302g) interfaceC5300e2).m24274a()) != null && (actionView = m24274a.getActionView()) != null && (parcelableSparseArray = (ParcelableSparseArray) sparseParcelableArray.get(m24274a.getItemId())) != null) {
                        actionView.restoreHierarchyState(parcelableSparseArray);
                    }
                }
            }
        }

        /* renamed from: m */
        public final void m24268m(View view, int i, boolean z) {
            ViewCompat.setAccessibilityDelegate(view, new a(i, z));
        }

        /* renamed from: n */
        public void m24269n(@NonNull MenuItemImpl menuItemImpl) {
            if (this.f31637e == menuItemImpl || !menuItemImpl.isCheckable()) {
                return;
            }
            MenuItemImpl menuItemImpl2 = this.f31637e;
            if (menuItemImpl2 != null) {
                menuItemImpl2.setChecked(false);
            }
            this.f31637e = menuItemImpl;
            menuItemImpl.setChecked(true);
        }

        /* renamed from: o */
        public void m24270o(boolean z) {
            this.f31638f = z;
        }

        /* renamed from: p */
        public void m24271p() {
            m24266k();
            notifyDataSetChanged();
        }
    }

    /* renamed from: com.google.android.material.internal.NavigationMenuPresenter$d */
    /* loaded from: classes6.dex */
    public static class C5299d implements InterfaceC5300e {
    }

    /* renamed from: com.google.android.material.internal.NavigationMenuPresenter$e */
    /* loaded from: classes6.dex */
    public interface InterfaceC5300e {
    }

    /* renamed from: com.google.android.material.internal.NavigationMenuPresenter$f */
    /* loaded from: classes6.dex */
    public static class C5301f implements InterfaceC5300e {

        /* renamed from: a */
        public final int f31643a;

        /* renamed from: b */
        public final int f31644b;

        public C5301f(int i, int i2) {
            this.f31643a = i;
            this.f31644b = i2;
        }

        /* renamed from: a */
        public int m24272a() {
            return this.f31644b;
        }

        /* renamed from: b */
        public int m24273b() {
            return this.f31643a;
        }
    }

    /* renamed from: com.google.android.material.internal.NavigationMenuPresenter$g */
    /* loaded from: classes6.dex */
    public static class C5302g implements InterfaceC5300e {

        /* renamed from: a */
        public final MenuItemImpl f31645a;

        /* renamed from: b */
        public boolean f31646b;

        public C5302g(MenuItemImpl menuItemImpl) {
            this.f31645a = menuItemImpl;
        }

        /* renamed from: a */
        public MenuItemImpl m24274a() {
            return this.f31645a;
        }
    }

    /* renamed from: com.google.android.material.internal.NavigationMenuPresenter$h */
    /* loaded from: classes6.dex */
    public class C5303h extends RecyclerViewAccessibilityDelegate {
        public C5303h(@NonNull RecyclerView recyclerView) {
            super(recyclerView);
        }

        @Override // androidx.recyclerview.widget.RecyclerViewAccessibilityDelegate, androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(NavigationMenuPresenter.this.f31608j.m24262g(), 1, false));
        }
    }

    /* renamed from: com.google.android.material.internal.NavigationMenuPresenter$i */
    /* loaded from: classes6.dex */
    public static class C5304i extends AbstractC5307l {
        public C5304i(@NonNull LayoutInflater layoutInflater, ViewGroup viewGroup, View.OnClickListener onClickListener) {
            super(layoutInflater.inflate(C5139R.layout.design_navigation_item, viewGroup, false));
            this.itemView.setOnClickListener(onClickListener);
        }
    }

    /* renamed from: com.google.android.material.internal.NavigationMenuPresenter$j */
    /* loaded from: classes6.dex */
    public static class C5305j extends AbstractC5307l {
        public C5305j(@NonNull LayoutInflater layoutInflater, ViewGroup viewGroup) {
            super(layoutInflater.inflate(C5139R.layout.design_navigation_item_separator, viewGroup, false));
        }
    }

    /* renamed from: com.google.android.material.internal.NavigationMenuPresenter$k */
    /* loaded from: classes6.dex */
    public static class C5306k extends AbstractC5307l {
        public C5306k(@NonNull LayoutInflater layoutInflater, ViewGroup viewGroup) {
            super(layoutInflater.inflate(C5139R.layout.design_navigation_item_subheader, viewGroup, false));
        }
    }

    /* renamed from: com.google.android.material.internal.NavigationMenuPresenter$l */
    /* loaded from: classes6.dex */
    public static abstract class AbstractC5307l extends RecyclerView.ViewHolder {
        public AbstractC5307l(View view) {
            super(view);
        }
    }

    public void addHeaderView(@NonNull View view) {
        this.f31604f.addView(view);
        NavigationMenuView navigationMenuView = this.f31603e;
        navigationMenuView.setPadding(0, 0, 0, navigationMenuView.getPaddingBottom());
    }

    /* renamed from: b */
    public final boolean m24255b() {
        return getHeaderCount() > 0;
    }

    /* renamed from: c */
    public final void m24256c() {
        int i = (m24255b() || !this.f31601Q) ? 0 : this.f31610k0;
        NavigationMenuView navigationMenuView = this.f31603e;
        navigationMenuView.setPadding(0, i, 0, navigationMenuView.getPaddingBottom());
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean collapseItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        return false;
    }

    public void dispatchApplyWindowInsets(@NonNull WindowInsetsCompat windowInsetsCompat) {
        int systemWindowInsetTop = windowInsetsCompat.getSystemWindowInsetTop();
        if (this.f31610k0 != systemWindowInsetTop) {
            this.f31610k0 = systemWindowInsetTop;
            m24256c();
        }
        NavigationMenuView navigationMenuView = this.f31603e;
        navigationMenuView.setPadding(0, navigationMenuView.getPaddingTop(), 0, windowInsetsCompat.getSystemWindowInsetBottom());
        ViewCompat.dispatchApplyWindowInsets(this.f31604f, windowInsetsCompat);
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean expandItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean flagActionItems() {
        return false;
    }

    @Nullable
    public MenuItemImpl getCheckedItem() {
        return this.f31608j.m24261f();
    }

    @Px
    public int getDividerInsetEnd() {
        return this.f31627y;
    }

    @Px
    public int getDividerInsetStart() {
        return this.f31626x;
    }

    public int getHeaderCount() {
        return this.f31604f.getChildCount();
    }

    public View getHeaderView(int i) {
        return this.f31604f.getChildAt(i);
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public int getId() {
        return this.f31607i;
    }

    @Nullable
    public Drawable getItemBackground() {
        return this.f31618r;
    }

    public int getItemHorizontalPadding() {
        return this.f31620t;
    }

    public int getItemIconPadding() {
        return this.f31624v;
    }

    public int getItemMaxLines() {
        return this.f31602Z;
    }

    @Nullable
    public ColorStateList getItemTextColor() {
        return this.f31615p;
    }

    @Nullable
    public ColorStateList getItemTintList() {
        return this.f31616q;
    }

    @Px
    public int getItemVerticalPadding() {
        return this.f31622u;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public MenuView getMenuView(ViewGroup viewGroup) {
        if (this.f31603e == null) {
            NavigationMenuView navigationMenuView = (NavigationMenuView) this.f31609k.inflate(C5139R.layout.design_navigation_menu, viewGroup, false);
            this.f31603e = navigationMenuView;
            navigationMenuView.setAccessibilityDelegateCompat(new C5303h(this.f31603e));
            if (this.f31608j == null) {
                C5298c c5298c = new C5298c();
                this.f31608j = c5298c;
                c5298c.setHasStableIds(true);
            }
            int i = this.f31621t0;
            if (i != -1) {
                this.f31603e.setOverScrollMode(i);
            }
            LinearLayout linearLayout = (LinearLayout) this.f31609k.inflate(C5139R.layout.design_navigation_item_header, (ViewGroup) this.f31603e, false);
            this.f31604f = linearLayout;
            ViewCompat.setImportantForAccessibility(linearLayout, 2);
            this.f31603e.setAdapter(this.f31608j);
        }
        return this.f31603e;
    }

    @Px
    public int getSubheaderInsetEnd() {
        return this.f31599J;
    }

    @Px
    public int getSubheaderInsetStart() {
        return this.f31628z;
    }

    public View inflateHeaderView(@LayoutRes int i) {
        View inflate = this.f31609k.inflate(i, (ViewGroup) this.f31604f, false);
        addHeaderView(inflate);
        return inflate;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void initForMenu(@NonNull Context context, @NonNull MenuBuilder menuBuilder) {
        this.f31609k = LayoutInflater.from(context);
        this.f31606h = menuBuilder;
        this.f31617q0 = context.getResources().getDimensionPixelOffset(C5139R.dimen.design_navigation_separator_vertical_padding);
    }

    public boolean isBehindStatusBar() {
        return this.f31601Q;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
        MenuPresenter.Callback callback = this.f31605g;
        if (callback != null) {
            callback.onCloseMenu(menuBuilder, z);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:list");
            if (sparseParcelableArray != null) {
                this.f31603e.restoreHierarchyState(sparseParcelableArray);
            }
            Bundle bundle2 = bundle.getBundle(f31597w0);
            if (bundle2 != null) {
                this.f31608j.m24267l(bundle2);
            }
            SparseArray<Parcelable> sparseParcelableArray2 = bundle.getSparseParcelableArray(f31598x0);
            if (sparseParcelableArray2 != null) {
                this.f31604f.restoreHierarchyState(sparseParcelableArray2);
            }
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    @NonNull
    public Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        if (this.f31603e != null) {
            SparseArray<Parcelable> sparseArray = new SparseArray<>();
            this.f31603e.saveHierarchyState(sparseArray);
            bundle.putSparseParcelableArray("android:menu:list", sparseArray);
        }
        C5298c c5298c = this.f31608j;
        if (c5298c != null) {
            bundle.putBundle(f31597w0, c5298c.m24260e());
        }
        if (this.f31604f != null) {
            SparseArray<Parcelable> sparseArray2 = new SparseArray<>();
            this.f31604f.saveHierarchyState(sparseArray2);
            bundle.putSparseParcelableArray(f31598x0, sparseArray2);
        }
        return bundle;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
        return false;
    }

    public void removeHeaderView(@NonNull View view) {
        this.f31604f.removeView(view);
        if (m24255b()) {
            return;
        }
        NavigationMenuView navigationMenuView = this.f31603e;
        navigationMenuView.setPadding(0, this.f31610k0, 0, navigationMenuView.getPaddingBottom());
    }

    public void setBehindStatusBar(boolean z) {
        if (this.f31601Q != z) {
            this.f31601Q = z;
            m24256c();
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void setCallback(MenuPresenter.Callback callback) {
        this.f31605g = callback;
    }

    public void setCheckedItem(@NonNull MenuItemImpl menuItemImpl) {
        this.f31608j.m24269n(menuItemImpl);
    }

    public void setDividerInsetEnd(@Px int i) {
        this.f31627y = i;
        updateMenuView(false);
    }

    public void setDividerInsetStart(@Px int i) {
        this.f31626x = i;
        updateMenuView(false);
    }

    public void setId(int i) {
        this.f31607i = i;
    }

    public void setItemBackground(@Nullable Drawable drawable) {
        this.f31618r = drawable;
        updateMenuView(false);
    }

    public void setItemForeground(@Nullable RippleDrawable rippleDrawable) {
        this.f31619s = rippleDrawable;
        updateMenuView(false);
    }

    public void setItemHorizontalPadding(int i) {
        this.f31620t = i;
        updateMenuView(false);
    }

    public void setItemIconPadding(int i) {
        this.f31624v = i;
        updateMenuView(false);
    }

    public void setItemIconSize(@Dimension int i) {
        if (this.f31625w != i) {
            this.f31625w = i;
            this.f31600O = true;
            updateMenuView(false);
        }
    }

    public void setItemIconTintList(@Nullable ColorStateList colorStateList) {
        this.f31616q = colorStateList;
        updateMenuView(false);
    }

    public void setItemMaxLines(int i) {
        this.f31602Z = i;
        updateMenuView(false);
    }

    public void setItemTextAppearance(@StyleRes int i) {
        this.f31613n = i;
        updateMenuView(false);
    }

    public void setItemTextAppearanceActiveBoldEnabled(boolean z) {
        this.f31614o = z;
        updateMenuView(false);
    }

    public void setItemTextColor(@Nullable ColorStateList colorStateList) {
        this.f31615p = colorStateList;
        updateMenuView(false);
    }

    public void setItemVerticalPadding(@Px int i) {
        this.f31622u = i;
        updateMenuView(false);
    }

    public void setOverScrollMode(int i) {
        this.f31621t0 = i;
        NavigationMenuView navigationMenuView = this.f31603e;
        if (navigationMenuView != null) {
            navigationMenuView.setOverScrollMode(i);
        }
    }

    public void setSubheaderColor(@Nullable ColorStateList colorStateList) {
        this.f31612m = colorStateList;
        updateMenuView(false);
    }

    public void setSubheaderInsetEnd(@Px int i) {
        this.f31599J = i;
        updateMenuView(false);
    }

    public void setSubheaderInsetStart(@Px int i) {
        this.f31628z = i;
        updateMenuView(false);
    }

    public void setSubheaderTextAppearance(@StyleRes int i) {
        this.f31611l = i;
        updateMenuView(false);
    }

    public void setUpdateSuspended(boolean z) {
        C5298c c5298c = this.f31608j;
        if (c5298c != null) {
            c5298c.m24270o(z);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void updateMenuView(boolean z) {
        C5298c c5298c = this.f31608j;
        if (c5298c != null) {
            c5298c.m24271p();
        }
    }
}
