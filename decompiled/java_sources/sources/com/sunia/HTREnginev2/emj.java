package com.sunia.HTREnginev2;

import android.view.MenuItem;
import com.jakewharton.rxbinding4.internal.Preconditions;
import io.reactivex.rxjava3.android.MainThreadDisposable;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final class emj extends Observable<Unit> {

    /* renamed from: e */
    public final MenuItem f69081e;

    /* renamed from: f */
    public final Function1<MenuItem, Boolean> f69082f;

    /* renamed from: com.sunia.HTREnginev2.emj$a */
    /* loaded from: classes4.dex */
    public static final class MenuItemOnMenuItemClickListenerC13678a extends MainThreadDisposable implements MenuItem.OnMenuItemClickListener {

        /* renamed from: f */
        public final MenuItem f69083f;

        /* renamed from: g */
        public final Function1<MenuItem, Boolean> f69084g;

        /* renamed from: h */
        public final Observer<? super Unit> f69085h;

        /* JADX WARN: Multi-variable type inference failed */
        public MenuItemOnMenuItemClickListenerC13678a(@NotNull MenuItem menuItem, @NotNull Function1<? super MenuItem, Boolean> handled, @NotNull Observer<? super Unit> observer) {
            Intrinsics.checkParameterIsNotNull(menuItem, "menuItem");
            Intrinsics.checkParameterIsNotNull(handled, "handled");
            Intrinsics.checkParameterIsNotNull(observer, "observer");
            this.f69083f = menuItem;
            this.f69084g = handled;
            this.f69085h = observer;
        }

        @Override // io.reactivex.rxjava3.android.MainThreadDisposable
        public void onDispose() {
            this.f69083f.setOnMenuItemClickListener(null);
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(@NotNull MenuItem item) {
            Intrinsics.checkParameterIsNotNull(item, "item");
            if (isDisposed()) {
                return false;
            }
            try {
                if (!this.f69084g.invoke(this.f69083f).booleanValue()) {
                    return false;
                }
                this.f69085h.onNext(Unit.INSTANCE);
                return true;
            } catch (Exception e) {
                this.f69085h.onError(e);
                dispose();
                return false;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public emj(@NotNull MenuItem menuItem, @NotNull Function1<? super MenuItem, Boolean> handled) {
        Intrinsics.checkParameterIsNotNull(menuItem, "menuItem");
        Intrinsics.checkParameterIsNotNull(handled, "handled");
        this.f69081e = menuItem;
        this.f69082f = handled;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(@NotNull Observer<? super Unit> observer) {
        Intrinsics.checkParameterIsNotNull(observer, "observer");
        if (Preconditions.checkMainThread(observer)) {
            MenuItemOnMenuItemClickListenerC13678a menuItemOnMenuItemClickListenerC13678a = new MenuItemOnMenuItemClickListenerC13678a(this.f69081e, this.f69082f, observer);
            observer.onSubscribe(menuItemOnMenuItemClickListenerC13678a);
            this.f69081e.setOnMenuItemClickListener(menuItemOnMenuItemClickListenerC13678a);
        }
    }
}
