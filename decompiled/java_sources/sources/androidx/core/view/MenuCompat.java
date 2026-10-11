package androidx.core.view;

import android.view.Menu;
import android.view.MenuItem;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.core.internal.view.SupportMenu;

/* loaded from: classes3.dex */
public final class MenuCompat {

    @RequiresApi(28)
    /* renamed from: androidx.core.view.MenuCompat$a */
    /* loaded from: classes3.dex */
    public static class C0771a {
        @DoNotInline
        /* renamed from: a */
        public static void m3332a(Menu menu, boolean z) {
            menu.setGroupDividerEnabled(z);
        }
    }

    public static void setGroupDividerEnabled(@NonNull Menu menu, boolean z) {
        if (menu instanceof SupportMenu) {
            ((SupportMenu) menu).setGroupDividerEnabled(z);
        } else {
            C0771a.m3332a(menu, z);
        }
    }

    @Deprecated
    public static void setShowAsAction(MenuItem menuItem, int i) {
        menuItem.setShowAsAction(i);
    }
}
