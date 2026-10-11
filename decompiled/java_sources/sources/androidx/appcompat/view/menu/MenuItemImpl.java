package androidx.appcompat.view.menu;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.C0118R;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.view.menu.MenuView;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.internal.view.SupportMenuItem;
import androidx.core.view.ActionProvider;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes3.dex */
public final class MenuItemImpl implements SupportMenuItem {

    /* renamed from: F */
    public static final String f1209F = "MenuItemImpl";

    /* renamed from: G */
    public static final int f1210G = 3;

    /* renamed from: H */
    public static final int f1211H = 1;

    /* renamed from: I */
    public static final int f1212I = 2;

    /* renamed from: J */
    public static final int f1213J = 4;

    /* renamed from: K */
    public static final int f1214K = 8;

    /* renamed from: L */
    public static final int f1215L = 16;

    /* renamed from: M */
    public static final int f1216M = 32;

    /* renamed from: N */
    public static final int f1217N = 0;

    /* renamed from: A */
    public View f1218A;

    /* renamed from: B */
    public ActionProvider f1219B;

    /* renamed from: C */
    public MenuItem.OnActionExpandListener f1220C;

    /* renamed from: E */
    public ContextMenu.ContextMenuInfo f1222E;

    /* renamed from: a */
    public final int f1223a;

    /* renamed from: b */
    public final int f1224b;

    /* renamed from: c */
    public final int f1225c;

    /* renamed from: d */
    public final int f1226d;

    /* renamed from: e */
    public CharSequence f1227e;

    /* renamed from: f */
    public CharSequence f1228f;

    /* renamed from: g */
    public Intent f1229g;

    /* renamed from: h */
    public char f1230h;

    /* renamed from: j */
    public char f1232j;

    /* renamed from: l */
    public Drawable f1234l;

    /* renamed from: n */
    public MenuBuilder f1236n;

    /* renamed from: o */
    public SubMenuBuilder f1237o;

    /* renamed from: p */
    public Runnable f1238p;

    /* renamed from: q */
    public MenuItem.OnMenuItemClickListener f1239q;

    /* renamed from: r */
    public CharSequence f1240r;

    /* renamed from: s */
    public CharSequence f1241s;

    /* renamed from: z */
    public int f1248z;

    /* renamed from: i */
    public int f1231i = 4096;

    /* renamed from: k */
    public int f1233k = 4096;

    /* renamed from: m */
    public int f1235m = 0;

    /* renamed from: t */
    public ColorStateList f1242t = null;

    /* renamed from: u */
    public PorterDuff.Mode f1243u = null;

    /* renamed from: v */
    public boolean f1244v = false;

    /* renamed from: w */
    public boolean f1245w = false;

    /* renamed from: x */
    public boolean f1246x = false;

    /* renamed from: y */
    public int f1247y = 16;

    /* renamed from: D */
    public boolean f1221D = false;

    /* renamed from: androidx.appcompat.view.menu.MenuItemImpl$a */
    /* loaded from: classes3.dex */
    public class C0194a implements ActionProvider.VisibilityListener {
        public C0194a() {
        }

        @Override // androidx.core.view.ActionProvider.VisibilityListener
        public void onActionProviderVisibilityChanged(boolean z) {
            MenuItemImpl menuItemImpl = MenuItemImpl.this;
            menuItemImpl.f1236n.m613n(menuItemImpl);
        }
    }

    public MenuItemImpl(MenuBuilder menuBuilder, int i, int i2, int i3, int i4, CharSequence charSequence, int i5) {
        this.f1236n = menuBuilder;
        this.f1223a = i2;
        this.f1224b = i;
        this.f1225c = i3;
        this.f1226d = i4;
        this.f1227e = charSequence;
        this.f1248z = i5;
    }

    /* renamed from: a */
    public static void m618a(StringBuilder sb, int i, int i2, String str) {
        if ((i & i2) == i2) {
            sb.append(str);
        }
    }

    public void actionFormatChanged() {
        this.f1236n.m612m(this);
    }

    /* renamed from: b */
    public final Drawable m619b(Drawable drawable) {
        if (drawable != null && this.f1246x && (this.f1244v || this.f1245w)) {
            drawable = DrawableCompat.wrap(drawable).mutate();
            if (this.f1244v) {
                DrawableCompat.setTintList(drawable, this.f1242t);
            }
            if (this.f1245w) {
                DrawableCompat.setTintMode(drawable, this.f1243u);
            }
            this.f1246x = false;
        }
        return drawable;
    }

