package com.jakewharton.rxbinding4.view;

import android.view.MenuItem;
import com.google.android.material.motion.MotionUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u0013\u0010\u0005\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u0002HÆ\u0001J\t\u0010\u0007\u001a\u00020\u0006HÖ\u0001J\t\u0010\t\u001a\u00020\bHÖ\u0001J\u0013\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\nHÖ\u0003R\u001a\u0010\u0004\u001a\u00020\u00028\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0014"}, m61528d2 = {"Lcom/jakewharton/rxbinding4/view/MenuItemActionViewExpandEvent;", "Lcom/jakewharton/rxbinding4/view/MenuItemActionViewEvent;", "Landroid/view/MenuItem;", "component1", "menuItem", "copy", "", "toString", "", "hashCode", "", Constants.ATTRVAL_OTHER, "", "equals", "a", "Landroid/view/MenuItem;", "getMenuItem", "()Landroid/view/MenuItem;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/view/MenuItem;)V", "rxbinding_release"}, m61529k = 1, m61530mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final /* data */ class MenuItemActionViewExpandEvent extends MenuItemActionViewEvent {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final MenuItem menuItem;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MenuItemActionViewExpandEvent(@NotNull MenuItem menuItem) {
        super(null);
        Intrinsics.checkParameterIsNotNull(menuItem, "menuItem");
        this.menuItem = menuItem;
    }

    public static /* synthetic */ MenuItemActionViewExpandEvent copy$default(MenuItemActionViewExpandEvent menuItemActionViewExpandEvent, MenuItem menuItem, int i, Object obj) {
        if ((i & 1) != 0) {
            menuItem = menuItemActionViewExpandEvent.getMenuItem();
        }
        return menuItemActionViewExpandEvent.copy(menuItem);
    }

    @NotNull
    public final MenuItem component1() {
        return getMenuItem();
    }

    @NotNull
    public final MenuItemActionViewExpandEvent copy(@NotNull MenuItem menuItem) {
        Intrinsics.checkParameterIsNotNull(menuItem, "menuItem");
        return new MenuItemActionViewExpandEvent(menuItem);
    }

    public boolean equals(@Nullable Object other) {
        if (this != other) {
            return (other instanceof MenuItemActionViewExpandEvent) && Intrinsics.areEqual(getMenuItem(), ((MenuItemActionViewExpandEvent) other).getMenuItem());
        }
        return true;
    }

    @Override // com.jakewharton.rxbinding4.view.MenuItemActionViewEvent
    @NotNull
    public MenuItem getMenuItem() {
        return this.menuItem;
    }

    public int hashCode() {
        MenuItem menuItem = getMenuItem();
        if (menuItem != null) {
            return menuItem.hashCode();
        }
        return 0;
    }

    @NotNull
    public String toString() {
        return "MenuItemActionViewExpandEvent(menuItem=" + getMenuItem() + MotionUtils.f31762d;
    }
}
