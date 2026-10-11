package androidx.appcompat.view.menu;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.core.content.ContextCompat;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.ActionProvider;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes3.dex */
public class MenuBuilder implements SupportMenu {

    /* renamed from: A */
    public static final String f1178A = "MenuBuilder";

    /* renamed from: B */
    public static final String f1179B = "android:menu:presenters";

    /* renamed from: C */
    public static final String f1180C = "android:menu:actionviewstates";

    /* renamed from: D */
    public static final String f1181D = "android:menu:expandedactionview";

    /* renamed from: E */
    public static final int[] f1182E = {1, 4, 5, 3, 2, 0};

    /* renamed from: a */
    public final Context f1183a;

    /* renamed from: b */
    public final Resources f1184b;

    /* renamed from: c */
    public boolean f1185c;

    /* renamed from: d */
    public boolean f1186d;

    /* renamed from: e */
    public Callback f1187e;

    /* renamed from: m */
    public ContextMenu.ContextMenuInfo f1195m;

    /* renamed from: n */
    public CharSequence f1196n;

    /* renamed from: o */
    public Drawable f1197o;

    /* renamed from: p */
    public View f1198p;

    /* renamed from: x */
    public MenuItemImpl f1206x;

    /* renamed from: z */
    public boolean f1208z;

    /* renamed from: l */
    public int f1194l = 0;

    /* renamed from: q */
    public boolean f1199q = false;

    /* renamed from: r */
    public boolean f1200r = false;

    /* renamed from: s */
    public boolean f1201s = false;

    /* renamed from: t */
    public boolean f1202t = false;

    /* renamed from: u */
    public boolean f1203u = false;

    /* renamed from: v */
    public ArrayList<MenuItemImpl> f1204v = new ArrayList<>();

    /* renamed from: w */
    public CopyOnWriteArrayList<WeakReference<MenuPresenter>> f1205w = new CopyOnWriteArrayList<>();

    /* renamed from: y */
    public boolean f1207y = false;

    /* renamed from: f */
    public ArrayList<MenuItemImpl> f1188f = new ArrayList<>();

    /* renamed from: g */
    public ArrayList<MenuItemImpl> f1189g = new ArrayList<>();

    /* renamed from: h */
    public boolean f1190h = true;

    /* renamed from: i */
    public ArrayList<MenuItemImpl> f1191i = new ArrayList<>();

    /* renamed from: j */
    public ArrayList<MenuItemImpl> f1192j = new ArrayList<>();

    /* renamed from: k */
    public boolean f1193k = true;

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes3.dex */
    public interface Callback {
        boolean onMenuItemSelected(@NonNull MenuBuilder menuBuilder, @NonNull MenuItem menuItem);

        void onMenuModeChange(@NonNull MenuBuilder menuBuilder);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes3.dex */
    public interface ItemInvoker {
        boolean invokeItem(MenuItemImpl menuItemImpl);
    }

    public MenuBuilder(Context context) {
        this.f1183a = context;
        this.f1184b = context.getResources();
        m617r(true);
    }

