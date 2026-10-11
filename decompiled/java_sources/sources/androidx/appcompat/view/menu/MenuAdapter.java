package androidx.appcompat.view.menu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.menu.MenuView;
import java.util.ArrayList;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes3.dex */
public class MenuAdapter extends BaseAdapter {

    /* renamed from: e */
    public MenuBuilder f1172e;

    /* renamed from: f */
    public int f1173f = -1;

    /* renamed from: g */
    public boolean f1174g;

    /* renamed from: h */
    public final boolean f1175h;

    /* renamed from: i */
    public final LayoutInflater f1176i;

    /* renamed from: j */
    public final int f1177j;

    public MenuAdapter(MenuBuilder menuBuilder, LayoutInflater layoutInflater, boolean z, int i) {
        this.f1175h = z;
        this.f1176i = layoutInflater;
        this.f1172e = menuBuilder;
        this.f1177j = i;
        m599a();
    }

    /* renamed from: a */
    public void m599a() {
        MenuItemImpl expandedItem = this.f1172e.getExpandedItem();
        if (expandedItem != null) {
            ArrayList<MenuItemImpl> nonActionItems = this.f1172e.getNonActionItems();
            int size = nonActionItems.size();
            for (int i = 0; i < size; i++) {
                if (nonActionItems.get(i) == expandedItem) {
                    this.f1173f = i;
                    return;
                }
            }
        }
        this.f1173f = -1;
    }

    public MenuBuilder getAdapterMenu() {
        return this.f1172e;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f1173f < 0 ? (this.f1175h ? this.f1172e.getNonActionItems() : this.f1172e.getVisibleItems()).size() : r0.size() - 1;
    }

    public boolean getForceShowIcon() {
        return this.f1174g;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.f1176i.inflate(this.f1177j, viewGroup, false);
        }
        int groupId = getItem(i).getGroupId();
        int i2 = i - 1;
        ListMenuItemView listMenuItemView = (ListMenuItemView) view;
        listMenuItemView.setGroupDividerEnabled(this.f1172e.isGroupDividerEnabled() && groupId != (i2 >= 0 ? getItem(i2).getGroupId() : groupId));
        MenuView.ItemView itemView = (MenuView.ItemView) view;
        if (this.f1174g) {
            listMenuItemView.setForceShowIcon(true);
        }
        itemView.initialize(getItem(i), 0);
        return view;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        m599a();
        super.notifyDataSetChanged();
    }

    public void setForceShowIcon(boolean z) {
        this.f1174g = z;
    }

    @Override // android.widget.Adapter
    public MenuItemImpl getItem(int i) {
        ArrayList<MenuItemImpl> nonActionItems = this.f1175h ? this.f1172e.getNonActionItems() : this.f1172e.getVisibleItems();
        int i2 = this.f1173f;
        if (i2 >= 0 && i >= i2) {
            i++;
        }
        return nonActionItems.get(i);
    }
}