    /* renamed from: c */
    public Runnable m620c() {
        return this.f1238p;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public boolean collapseActionView() {
        if ((this.f1248z & 8) == 0) {
            return false;
        }
        if (this.f1218A == null) {
            return true;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.f1220C;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionCollapse(this)) {
            return this.f1236n.collapseItemActionView(this);
        }
        return false;
    }

    /* renamed from: d */
    public char m621d() {
        return this.f1236n.isQwertyMode() ? this.f1232j : this.f1230h;
    }

    /* renamed from: e */
    public String m622e() {
        char m621d = m621d();
        if (m621d == 0) {
            return "";
        }
        Resources resources = this.f1236n.getContext().getResources();
        StringBuilder sb = new StringBuilder();
        if (ViewConfiguration.get(this.f1236n.getContext()).hasPermanentMenuKey()) {
            sb.append(resources.getString(C0118R.string.abc_prepend_shortcut_label));
        }
        int i = this.f1236n.isQwertyMode() ? this.f1233k : this.f1231i;
        m618a(sb, i, 65536, resources.getString(C0118R.string.abc_menu_meta_shortcut_label));
        m618a(sb, i, 4096, resources.getString(C0118R.string.abc_menu_ctrl_shortcut_label));
        m618a(sb, i, 2, resources.getString(C0118R.string.abc_menu_alt_shortcut_label));
        m618a(sb, i, 1, resources.getString(C0118R.string.abc_menu_shift_shortcut_label));
        m618a(sb, i, 4, resources.getString(C0118R.string.abc_menu_sym_shortcut_label));
        m618a(sb, i, 8, resources.getString(C0118R.string.abc_menu_function_shortcut_label));
        if (m621d == '\b') {
            sb.append(resources.getString(C0118R.string.abc_menu_delete_shortcut_label));
        } else if (m621d == '\n') {
            sb.append(resources.getString(C0118R.string.abc_menu_enter_shortcut_label));
        } else if (m621d != ' ') {
            sb.append(m621d);
        } else {
            sb.append(resources.getString(C0118R.string.abc_menu_space_shortcut_label));
        }
        return sb.toString();
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public boolean expandActionView() {
        if (!hasCollapsibleActionView()) {
            return false;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.f1220C;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionExpand(this)) {
            return this.f1236n.expandItemActionView(this);
        }
        return false;
    }

    /* renamed from: f */
    public CharSequence m623f(MenuView.ItemView itemView) {
        return (itemView == null || !itemView.prefersCondensedTitle()) ? getTitle() : getTitleCondensed();
    }

    /* renamed from: g */
    public void m624g(boolean z) {
        int i = this.f1247y;
        int i2 = (z ? 2 : 0) | (i & (-3));
        this.f1247y = i2;
        if (i != i2) {
            this.f1236n.onItemsChanged(false);
        }
    }

    @Override // android.view.MenuItem
    public android.view.ActionProvider getActionProvider() {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.getActionProvider()");
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public View getActionView() {
        View view = this.f1218A;
        if (view != null) {
            return view;
        }
        ActionProvider actionProvider = this.f1219B;
        if (actionProvider == null) {
            return null;
        }
        View onCreateActionView = actionProvider.onCreateActionView(this);
        this.f1218A = onCreateActionView;
        return onCreateActionView;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public int getAlphabeticModifiers() {
        return this.f1233k;
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.f1232j;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public CharSequence getContentDescription() {
        return this.f1240r;
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.f1224b;
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        Drawable drawable = this.f1234l;
        if (drawable != null) {
            return m619b(drawable);
        }
        if (this.f1235m == 0) {
            return null;
        }
        Drawable drawable2 = AppCompatResources.getDrawable(this.f1236n.getContext(), this.f1235m);
        this.f1235m = 0;
        this.f1234l = drawable2;
        return m619b(drawable2);
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public ColorStateList getIconTintList() {
        return this.f1242t;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public PorterDuff.Mode getIconTintMode() {
        return this.f1243u;
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return this.f1229g;
    }

    @Override // android.view.MenuItem
    @ViewDebug.CapturedViewProperty
    public int getItemId() {
        return this.f1223a;
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return this.f1222E;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public int getNumericModifiers() {
        return this.f1231i;
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.f1230h;
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.f1225c;
    }

    public int getOrdering() {
        return this.f1226d;
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return this.f1237o;
    }

    @Override // androidx.core.internal.view.SupportMenuItem
    public ActionProvider getSupportActionProvider() {
        return this.f1219B;
    }

    @Override // android.view.MenuItem
    @ViewDebug.CapturedViewProperty
    public CharSequence getTitle() {
        return this.f1227e;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f1228f;
        return charSequence != null ? charSequence : this.f1227e;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public CharSequence getTooltipText() {
        return this.f1241s;
    }

    /* renamed from: h */
    public void m625h(ContextMenu.ContextMenuInfo contextMenuInfo) {
        this.f1222E = contextMenuInfo;
    }

    public boolean hasCollapsibleActionView() {
        ActionProvider actionProvider;
        if ((this.f1248z & 8) == 0) {
            return false;
        }
        if (this.f1218A == null && (actionProvider = this.f1219B) != null) {
            this.f1218A = actionProvider.onCreateActionView(this);
        }
        return this.f1218A != null;
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return this.f1237o != null;
    }

    /* renamed from: i */
    public boolean m626i(boolean z) {
        int i = this.f1247y;
        int i2 = (z ? 0 : 8) | (i & (-9));
        this.f1247y = i2;
        return i != i2;
    }

    public boolean invoke() {
        MenuItem.OnMenuItemClickListener onMenuItemClickListener = this.f1239q;
        if (onMenuItemClickListener != null && onMenuItemClickListener.onMenuItemClick(this)) {
            return true;
        }
        MenuBuilder menuBuilder = this.f1236n;
        if (menuBuilder.mo603b(menuBuilder, this)) {
            return true;
        }
        Runnable runnable = this.f1238p;
        if (runnable != null) {
            runnable.run();
            return true;
        }
        if (this.f1229g != null) {
            try {
                this.f1236n.getContext().startActivity(this.f1229g);
                return true;
            } catch (ActivityNotFoundException e) {
                Log.e(f1209F, "Can't find activity to handle intent; ignoring", e);
            }
        }
        ActionProvider actionProvider = this.f1219B;
        return actionProvider != null && actionProvider.onPerformDefaultAction();
    }

    public boolean isActionButton() {
        return (this.f1247y & 32) == 32;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public boolean isActionViewExpanded() {
        return this.f1221D;
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        return (this.f1247y & 1) == 1;
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return (this.f1247y & 2) == 2;
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return (this.f1247y & 16) != 0;
    }

    public boolean isExclusiveCheckable() {
        return (this.f1247y & 4) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        ActionProvider actionProvider = this.f1219B;
        return (actionProvider == null || !actionProvider.overridesItemVisibility()) ? (this.f1247y & 8) == 0 : (this.f1247y & 8) == 0 && this.f1219B.isVisible();
    }

    /* renamed from: j */
    public boolean m627j() {
        return this.f1236n.isShortcutsVisible() && m621d() != 0;
    }

    public boolean requestsActionButton() {
        return (this.f1248z & 1) == 1;
    }

    @Override // androidx.core.internal.view.SupportMenuItem
    public boolean requiresActionButton() {
        return (this.f1248z & 2) == 2;
    }

    @Override // androidx.core.internal.view.SupportMenuItem
    public boolean requiresOverflow() {
        return (requiresActionButton() || requestsActionButton()) ? false : true;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(android.view.ActionProvider actionProvider) {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.setActionProvider()");
    }

    public void setActionViewExpanded(boolean z) {
        this.f1221D = z;
        this.f1236n.onItemsChanged(false);
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c) {
        if (this.f1232j == c) {
            return this;
        }
        this.f1232j = Character.toLowerCase(c);
        this.f1236n.onItemsChanged(false);
        return this;
    }

    public MenuItem setCallback(Runnable runnable) {
        this.f1238p = runnable;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z) {
        int i = this.f1247y;
        int i2 = (z ? 1 : 0) | (i & (-2));
        this.f1247y = i2;
        if (i != i2) {
            this.f1236n.onItemsChanged(false);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z) {
        if ((this.f1247y & 4) != 0) {
            this.f1236n.m615p(this);
        } else {
            m624g(z);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z) {
        if (z) {
            this.f1247y |= 16;
        } else {
            this.f1247y &= -17;
        }
        this.f1236n.onItemsChanged(false);
        return this;
    }

    public void setExclusiveCheckable(boolean z) {
        this.f1247y = (z ? 4 : 0) | (this.f1247y & (-5));
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.f1235m = 0;
        this.f1234l = drawable;
        this.f1246x = true;
        this.f1236n.onItemsChanged(false);
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    @NonNull
    public MenuItem setIconTintList(@Nullable ColorStateList colorStateList) {
        this.f1242t = colorStateList;
        this.f1244v = true;
        this.f1246x = true;
        this.f1236n.onItemsChanged(false);
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    @NonNull
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f1243u = mode;
        this.f1245w = true;
        this.f1246x = true;
        this.f1236n.onItemsChanged(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        this.f1229g = intent;
        return this;
    }

    public void setIsActionButton(boolean z) {
        if (z) {
            this.f1247y |= 32;
        } else {
            this.f1247y &= -33;
        }
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c) {
        if (this.f1230h == c) {
            return this;
        }
        this.f1230h = c;
        this.f1236n.onItemsChanged(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.f1220C = onActionExpandListener;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f1239q = onMenuItemClickListener;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c, char c2) {
        this.f1230h = c;
        this.f1232j = Character.toLowerCase(c2);
        this.f1236n.onItemsChanged(false);
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public void setShowAsAction(int i) {
        int i2 = i & 3;
        if (i2 != 0 && i2 != 1 && i2 != 2) {
            throw new IllegalArgumentException("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");
        }
        this.f1248z = i;
        this.f1236n.m612m(this);
    }

    public void setSubMenu(SubMenuBuilder subMenuBuilder) {
        this.f1237o = subMenuBuilder;
        subMenuBuilder.setHeaderTitle(getTitle());
    }

    @Override // androidx.core.internal.view.SupportMenuItem
    @NonNull
    public SupportMenuItem setSupportActionProvider(ActionProvider actionProvider) {
        ActionProvider actionProvider2 = this.f1219B;
        if (actionProvider2 != null) {
            actionProvider2.reset();
        }
        this.f1218A = null;
        this.f1219B = actionProvider;
        this.f1236n.onItemsChanged(true);
        ActionProvider actionProvider3 = this.f1219B;
        if (actionProvider3 != null) {
            actionProvider3.setVisibilityListener(new C0194a());
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.f1227e = charSequence;
        this.f1236n.onItemsChanged(false);
        SubMenuBuilder subMenuBuilder = this.f1237o;
        if (subMenuBuilder != null) {
            subMenuBuilder.setHeaderTitle(charSequence);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f1228f = charSequence;
        this.f1236n.onItemsChanged(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z) {
        if (m626i(z)) {
            this.f1236n.m613n(this);
        }
        return this;
    }

    public boolean shouldShowIcon() {
        return this.f1236n.m610j();
    }

    public boolean showsTextAsAction() {
        return (this.f1248z & 4) == 4;
    }

    public String toString() {
        CharSequence charSequence = this.f1227e;
        if (charSequence != null) {
            return charSequence.toString();
        }
        return null;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    @NonNull
    public SupportMenuItem setContentDescription(CharSequence charSequence) {
        this.f1240r = charSequence;
        this.f1236n.onItemsChanged(false);
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    @NonNull
    public SupportMenuItem setShowAsActionFlags(int i) {
        setShowAsAction(i);
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    @NonNull
    public SupportMenuItem setTooltipText(CharSequence charSequence) {
        this.f1241s = charSequence;
        this.f1236n.onItemsChanged(false);
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    @NonNull
    public SupportMenuItem setActionView(View view) {
        int i;
        this.f1218A = view;
        this.f1219B = null;
        if (view != null && view.getId() == -1 && (i = this.f1223a) > 0) {
            view.setId(i);
        }
        this.f1236n.m612m(this);
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    @NonNull
    public MenuItem setAlphabeticShortcut(char c, int i) {
        if (this.f1232j == c && this.f1233k == i) {
            return this;
        }
        this.f1232j = Character.toLowerCase(c);
        this.f1233k = KeyEvent.normalizeMetaState(i);
        this.f1236n.onItemsChanged(false);
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    @NonNull
    public MenuItem setNumericShortcut(char c, int i) {
        if (this.f1230h == c && this.f1231i == i) {
            return this;
        }
        this.f1230h = c;
        this.f1231i = KeyEvent.normalizeMetaState(i);
        this.f1236n.onItemsChanged(false);
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    @NonNull
    public MenuItem setShortcut(char c, char c2, int i, int i2) {
        this.f1230h = c;
        this.f1231i = KeyEvent.normalizeMetaState(i);
        this.f1232j = Character.toLowerCase(c2);
        this.f1233k = KeyEvent.normalizeMetaState(i2);
        this.f1236n.onItemsChanged(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i) {
        this.f1234l = null;
        this.f1235m = i;
        this.f1246x = true;
        this.f1236n.onItemsChanged(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i) {
        return setTitle(this.f1236n.getContext().getString(i));
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    @NonNull
    public SupportMenuItem setActionView(int i) {
        Context context = this.f1236n.getContext();
        setActionView(LayoutInflater.from(context).inflate(i, (ViewGroup) new LinearLayout(context), false));
        return this;
    }
}
