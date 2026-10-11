package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.internal.view.SupportMenuItem;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes3.dex */
public class ActionMenuItem implements SupportMenuItem {

    /* renamed from: u */
    public static final int f1055u = 1;

    /* renamed from: v */
    public static final int f1056v = 2;

    /* renamed from: w */
    public static final int f1057w = 4;

    /* renamed from: x */
    public static final int f1058x = 8;

    /* renamed from: y */
    public static final int f1059y = 16;

    /* renamed from: a */
    public final int f1060a;

    /* renamed from: b */
    public final int f1061b;

    /* renamed from: c */
    public final int f1062c;

    /* renamed from: d */
    public CharSequence f1063d;

    /* renamed from: e */
    public CharSequence f1064e;

    /* renamed from: f */
    public Intent f1065f;

    /* renamed from: g */
    public char f1066g;

    /* renamed from: i */
    public char f1068i;

    /* renamed from: k */
    public Drawable f1070k;

    /* renamed from: l */
    public Context f1071l;

    /* renamed from: m */
    public MenuItem.OnMenuItemClickListener f1072m;

    /* renamed from: n */
    public CharSequence f1073n;

    /* renamed from: o */
    public CharSequence f1074o;

    /* renamed from: h */
    public int f1067h = 4096;

    /* renamed from: j */
    public int f1069j = 4096;

    /* renamed from: p */
    public ColorStateList f1075p = null;

    /* renamed from: q */
    public PorterDuff.Mode f1076q = null;

    /* renamed from: r */
    public boolean f1077r = false;

    /* renamed from: s */
    public boolean f1078s = false;

    /* renamed from: t */
    public int f1079t = 16;

    public ActionMenuItem(Context context, int i, int i2, int i3, int i4, CharSequence charSequence) {
        this.f1071l = context;
        this.f1060a = i2;
        this.f1061b = i;
        this.f1062c = i4;
        this.f1063d = charSequence;
    }

    /* renamed from: a */
    public final void m571a() {
        Drawable drawable = this.f1070k;
        if (drawable != null) {
            if (this.f1077r || this.f1078s) {
                Drawable wrap = DrawableCompat.wrap(drawable);
                this.f1070k = wrap;
                Drawable mutate = wrap.mutate();
                this.f1070k = mutate;
                if (this.f1077r) {
                    DrawableCompat.setTintList(mutate, this.f1075p);
                }
                if (this.f1078s) {
                    DrawableCompat.setTintMode(this.f1070k, this.f1076q);
                }
            }
        }
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public boolean collapseActionView() {
        return false;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public boolean expandActionView() {
        return false;
    }

    @Override // android.view.MenuItem
    public ActionProvider getActionProvider() {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public View getActionView() {
        return null;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public int getAlphabeticModifiers() {
        return this.f1069j;
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.f1068i;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public CharSequence getContentDescription() {
        return this.f1073n;
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.f1061b;
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        return this.f1070k;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public ColorStateList getIconTintList() {
        return this.f1075p;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public PorterDuff.Mode getIconTintMode() {
        return this.f1076q;
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return this.f1065f;
    }

    @Override // android.view.MenuItem
    public int getItemId() {
        return this.f1060a;
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public int getNumericModifiers() {
        return this.f1067h;
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.f1066g;
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.f1062c;
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return null;
    }

    @Override // androidx.core.internal.view.SupportMenuItem
    public androidx.core.view.ActionProvider getSupportActionProvider() {
        return null;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitle() {
        return this.f1063d;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f1064e;
        return charSequence != null ? charSequence : this.f1063d;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public CharSequence getTooltipText() {
        return this.f1074o;
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return false;
    }

    public boolean invoke() {
        MenuItem.OnMenuItemClickListener onMenuItemClickListener = this.f1072m;
        if (onMenuItemClickListener != null && onMenuItemClickListener.onMenuItemClick(this)) {
            return true;
        }
        Intent intent = this.f1065f;
        if (intent == null) {
            return false;
        }
        this.f1071l.startActivity(intent);
        return true;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public boolean isActionViewExpanded() {
        return false;
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        return (this.f1079t & 1) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return (this.f1079t & 2) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return (this.f1079t & 16) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        return (this.f1079t & 8) == 0;
    }

    @Override // androidx.core.internal.view.SupportMenuItem
    public boolean requiresActionButton() {
        return true;
    }

    @Override // androidx.core.internal.view.SupportMenuItem
    public boolean requiresOverflow() {
        return false;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c) {
        this.f1068i = Character.toLowerCase(c);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z) {
        this.f1079t = (z ? 1 : 0) | (this.f1079t & (-2));
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z) {
        this.f1079t = (z ? 2 : 0) | (this.f1079t & (-3));
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z) {
        this.f1079t = (z ? 16 : 0) | (this.f1079t & (-17));
        return this;
    }

    public ActionMenuItem setExclusiveCheckable(boolean z) {
        this.f1079t = (z ? 4 : 0) | (this.f1079t & (-5));
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.f1070k = drawable;
        m571a();
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    @NonNull
    public MenuItem setIconTintList(@Nullable ColorStateList colorStateList) {
        this.f1075p = colorStateList;
        this.f1077r = true;
        m571a();
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    @NonNull
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f1076q = mode;
        this.f1078s = true;
        m571a();
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        this.f1065f = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c) {
        this.f1066g = c;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f1072m = onMenuItemClickListener;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c, char c2) {
        this.f1066g = c;
        this.f1068i = Character.toLowerCase(c2);
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    public void setShowAsAction(int i) {
    }

    @Override // androidx.core.internal.view.SupportMenuItem
    @NonNull
    public SupportMenuItem setSupportActionProvider(androidx.core.view.ActionProvider actionProvider) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.f1063d = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f1064e = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z) {
        this.f1079t = (this.f1079t & 8) | (z ? 0 : 8);
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    @NonNull
    public MenuItem setAlphabeticShortcut(char c, int i) {
        this.f1068i = Character.toLowerCase(c);
        this.f1069j = KeyEvent.normalizeMetaState(i);
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    @NonNull
    public SupportMenuItem setContentDescription(CharSequence charSequence) {
        this.f1073n = charSequence;
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    @NonNull
    public MenuItem setNumericShortcut(char c, int i) {
        this.f1066g = c;
        this.f1067h = KeyEvent.normalizeMetaState(i);
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    @NonNull
    public SupportMenuItem setShowAsActionFlags(int i) {
        setShowAsAction(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i) {
        this.f1063d = this.f1071l.getResources().getString(i);
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    @NonNull
    public SupportMenuItem setTooltipText(CharSequence charSequence) {
        this.f1074o = charSequence;
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    @NonNull
    public SupportMenuItem setActionView(View view) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i) {
        this.f1070k = ContextCompat.getDrawable(this.f1071l, i);
        m571a();
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    @NonNull
    public MenuItem setShortcut(char c, char c2, int i, int i2) {
        this.f1066g = c;
        this.f1067h = KeyEvent.normalizeMetaState(i);
        this.f1068i = Character.toLowerCase(c2);
        this.f1069j = KeyEvent.normalizeMetaState(i2);
        return this;
    }

    @Override // androidx.core.internal.view.SupportMenuItem, android.view.MenuItem
    @NonNull
    public SupportMenuItem setActionView(int i) {
        throw new UnsupportedOperationException();
    }
}
