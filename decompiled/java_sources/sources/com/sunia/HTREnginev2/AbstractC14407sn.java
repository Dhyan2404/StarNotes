package com.sunia.HTREnginev2;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import androidx.appcompat.view.menu.MenuItemWrapperICS;
import androidx.collection.SimpleArrayMap;
import androidx.core.internal.view.SupportMenuItem;
import androidx.core.internal.view.SupportSubMenu;

/* renamed from: com.sunia.HTREnginev2.sn */
/* loaded from: classes3.dex */
public abstract class AbstractC14407sn {

    /* renamed from: a */
    public final Context f84302a;

    /* renamed from: b */
    public SimpleArrayMap<SupportMenuItem, MenuItem> f84303b;

    /* renamed from: c */
    public SimpleArrayMap<SupportSubMenu, SubMenu> f84304c;

    public AbstractC14407sn(Context context) {
        this.f84302a = context;
    }

    /* renamed from: a */
    public final MenuItem m57180a(MenuItem menuItem) {
        if (!(menuItem instanceof SupportMenuItem)) {
            return menuItem;
        }
        SupportMenuItem supportMenuItem = (SupportMenuItem) menuItem;
        if (this.f84303b == null) {
            this.f84303b = new SimpleArrayMap<>();
        }
        MenuItem menuItem2 = this.f84303b.get(supportMenuItem);
        if (menuItem2 != null) {
            return menuItem2;
        }
        MenuItemWrapperICS menuItemWrapperICS = new MenuItemWrapperICS(this.f84302a, supportMenuItem);
        this.f84303b.put(supportMenuItem, menuItemWrapperICS);
        return menuItemWrapperICS;
    }

    /* renamed from: b */
    public final SubMenu m57181b(SubMenu subMenu) {
        if (!(subMenu instanceof SupportSubMenu)) {
            return subMenu;
        }
        SupportSubMenu supportSubMenu = (SupportSubMenu) subMenu;
        if (this.f84304c == null) {
            this.f84304c = new SimpleArrayMap<>();
        }
        SubMenu subMenu2 = this.f84304c.get(supportSubMenu);
        if (subMenu2 != null) {
            return subMenu2;
        }
        o4n o4nVar = new o4n(this.f84302a, supportSubMenu);
        this.f84304c.put(supportSubMenu, o4nVar);
        return o4nVar;
    }

    /* renamed from: c */
    public final void m57182c() {
        SimpleArrayMap<SupportMenuItem, MenuItem> simpleArrayMap = this.f84303b;
        if (simpleArrayMap != null) {
            simpleArrayMap.clear();
        }
        SimpleArrayMap<SupportSubMenu, SubMenu> simpleArrayMap2 = this.f84304c;
        if (simpleArrayMap2 != null) {
            simpleArrayMap2.clear();
        }
    }

    /* renamed from: d */
    public final void m57183d(int i) {
        if (this.f84303b == null) {
            return;
        }
        int i2 = 0;
        while (i2 < this.f84303b.size()) {
            if (this.f84303b.keyAt(i2).getGroupId() == i) {
                this.f84303b.removeAt(i2);
                i2--;
            }
            i2++;
        }
    }

    /* renamed from: e */
    public final void m57184e(int i) {
        if (this.f84303b == null) {
            return;
        }
        for (int i2 = 0; i2 < this.f84303b.size(); i2++) {
            if (this.f84303b.keyAt(i2).getItemId() == i) {
                this.f84303b.removeAt(i2);
                return;
            }
        }
    }
}
