package androidx.appcompat.view.menu;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import androidx.annotation.RestrictTo;
import androidx.appcompat.C0118R;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.view.menu.MenuView;
import java.util.ArrayList;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes3.dex */
public class ListMenuPresenter implements MenuPresenter, AdapterView.OnItemClickListener {
    public static final String VIEWS_TAG = "android:menu:list";

    /* renamed from: o */
    public static final String f1159o = "ListMenuPresenter";

    /* renamed from: e */
    public Context f1160e;

    /* renamed from: f */
    public LayoutInflater f1161f;

    /* renamed from: g */
    public MenuBuilder f1162g;

    /* renamed from: h */
    public ExpandedMenuView f1163h;

    /* renamed from: i */
    public int f1164i;

    /* renamed from: j */
    public int f1165j;

    /* renamed from: k */
    public int f1166k;

    /* renamed from: l */
    public MenuPresenter.Callback f1167l;

    /* renamed from: m */
    public C0193a f1168m;

    /* renamed from: n */
    public int f1169n;

    /* renamed from: androidx.appcompat.view.menu.ListMenuPresenter$a */
    /* loaded from: classes3.dex */
    public class C0193a extends BaseAdapter {

        /* renamed from: e */
        public int f1170e = -1;

        public C0193a() {
            m597a();
        }

        /* renamed from: a */
        public void m597a() {
            MenuItemImpl expandedItem = ListMenuPresenter.this.f1162g.getExpandedItem();
            if (expandedItem != null) {
                ArrayList<MenuItemImpl> nonActionItems = ListMenuPresenter.this.f1162g.getNonActionItems();
                int size = nonActionItems.size();
                for (int i = 0; i < size; i++) {
                    if (nonActionItems.get(i) == expandedItem) {
                        this.f1170e = i;
                        return;
                    }
                }
            }
            this.f1170e = -1;
        }

        @Override // android.widget.Adapter
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public MenuItemImpl getItem(int i) {
            ArrayList<MenuItemImpl> nonActionItems = ListMenuPresenter.this.f1162g.getNonActionItems();
            int i2 = i + ListMenuPresenter.this.f1164i;
            int i3 = this.f1170e;
            if (i3 >= 0 && i2 >= i3) {
                i2++;
            }
            return nonActionItems.get(i2);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            int size = ListMenuPresenter.this.f1162g.getNonActionItems().size() - ListMenuPresenter.this.f1164i;
            return this.f1170e < 0 ? size : size - 1;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                ListMenuPresenter listMenuPresenter = ListMenuPresenter.this;
                view = listMenuPresenter.f1161f.inflate(listMenuPresenter.f1166k, viewGroup, false);
            }
            ((MenuView.ItemView) view).initialize(getItem(i), 0);
            return view;
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            m597a();
            super.notifyDataSetChanged();
        }
    }

    public ListMenuPresenter(Context context, int i) {
        this(i, 0);
        this.f1160e = context;
        this.f1161f = LayoutInflater.from(context);
    }

    /* renamed from: a */
    public int m596a() {
        return this.f1164i;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean collapseItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean expandItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean flagActionItems() {
        return false;
    }

    public ListAdapter getAdapter() {
        if (this.f1168m == null) {
            this.f1168m = new C0193a();
        }
        return this.f1168m;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public int getId() {
        return this.f1169n;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public MenuView getMenuView(ViewGroup viewGroup) {
        if (this.f1163h == null) {
            this.f1163h = (ExpandedMenuView) this.f1161f.inflate(C0118R.layout.abc_expanded_menu_layout, viewGroup, false);
            if (this.f1168m == null) {
                this.f1168m = new C0193a();
            }
            this.f1163h.setAdapter((ListAdapter) this.f1168m);
            this.f1163h.setOnItemClickListener(this);
        }
        return this.f1163h;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void initForMenu(Context context, MenuBuilder menuBuilder) {
        if (this.f1165j != 0) {
            ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, this.f1165j);
            this.f1160e = contextThemeWrapper;
            this.f1161f = LayoutInflater.from(contextThemeWrapper);
        } else if (this.f1160e != null) {
            this.f1160e = context;
            if (this.f1161f == null) {
                this.f1161f = LayoutInflater.from(context);
            }
        }
        this.f1162g = menuBuilder;
        C0193a c0193a = this.f1168m;
        if (c0193a != null) {
            c0193a.notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
        MenuPresenter.Callback callback = this.f1167l;
        if (callback != null) {
            callback.onCloseMenu(menuBuilder, z);
        }
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        this.f1162g.performItemAction(this.f1168m.getItem(i), this, 0);
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void onRestoreInstanceState(Parcelable parcelable) {
        restoreHierarchyState((Bundle) parcelable);
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public Parcelable onSaveInstanceState() {
        if (this.f1163h == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        saveHierarchyState(bundle);
        return bundle;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
        if (!subMenuBuilder.hasVisibleItems()) {
            return false;
        }
        new DialogInterfaceOnKeyListenerC0200a(subMenuBuilder).m634c(null);
        MenuPresenter.Callback callback = this.f1167l;
        if (callback == null) {
            return true;
        }
        callback.onOpenSubMenu(subMenuBuilder);
        return true;
    }

    public void restoreHierarchyState(Bundle bundle) {
        SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:list");
        if (sparseParcelableArray != null) {
            this.f1163h.restoreHierarchyState(sparseParcelableArray);
        }
    }

    public void saveHierarchyState(Bundle bundle) {
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        ExpandedMenuView expandedMenuView = this.f1163h;
        if (expandedMenuView != null) {
            expandedMenuView.saveHierarchyState(sparseArray);
        }
        bundle.putSparseParcelableArray("android:menu:list", sparseArray);
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void setCallback(MenuPresenter.Callback callback) {
        this.f1167l = callback;
    }

    public void setId(int i) {
        this.f1169n = i;
    }

    public void setItemIndexOffset(int i) {
        this.f1164i = i;
        if (this.f1163h != null) {
            updateMenuView(false);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void updateMenuView(boolean z) {
        C0193a c0193a = this.f1168m;
        if (c0193a != null) {
            c0193a.notifyDataSetChanged();
        }
    }

    public ListMenuPresenter(int i, int i2) {
        this.f1166k = i;
        this.f1165j = i2;
    }
}
