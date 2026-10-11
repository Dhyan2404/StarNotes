package androidx.core.view;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.internal.view.SupportMenuItem;

/* loaded from: classes3.dex */
public final class MenuItemCompat {

    @Deprecated
    public static final int SHOW_AS_ACTION_ALWAYS = 2;

    @Deprecated
    public static final int SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW = 8;

    @Deprecated
    public static final int SHOW_AS_ACTION_IF_ROOM = 1;

    @Deprecated
    public static final int SHOW_AS_ACTION_NEVER = 0;

    @Deprecated
    public static final int SHOW_AS_ACTION_WITH_TEXT = 4;

    /* renamed from: a */
    public static final String f5844a = "MenuItemCompat";

    @Deprecated
    /* loaded from: classes3.dex */
    public interface OnActionExpandListener {
        boolean onMenuItemActionCollapse(MenuItem menuItem);

        boolean onMenuItemActionExpand(MenuItem menuItem);
    }

    /* renamed from: androidx.core.view.MenuItemCompat$a */
    /* loaded from: classes3.dex */
    public class MenuItemOnActionExpandListenerC0773a implements MenuItem.OnActionExpandListener {

        /* renamed from: e */
        public final /* synthetic */ OnActionExpandListener f5845e;

        public MenuItemOnActionExpandListenerC0773a(OnActionExpandListener onActionExpandListener) {
            this.f5845e = onActionExpandListener;
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public boolean onMenuItemActionCollapse(MenuItem menuItem) {
            return this.f5845e.onMenuItemActionCollapse(menuItem);
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public boolean onMenuItemActionExpand(MenuItem menuItem) {
            return this.f5845e.onMenuItemActionExpand(menuItem);
        }
    }

    @RequiresApi(26)
    /* renamed from: androidx.core.view.MenuItemCompat$b */
    /* loaded from: classes3.dex */
    public static class C0774b {
        @DoNotInline
        /* renamed from: a */
        public static int m3338a(MenuItem menuItem) {
            return menuItem.getAlphabeticModifiers();
        }

        @DoNotInline
        /* renamed from: b */
        public static CharSequence m3339b(MenuItem menuItem) {
            return menuItem.getContentDescription();
        }

        @DoNotInline
        /* renamed from: c */
        public static ColorStateList m3340c(MenuItem menuItem) {
            return menuItem.getIconTintList();
        }

        @DoNotInline
        /* renamed from: d */
        public static PorterDuff.Mode m3341d(MenuItem menuItem) {
            return menuItem.getIconTintMode();
        }

        @DoNotInline
        /* renamed from: e */
        public static int m3342e(MenuItem menuItem) {
            return menuItem.getNumericModifiers();
        }

        @DoNotInline
        /* renamed from: f */
        public static CharSequence m3343f(MenuItem menuItem) {
            return menuItem.getTooltipText();
        }

        @DoNotInline
        /* renamed from: g */
        public static MenuItem m3344g(MenuItem menuItem, char c, int i) {
            return menuItem.setAlphabeticShortcut(c, i);
        }

        @DoNotInline
        /* renamed from: h */
        public static MenuItem m3345h(MenuItem menuItem, CharSequence charSequence) {
            return menuItem.setContentDescription(charSequence);
        }

        @DoNotInline
        /* renamed from: i */
        public static MenuItem m3346i(MenuItem menuItem, ColorStateList colorStateList) {
            return menuItem.setIconTintList(colorStateList);
        }

        @DoNotInline
        /* renamed from: j */
        public static MenuItem m3347j(MenuItem menuItem, PorterDuff.Mode mode) {
            return menuItem.setIconTintMode(mode);
        }

        @DoNotInline
        /* renamed from: k */
        public static MenuItem m3348k(MenuItem menuItem, char c, int i) {
            return menuItem.setNumericShortcut(c, i);
        }

        @DoNotInline
        /* renamed from: l */
        public static MenuItem m3349l(MenuItem menuItem, char c, char c2, int i, int i2) {
            return menuItem.setShortcut(c, c2, i, i2);
        }

        @DoNotInline
        /* renamed from: m */
        public static MenuItem m3350m(MenuItem menuItem, CharSequence charSequence) {
            return menuItem.setTooltipText(charSequence);
        }
    }

    @Deprecated
    public static boolean collapseActionView(MenuItem menuItem) {
        return menuItem.collapseActionView();
    }

    @Deprecated
    public static boolean expandActionView(MenuItem menuItem) {
        return menuItem.expandActionView();
    }

    @Nullable
    public static ActionProvider getActionProvider(@NonNull MenuItem menuItem) {
        if (menuItem instanceof SupportMenuItem) {
            return ((SupportMenuItem) menuItem).getSupportActionProvider();
        }
        Log.w(f5844a, "getActionProvider: item does not implement SupportMenuItem; returning null");
        return null;
    }

    @Deprecated
    public static View getActionView(MenuItem menuItem) {
        return menuItem.getActionView();
    }

    public static int getAlphabeticModifiers(@NonNull MenuItem menuItem) {
        return menuItem instanceof SupportMenuItem ? ((SupportMenuItem) menuItem).getAlphabeticModifiers() : C0774b.m3338a(menuItem);
    }

    @Nullable
    public static CharSequence getContentDescription(@NonNull MenuItem menuItem) {
        return menuItem instanceof SupportMenuItem ? ((SupportMenuItem) menuItem).getContentDescription() : C0774b.m3339b(menuItem);
    }

    @Nullable
    public static ColorStateList getIconTintList(@NonNull MenuItem menuItem) {
        return menuItem instanceof SupportMenuItem ? ((SupportMenuItem) menuItem).getIconTintList() : C0774b.m3340c(menuItem);
    }

    @Nullable
    public static PorterDuff.Mode getIconTintMode(@NonNull MenuItem menuItem) {
        return menuItem instanceof SupportMenuItem ? ((SupportMenuItem) menuItem).getIconTintMode() : C0774b.m3341d(menuItem);
    }

    public static int getNumericModifiers(@NonNull MenuItem menuItem) {
        return menuItem instanceof SupportMenuItem ? ((SupportMenuItem) menuItem).getNumericModifiers() : C0774b.m3342e(menuItem);
    }

    @Nullable
    public static CharSequence getTooltipText(@NonNull MenuItem menuItem) {
        return menuItem instanceof SupportMenuItem ? ((SupportMenuItem) menuItem).getTooltipText() : C0774b.m3343f(menuItem);
    }

    @Deprecated
    public static boolean isActionViewExpanded(MenuItem menuItem) {
        return menuItem.isActionViewExpanded();
    }

    @Nullable
    public static MenuItem setActionProvider(@NonNull MenuItem menuItem, @Nullable ActionProvider actionProvider) {
        if (menuItem instanceof SupportMenuItem) {
            return ((SupportMenuItem) menuItem).setSupportActionProvider(actionProvider);
        }
        Log.w(f5844a, "setActionProvider: item does not implement SupportMenuItem; ignoring");
        return menuItem;
    }

    @Deprecated
    public static MenuItem setActionView(MenuItem menuItem, View view) {
        return menuItem.setActionView(view);
    }

    public static void setAlphabeticShortcut(@NonNull MenuItem menuItem, char c, int i) {
        if (menuItem instanceof SupportMenuItem) {
            ((SupportMenuItem) menuItem).setAlphabeticShortcut(c, i);
        } else {
            C0774b.m3344g(menuItem, c, i);
        }
    }

    public static void setContentDescription(@NonNull MenuItem menuItem, @Nullable CharSequence charSequence) {
        if (menuItem instanceof SupportMenuItem) {
            ((SupportMenuItem) menuItem).setContentDescription(charSequence);
        } else {
            C0774b.m3345h(menuItem, charSequence);
        }
    }

    public static void setIconTintList(@NonNull MenuItem menuItem, @Nullable ColorStateList colorStateList) {
        if (menuItem instanceof SupportMenuItem) {
            ((SupportMenuItem) menuItem).setIconTintList(colorStateList);
        } else {
            C0774b.m3346i(menuItem, colorStateList);
        }
    }

    public static void setIconTintMode(@NonNull MenuItem menuItem, @Nullable PorterDuff.Mode mode) {
        if (menuItem instanceof SupportMenuItem) {
            ((SupportMenuItem) menuItem).setIconTintMode(mode);
        } else {
            C0774b.m3347j(menuItem, mode);
        }
    }

    public static void setNumericShortcut(@NonNull MenuItem menuItem, char c, int i) {
        if (menuItem instanceof SupportMenuItem) {
            ((SupportMenuItem) menuItem).setNumericShortcut(c, i);
        } else {
            C0774b.m3348k(menuItem, c, i);
        }
    }

    @Deprecated
    public static MenuItem setOnActionExpandListener(MenuItem menuItem, OnActionExpandListener onActionExpandListener) {
        return menuItem.setOnActionExpandListener(new MenuItemOnActionExpandListenerC0773a(onActionExpandListener));
    }

    public static void setShortcut(@NonNull MenuItem menuItem, char c, char c2, int i, int i2) {
        if (menuItem instanceof SupportMenuItem) {
            ((SupportMenuItem) menuItem).setShortcut(c, c2, i, i2);
        } else {
            C0774b.m3349l(menuItem, c, c2, i, i2);
        }
    }

    @Deprecated
    public static void setShowAsAction(MenuItem menuItem, int i) {
        menuItem.setShowAsAction(i);
    }

    public static void setTooltipText(@NonNull MenuItem menuItem, @Nullable CharSequence charSequence) {
        if (menuItem instanceof SupportMenuItem) {
            ((SupportMenuItem) menuItem).setTooltipText(charSequence);
        } else {
            C0774b.m3350m(menuItem, charSequence);
        }
    }

    @Deprecated
    public static MenuItem setActionView(MenuItem menuItem, int i) {
        return menuItem.setActionView(i);
    }
}
