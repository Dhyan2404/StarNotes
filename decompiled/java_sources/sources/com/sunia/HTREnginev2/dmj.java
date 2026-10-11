package com.sunia.HTREnginev2;

import android.view.MenuItem;
import com.jakewharton.rxbinding4.internal.Preconditions;
import com.jakewharton.rxbinding4.view.MenuItemActionViewCollapseEvent;
import com.jakewharton.rxbinding4.view.MenuItemActionViewEvent;
import com.jakewharton.rxbinding4.view.MenuItemActionViewExpandEvent;
import io.reactivex.rxjava3.android.MainThreadDisposable;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final class dmj extends Observable<MenuItemActionViewEvent> {

    /* renamed from: e */
    public final MenuItem f68012e;

    /* renamed from: f */
    public final Function1<MenuItemActionViewEvent, Boolean> f68013f;

    /* renamed from: com.sunia.HTREnginev2.dmj$a */
    /* loaded from: classes4.dex */
    public static final class MenuItemOnActionExpandListenerC13622a extends MainThreadDisposable implements MenuItem.OnActionExpandListener {

        /* renamed from: f */
        public final MenuItem f68014f;

        /* renamed from: g */
        public final Function1<MenuItemActionViewEvent, Boolean> f68015g;

        /* renamed from: h */
        public final Observer<? super MenuItemActionViewEvent> f68016h;

        /* JADX WARN: Multi-variable type inference failed */
        public MenuItemOnActionExpandListenerC13622a(@NotNull MenuItem menuItem, @NotNull Function1<? super MenuItemActionViewEvent, Boolean> handled, @NotNull Observer<? super MenuItemActionViewEvent> observer) {
            Intrinsics.checkParameterIsNotNull(menuItem, "menuItem");
            Intrinsics.checkParameterIsNotNull(handled, "handled");
            Intrinsics.checkParameterIsNotNull(observer, "observer");
            this.f68014f = menuItem;
            this.f68015g = handled;
            this.f68016h = observer;
        }

        /* renamed from: a */
        public final boolean m53678a(MenuItemActionViewEvent menuItemActionViewEvent) {
            if (isDisposed()) {
                return false;
            }
            try {
                if (!this.f68015g.invoke(menuItemActionViewEvent).booleanValue()) {
                    return false;
                }
                this.f68016h.onNext(menuItemActionViewEvent);
                return true;
            } catch (Exception e) {
                this.f68016h.onError(e);
                dispose();
                return false;
            }
        }

        @Override // io.reactivex.rxjava3.android.MainThreadDisposable
        public void onDispose() {
            this.f68014f.setOnActionExpandListener(null);
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public boolean onMenuItemActionCollapse(@NotNull MenuItem item) {
            Intrinsics.checkParameterIsNotNull(item, "item");
            return m53678a(new MenuItemActionViewCollapseEvent(item));
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public boolean onMenuItemActionExpand(@NotNull MenuItem item) {
            Intrinsics.checkParameterIsNotNull(item, "item");
            return m53678a(new MenuItemActionViewExpandEvent(item));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public dmj(@NotNull MenuItem menuItem, @NotNull Function1<? super MenuItemActionViewEvent, Boolean> handled) {
        Intrinsics.checkParameterIsNotNull(menuItem, "menuItem");
        Intrinsics.checkParameterIsNotNull(handled, "handled");
        this.f68012e = menuItem;
        this.f68013f = handled;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(@NotNull Observer<? super MenuItemActionViewEvent> observer) {
        Intrinsics.checkParameterIsNotNull(observer, "observer");
        if (Preconditions.checkMainThread(observer)) {
            MenuItemOnActionExpandListenerC13622a menuItemOnActionExpandListenerC13622a = new MenuItemOnActionExpandListenerC13622a(this.f68012e, this.f68013f, observer);
            observer.onSubscribe(menuItemOnActionExpandListenerC13622a);
            this.f68012e.setOnActionExpandListener(menuItemOnActionExpandListenerC13622a);
        }
    }
}