    /* renamed from: g */
    public static int m600g(ArrayList<MenuItemImpl> arrayList, int i) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size).getOrdering() <= i) {
                return size + 1;
            }
        }
        return 0;
    }

    /* renamed from: k */
    public static int m601k(int i) {
        int i2 = ((-65536) & i) >> 16;
        if (i2 >= 0) {
            int[] iArr = f1182E;
            if (i2 < iArr.length) {
                return (i & 65535) | (iArr[i2] << 16);
            }
        }
        throw new IllegalArgumentException("order does not contain a valid category.");
    }

    /* renamed from: a */
    public final MenuItemImpl m602a(int i, int i2, int i3, int i4, CharSequence charSequence, int i5) {
        return new MenuItemImpl(this, i, i2, i3, i4, charSequence, i5);
    }

    @Override // android.view.Menu
    public MenuItem add(CharSequence charSequence) {
        return addInternal(0, 0, 0, charSequence);
    }

    @Override // android.view.Menu
    public int addIntentOptions(int i, int i2, int i3, ComponentName componentName, Intent[] intentArr, Intent intent, int i4, MenuItem[] menuItemArr) {
        int i5;
        PackageManager packageManager = this.f1183a.getPackageManager();
        List<ResolveInfo> queryIntentActivityOptions = packageManager.queryIntentActivityOptions(componentName, intentArr, intent, 0);
        int size = queryIntentActivityOptions != null ? queryIntentActivityOptions.size() : 0;
        if ((i4 & 1) == 0) {
            removeGroup(i);
        }
        for (int i6 = 0; i6 < size; i6++) {
            ResolveInfo resolveInfo = queryIntentActivityOptions.get(i6);
            int i7 = resolveInfo.specificIndex;
            Intent intent2 = new Intent(i7 < 0 ? intent : intentArr[i7]);
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            intent2.setComponent(new ComponentName(activityInfo.applicationInfo.packageName, activityInfo.name));
            MenuItem intent3 = add(i, i2, i3, resolveInfo.loadLabel(packageManager)).setIcon(resolveInfo.loadIcon(packageManager)).setIntent(intent2);
            if (menuItemArr != null && (i5 = resolveInfo.specificIndex) >= 0) {
                menuItemArr[i5] = intent3;
            }
        }
        return size;
    }

    public MenuItem addInternal(int i, int i2, int i3, CharSequence charSequence) {
        int m601k = m601k(i3);
        MenuItemImpl m602a = m602a(i, i2, i3, m601k, charSequence, this.f1194l);
        ContextMenu.ContextMenuInfo contextMenuInfo = this.f1195m;
        if (contextMenuInfo != null) {
            m602a.m625h(contextMenuInfo);
        }
        ArrayList<MenuItemImpl> arrayList = this.f1188f;
        arrayList.add(m600g(arrayList, m601k), m602a);
        onItemsChanged(true);
        return m602a;
    }

    public void addMenuPresenter(MenuPresenter menuPresenter) {
        addMenuPresenter(menuPresenter, this.f1183a);
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(CharSequence charSequence) {
        return addSubMenu(0, 0, 0, charSequence);
    }

    /* renamed from: b */
    public boolean mo603b(@NonNull MenuBuilder menuBuilder, @NonNull MenuItem menuItem) {
        Callback callback = this.f1187e;
        return callback != null && callback.onMenuItemSelected(menuBuilder, menuItem);
    }

    /* renamed from: c */
    public final void m604c(boolean z) {
        if (this.f1205w.isEmpty()) {
            return;
        }
        stopDispatchingItemsChanged();
        Iterator<WeakReference<MenuPresenter>> it2 = this.f1205w.iterator();
        while (it2.hasNext()) {
            WeakReference<MenuPresenter> next = it2.next();
            MenuPresenter menuPresenter = next.get();
            if (menuPresenter == null) {
                this.f1205w.remove(next);
            } else {
                menuPresenter.updateMenuView(z);
            }
        }
        startDispatchingItemsChanged();
    }

    public void changeMenuMode() {
        Callback callback = this.f1187e;
        if (callback != null) {
            callback.onMenuModeChange(this);
        }
    }

    @Override // android.view.Menu
    public void clear() {
        MenuItemImpl menuItemImpl = this.f1206x;
        if (menuItemImpl != null) {
            collapseItemActionView(menuItemImpl);
        }
        this.f1188f.clear();
        onItemsChanged(true);
    }

    public void clearAll() {
        this.f1199q = true;
        clear();
        clearHeader();
        this.f1205w.clear();
        this.f1199q = false;
        this.f1200r = false;
        this.f1201s = false;
        onItemsChanged(true);
    }

    public void clearHeader() {
        this.f1197o = null;
        this.f1196n = null;
        this.f1198p = null;
        onItemsChanged(false);
    }

    public final void close(boolean z) {
        if (this.f1203u) {
            return;
        }
        this.f1203u = true;
        Iterator<WeakReference<MenuPresenter>> it2 = this.f1205w.iterator();
        while (it2.hasNext()) {
            WeakReference<MenuPresenter> next = it2.next();
            MenuPresenter menuPresenter = next.get();
            if (menuPresenter == null) {
                this.f1205w.remove(next);
            } else {
                menuPresenter.onCloseMenu(this, z);
            }
        }
        this.f1203u = false;
    }

    public boolean collapseItemActionView(MenuItemImpl menuItemImpl) {
        boolean z = false;
        if (!this.f1205w.isEmpty() && this.f1206x == menuItemImpl) {
            stopDispatchingItemsChanged();
            Iterator<WeakReference<MenuPresenter>> it2 = this.f1205w.iterator();
            while (it2.hasNext()) {
                WeakReference<MenuPresenter> next = it2.next();
                MenuPresenter menuPresenter = next.get();
                if (menuPresenter == null) {
                    this.f1205w.remove(next);
                } else {
                    z = menuPresenter.collapseItemActionView(this, menuItemImpl);
                    if (z) {
                        break;
                    }
                }
            }
            startDispatchingItemsChanged();
            if (z) {
                this.f1206x = null;
            }
        }
        return z;
    }

    /* renamed from: d */
    public final void m605d(Bundle bundle) {
        Parcelable parcelable;
        SparseArray sparseParcelableArray = bundle.getSparseParcelableArray(f1179B);
        if (sparseParcelableArray == null || this.f1205w.isEmpty()) {
            return;
        }
        Iterator<WeakReference<MenuPresenter>> it2 = this.f1205w.iterator();
        while (it2.hasNext()) {
            WeakReference<MenuPresenter> next = it2.next();
            MenuPresenter menuPresenter = next.get();
            if (menuPresenter == null) {
                this.f1205w.remove(next);
            } else {
                int id = menuPresenter.getId();
                if (id > 0 && (parcelable = (Parcelable) sparseParcelableArray.get(id)) != null) {
                    menuPresenter.onRestoreInstanceState(parcelable);
                }
            }
        }
    }

    /* renamed from: e */
    public final void m606e(Bundle bundle) {
        Parcelable onSaveInstanceState;
        if (this.f1205w.isEmpty()) {
            return;
        }
        SparseArray<? extends Parcelable> sparseArray = new SparseArray<>();
        Iterator<WeakReference<MenuPresenter>> it2 = this.f1205w.iterator();
        while (it2.hasNext()) {
            WeakReference<MenuPresenter> next = it2.next();
            MenuPresenter menuPresenter = next.get();
            if (menuPresenter == null) {
                this.f1205w.remove(next);
            } else {
                int id = menuPresenter.getId();
                if (id > 0 && (onSaveInstanceState = menuPresenter.onSaveInstanceState()) != null) {
                    sparseArray.put(id, onSaveInstanceState);
                }
            }
        }
        bundle.putSparseParcelableArray(f1179B, sparseArray);
    }

    public boolean expandItemActionView(MenuItemImpl menuItemImpl) {
        boolean z = false;
        if (this.f1205w.isEmpty()) {
            return false;
        }
        stopDispatchingItemsChanged();
        Iterator<WeakReference<MenuPresenter>> it2 = this.f1205w.iterator();
        while (it2.hasNext()) {
            WeakReference<MenuPresenter> next = it2.next();
            MenuPresenter menuPresenter = next.get();
            if (menuPresenter == null) {
                this.f1205w.remove(next);
            } else {
                z = menuPresenter.expandItemActionView(this, menuItemImpl);
                if (z) {
                    break;
                }
            }
        }
        startDispatchingItemsChanged();
        if (z) {
            this.f1206x = menuItemImpl;
        }
        return z;
    }

    /* renamed from: f */
    public final boolean m607f(SubMenuBuilder subMenuBuilder, MenuPresenter menuPresenter) {
        if (this.f1205w.isEmpty()) {
            return false;
        }
        boolean onSubMenuSelected = menuPresenter != null ? menuPresenter.onSubMenuSelected(subMenuBuilder) : false;
        Iterator<WeakReference<MenuPresenter>> it2 = this.f1205w.iterator();
        while (it2.hasNext()) {
            WeakReference<MenuPresenter> next = it2.next();
            MenuPresenter menuPresenter2 = next.get();
            if (menuPresenter2 == null) {
                this.f1205w.remove(next);
            } else if (!onSubMenuSelected) {
                onSubMenuSelected = menuPresenter2.onSubMenuSelected(subMenuBuilder);
            }
        }
        return onSubMenuSelected;
    }

    public int findGroupIndex(int i) {
        return findGroupIndex(i, 0);
    }

    @Override // android.view.Menu
    public MenuItem findItem(int i) {
        MenuItem findItem;
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            MenuItemImpl menuItemImpl = this.f1188f.get(i2);
            if (menuItemImpl.getItemId() == i) {
                return menuItemImpl;
            }
            if (menuItemImpl.hasSubMenu() && (findItem = menuItemImpl.getSubMenu().findItem(i)) != null) {
                return findItem;
            }
        }
        return null;
    }

    public int findItemIndex(int i) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            if (this.f1188f.get(i2).getItemId() == i) {
                return i2;
            }
        }
        return -1;
    }

    public void flagActionItems() {
        ArrayList<MenuItemImpl> visibleItems = getVisibleItems();
        if (this.f1193k) {
            Iterator<WeakReference<MenuPresenter>> it2 = this.f1205w.iterator();
            boolean z = false;
            while (it2.hasNext()) {
                WeakReference<MenuPresenter> next = it2.next();
                MenuPresenter menuPresenter = next.get();
                if (menuPresenter == null) {
                    this.f1205w.remove(next);
                } else {
                    z |= menuPresenter.flagActionItems();
                }
            }
            if (z) {
                this.f1191i.clear();
                this.f1192j.clear();
                int size = visibleItems.size();
                for (int i = 0; i < size; i++) {
                    MenuItemImpl menuItemImpl = visibleItems.get(i);
                    if (menuItemImpl.isActionButton()) {
                        this.f1191i.add(menuItemImpl);
                    } else {
                        this.f1192j.add(menuItemImpl);
                    }
                }
            } else {
                this.f1191i.clear();
                this.f1192j.clear();
                this.f1192j.addAll(getVisibleItems());
            }
            this.f1193k = false;
        }
    }

    public ArrayList<MenuItemImpl> getActionItems() {
        flagActionItems();
        return this.f1191i;
    }

    public String getActionViewStatesKey() {
        return f1180C;
    }

    public Context getContext() {
        return this.f1183a;
    }

    public MenuItemImpl getExpandedItem() {
        return this.f1206x;
    }

    public Drawable getHeaderIcon() {
        return this.f1197o;
    }

    public CharSequence getHeaderTitle() {
        return this.f1196n;
    }

    public View getHeaderView() {
        return this.f1198p;
    }

    @Override // android.view.Menu
    public MenuItem getItem(int i) {
        return this.f1188f.get(i);
    }

    public ArrayList<MenuItemImpl> getNonActionItems() {
        flagActionItems();
        return this.f1192j;
    }

    public MenuBuilder getRootMenu() {
        return this;
    }

    @NonNull
    public ArrayList<MenuItemImpl> getVisibleItems() {
        if (!this.f1190h) {
            return this.f1189g;
        }
        this.f1189g.clear();
        int size = this.f1188f.size();
        for (int i = 0; i < size; i++) {
            MenuItemImpl menuItemImpl = this.f1188f.get(i);
            if (menuItemImpl.isVisible()) {
                this.f1189g.add(menuItemImpl);
            }
        }
        this.f1190h = false;
        this.f1193k = true;
        return this.f1189g;
    }

    /* renamed from: h */
    public MenuItemImpl m608h(int i, KeyEvent keyEvent) {
        ArrayList<MenuItemImpl> arrayList = this.f1204v;
        arrayList.clear();
        m609i(arrayList, i, keyEvent);
        if (arrayList.isEmpty()) {
            return null;
        }
        int metaState = keyEvent.getMetaState();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        keyEvent.getKeyData(keyData);
        int size = arrayList.size();
        if (size == 1) {
            return arrayList.get(0);
        }
        boolean isQwertyMode = isQwertyMode();
        for (int i2 = 0; i2 < size; i2++) {
            MenuItemImpl menuItemImpl = arrayList.get(i2);
            char alphabeticShortcut = isQwertyMode ? menuItemImpl.getAlphabeticShortcut() : menuItemImpl.getNumericShortcut();
            char[] cArr = keyData.meta;
            if ((alphabeticShortcut == cArr[0] && (metaState & 2) == 0) || ((alphabeticShortcut == cArr[2] && (metaState & 2) != 0) || (isQwertyMode && alphabeticShortcut == '\b' && i == 67))) {
                return menuItemImpl;
            }
        }
        return null;
    }

    @Override // android.view.Menu
    public boolean hasVisibleItems() {
        if (this.f1208z) {
            return true;
        }
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.f1188f.get(i).isVisible()) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: i */
    public void m609i(List<MenuItemImpl> list, int i, KeyEvent keyEvent) {
        boolean isQwertyMode = isQwertyMode();
        int modifiers = keyEvent.getModifiers();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        if (keyEvent.getKeyData(keyData) || i == 67) {
            int size = this.f1188f.size();
            for (int i2 = 0; i2 < size; i2++) {
                MenuItemImpl menuItemImpl = this.f1188f.get(i2);
                if (menuItemImpl.hasSubMenu()) {
                    ((MenuBuilder) menuItemImpl.getSubMenu()).m609i(list, i, keyEvent);
                }
                char alphabeticShortcut = isQwertyMode ? menuItemImpl.getAlphabeticShortcut() : menuItemImpl.getNumericShortcut();
                if (((modifiers & SupportMenu.SUPPORTED_MODIFIERS_MASK) == ((isQwertyMode ? menuItemImpl.getAlphabeticModifiers() : menuItemImpl.getNumericModifiers()) & SupportMenu.SUPPORTED_MODIFIERS_MASK)) && alphabeticShortcut != 0) {
                    char[] cArr = keyData.meta;
                    if ((alphabeticShortcut == cArr[0] || alphabeticShortcut == cArr[2] || (isQwertyMode && alphabeticShortcut == '\b' && i == 67)) && menuItemImpl.isEnabled()) {
                        list.add(menuItemImpl);
                    }
                }
            }
        }
    }

    public boolean isDispatchingItemsChanged() {
        return !this.f1199q;
    }

    public boolean isGroupDividerEnabled() {
        return this.f1207y;
    }

    public boolean isQwertyMode() {
        return this.f1185c;
    }

    @Override // android.view.Menu
    public boolean isShortcutKey(int i, KeyEvent keyEvent) {
        return m608h(i, keyEvent) != null;
    }

    public boolean isShortcutsVisible() {
        return this.f1186d;
    }

    /* renamed from: j */
    public boolean m610j() {
        return this.f1202t;
    }

    /* renamed from: l */
    public Resources m611l() {
        return this.f1184b;
    }

    /* renamed from: m */
    public void m612m(MenuItemImpl menuItemImpl) {
        this.f1193k = true;
        onItemsChanged(true);
    }

    /* renamed from: n */
    public void m613n(MenuItemImpl menuItemImpl) {
        this.f1190h = true;
        onItemsChanged(true);
    }

    /* renamed from: o */
    public final void m614o(int i, boolean z) {
        if (i < 0 || i >= this.f1188f.size()) {
            return;
        }
        this.f1188f.remove(i);
        if (z) {
            onItemsChanged(true);
        }
    }

    public void onItemsChanged(boolean z) {
        if (this.f1199q) {
            this.f1200r = true;
            if (z) {
                this.f1201s = true;
                return;
            }
            return;
        }
        if (z) {
            this.f1190h = true;
            this.f1193k = true;
        }
        m604c(z);
    }

    /* renamed from: p */
    public void m615p(MenuItem menuItem) {
        int groupId = menuItem.getGroupId();
        int size = this.f1188f.size();
        stopDispatchingItemsChanged();
        for (int i = 0; i < size; i++) {
            MenuItemImpl menuItemImpl = this.f1188f.get(i);
            if (menuItemImpl.getGroupId() == groupId && menuItemImpl.isExclusiveCheckable() && menuItemImpl.isCheckable()) {
                menuItemImpl.m624g(menuItemImpl == menuItem);
            }
        }
        startDispatchingItemsChanged();
    }

    @Override // android.view.Menu
    public boolean performIdentifierAction(int i, int i2) {
        return performItemAction(findItem(i), i2);
    }

    public boolean performItemAction(MenuItem menuItem, int i) {
        return performItemAction(menuItem, null, i);
    }

    @Override // android.view.Menu
    public boolean performShortcut(int i, KeyEvent keyEvent, int i2) {
        MenuItemImpl m608h = m608h(i, keyEvent);
        boolean performItemAction = m608h != null ? performItemAction(m608h, i2) : false;
        if ((i2 & 2) != 0) {
            close(true);
        }
        return performItemAction;
    }

    /* renamed from: q */
    public final void m616q(int i, CharSequence charSequence, int i2, Drawable drawable, View view) {
        Resources m611l = m611l();
        if (view != null) {
            this.f1198p = view;
            this.f1196n = null;
            this.f1197o = null;
        } else {
            if (i > 0) {
                this.f1196n = m611l.getText(i);
            } else if (charSequence != null) {
                this.f1196n = charSequence;
            }
            if (i2 > 0) {
                this.f1197o = ContextCompat.getDrawable(getContext(), i2);
            } else if (drawable != null) {
                this.f1197o = drawable;
            }
            this.f1198p = null;
        }
        onItemsChanged(false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0019, code lost:
    
        if (androidx.core.view.ViewConfigurationCompat.shouldShowMenuShortcutsWhenKeyboardPresent(android.view.ViewConfiguration.get(r2.f1183a), r2.f1183a) != false) goto L9;
     */
    /* renamed from: r */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m617r(boolean r3) {
        /*
            r2 = this;
            if (r3 == 0) goto L1c
            android.content.res.Resources r3 = r2.f1184b
            android.content.res.Configuration r3 = r3.getConfiguration()
            int r3 = r3.keyboard
            r0 = 1
            if (r3 == r0) goto L1c
            android.content.Context r3 = r2.f1183a
            android.view.ViewConfiguration r3 = android.view.ViewConfiguration.get(r3)
            android.content.Context r1 = r2.f1183a
            boolean r3 = androidx.core.view.ViewConfigurationCompat.shouldShowMenuShortcutsWhenKeyboardPresent(r3, r1)
            if (r3 == 0) goto L1c
            goto L1d
        L1c:
            r0 = 0
        L1d:
            r2.f1186d = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.view.menu.MenuBuilder.m617r(boolean):void");
    }

    @Override // android.view.Menu
    public void removeGroup(int i) {
        int findGroupIndex = findGroupIndex(i);
        if (findGroupIndex >= 0) {
            int size = this.f1188f.size() - findGroupIndex;
            int i2 = 0;
            while (true) {
                int i3 = i2 + 1;
                if (i2 >= size || this.f1188f.get(findGroupIndex).getGroupId() != i) {
                    break;
                }
                m614o(findGroupIndex, false);
                i2 = i3;
            }
            onItemsChanged(true);
        }
    }

    @Override // android.view.Menu
    public void removeItem(int i) {
        m614o(findItemIndex(i), true);
    }

    public void removeItemAt(int i) {
        m614o(i, true);
    }

    public void removeMenuPresenter(MenuPresenter menuPresenter) {
        Iterator<WeakReference<MenuPresenter>> it2 = this.f1205w.iterator();
        while (it2.hasNext()) {
            WeakReference<MenuPresenter> next = it2.next();
            MenuPresenter menuPresenter2 = next.get();
            if (menuPresenter2 == null || menuPresenter2 == menuPresenter) {
                this.f1205w.remove(next);
            }
        }
    }

    public void restoreActionViewStates(Bundle bundle) {
        MenuItem findItem;
        if (bundle == null) {
            return;
        }
        SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray(getActionViewStatesKey());
        int size = size();
        for (int i = 0; i < size; i++) {
            MenuItem item = getItem(i);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                actionView.restoreHierarchyState(sparseParcelableArray);
            }
            if (item.hasSubMenu()) {
                ((SubMenuBuilder) item.getSubMenu()).restoreActionViewStates(bundle);
            }
        }
        int i2 = bundle.getInt(f1181D);
        if (i2 <= 0 || (findItem = findItem(i2)) == null) {
            return;
        }
        findItem.expandActionView();
    }

    public void restorePresenterStates(Bundle bundle) {
        m605d(bundle);
    }

    public void saveActionViewStates(Bundle bundle) {
        int size = size();
        SparseArray<? extends Parcelable> sparseArray = null;
        for (int i = 0; i < size; i++) {
            MenuItem item = getItem(i);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                if (sparseArray == null) {
                    sparseArray = new SparseArray<>();
                }
                actionView.saveHierarchyState(sparseArray);
                if (item.isActionViewExpanded()) {
                    bundle.putInt(f1181D, item.getItemId());
                }
            }
            if (item.hasSubMenu()) {
                ((SubMenuBuilder) item.getSubMenu()).saveActionViewStates(bundle);
            }
        }
        if (sparseArray != null) {
            bundle.putSparseParcelableArray(getActionViewStatesKey(), sparseArray);
        }
    }

    public void savePresenterStates(Bundle bundle) {
        m606e(bundle);
    }

    public void setCallback(Callback callback) {
        this.f1187e = callback;
    }

    public void setCurrentMenuInfo(ContextMenu.ContextMenuInfo contextMenuInfo) {
        this.f1195m = contextMenuInfo;
    }

    public MenuBuilder setDefaultShowAsAction(int i) {
        this.f1194l = i;
        return this;
    }

    @Override // android.view.Menu
    public void setGroupCheckable(int i, boolean z, boolean z2) {
        int size = this.f1188f.size();
        for (int i2 = 0; i2 < size; i2++) {
            MenuItemImpl menuItemImpl = this.f1188f.get(i2);
            if (menuItemImpl.getGroupId() == i) {
                menuItemImpl.setExclusiveCheckable(z2);
                menuItemImpl.setCheckable(z);
            }
        }
    }

    @Override // androidx.core.internal.view.SupportMenu, android.view.Menu
    public void setGroupDividerEnabled(boolean z) {
        this.f1207y = z;
    }

    @Override // android.view.Menu
    public void setGroupEnabled(int i, boolean z) {
        int size = this.f1188f.size();
        for (int i2 = 0; i2 < size; i2++) {
            MenuItemImpl menuItemImpl = this.f1188f.get(i2);
            if (menuItemImpl.getGroupId() == i) {
                menuItemImpl.setEnabled(z);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupVisible(int i, boolean z) {
        int size = this.f1188f.size();
        boolean z2 = false;
        for (int i2 = 0; i2 < size; i2++) {
            MenuItemImpl menuItemImpl = this.f1188f.get(i2);
            if (menuItemImpl.getGroupId() == i && menuItemImpl.m626i(z)) {
                z2 = true;
            }
        }
        if (z2) {
            onItemsChanged(true);
        }
    }

    public MenuBuilder setHeaderIconInt(Drawable drawable) {
        m616q(0, null, 0, drawable, null);
        return this;
    }

    public MenuBuilder setHeaderTitleInt(CharSequence charSequence) {
        m616q(0, charSequence, 0, null, null);
        return this;
    }

    public MenuBuilder setHeaderViewInt(View view) {
        m616q(0, null, 0, null, view);
        return this;
    }

    public void setOptionalIconsVisible(boolean z) {
        this.f1202t = z;
    }

    public void setOverrideVisibleItems(boolean z) {
        this.f1208z = z;
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z) {
        this.f1185c = z;
        onItemsChanged(false);
    }

    public void setShortcutsVisible(boolean z) {
        if (this.f1186d == z) {
            return;
        }
        m617r(z);
        onItemsChanged(false);
    }

    @Override // android.view.Menu
    public int size() {
        return this.f1188f.size();
    }

    public void startDispatchingItemsChanged() {
        this.f1199q = false;
        if (this.f1200r) {
            this.f1200r = false;
            onItemsChanged(this.f1201s);
        }
    }

    public void stopDispatchingItemsChanged() {
        if (this.f1199q) {
            return;
        }
        this.f1199q = true;
        this.f1200r = false;
        this.f1201s = false;
    }

    @Override // android.view.Menu
    public MenuItem add(int i) {
        return addInternal(0, 0, 0, this.f1184b.getString(i));
    }

    public void addMenuPresenter(MenuPresenter menuPresenter, Context context) {
        this.f1205w.add(new WeakReference<>(menuPresenter));
        menuPresenter.initForMenu(context, this);
        this.f1193k = true;
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i) {
        return addSubMenu(0, 0, 0, this.f1184b.getString(i));
    }

    public int findGroupIndex(int i, int i2) {
        int size = size();
        if (i2 < 0) {
            i2 = 0;
        }
        while (i2 < size) {
            if (this.f1188f.get(i2).getGroupId() == i) {
                return i2;
            }
            i2++;
        }
        return -1;
    }

    public boolean performItemAction(MenuItem menuItem, MenuPresenter menuPresenter, int i) {
        MenuItemImpl menuItemImpl = (MenuItemImpl) menuItem;
        if (menuItemImpl == null || !menuItemImpl.isEnabled()) {
            return false;
        }
        boolean invoke = menuItemImpl.invoke();
        ActionProvider supportActionProvider = menuItemImpl.getSupportActionProvider();
        boolean z = supportActionProvider != null && supportActionProvider.hasSubMenu();
        if (menuItemImpl.hasCollapsibleActionView()) {
            invoke |= menuItemImpl.expandActionView();
            if (invoke) {
                close(true);
            }
        } else if (menuItemImpl.hasSubMenu() || z) {
            if ((i & 4) == 0) {
                close(false);
            }
            if (!menuItemImpl.hasSubMenu()) {
                menuItemImpl.setSubMenu(new SubMenuBuilder(getContext(), this, menuItemImpl));
            }
            SubMenuBuilder subMenuBuilder = (SubMenuBuilder) menuItemImpl.getSubMenu();
            if (z) {
                supportActionProvider.onPrepareSubMenu(subMenuBuilder);
            }
            invoke |= m607f(subMenuBuilder, menuPresenter);
            if (!invoke) {
                close(true);
            }
        } else if ((i & 1) == 0) {
            close(true);
        }
        return invoke;
    }

    public MenuBuilder setHeaderIconInt(int i) {
        m616q(0, null, i, null, null);
        return this;
    }

    public MenuBuilder setHeaderTitleInt(int i) {
        m616q(i, null, 0, null, null);
        return this;
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, CharSequence charSequence) {
        return addInternal(i, i2, i3, charSequence);
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        MenuItemImpl menuItemImpl = (MenuItemImpl) addInternal(i, i2, i3, charSequence);
        SubMenuBuilder subMenuBuilder = new SubMenuBuilder(this.f1183a, this, menuItemImpl);
        menuItemImpl.setSubMenu(subMenuBuilder);
        return subMenuBuilder;
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, int i4) {
        return addInternal(i, i2, i3, this.f1184b.getString(i4));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, int i4) {
        return addSubMenu(i, i2, i3, this.f1184b.getString(i4));
    }

    @Override // android.view.Menu
    public void close() {
        close(true);
    }
}
