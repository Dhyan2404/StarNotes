package com.sunia.HTREnginev2;

import android.view.MenuItem;
import android.widget.PopupMenu;
import com.jakewharton.rxbinding4.internal.Preconditions;
import io.reactivex.rxjava3.android.MainThreadDisposable;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final class i5l extends Observable<MenuItem> {

    /* renamed from: e */
    public final PopupMenu f72900e;

    /* renamed from: com.sunia.HTREnginev2.i5l$a */
    /* loaded from: classes4.dex */
    public static final class C13863a extends MainThreadDisposable implements PopupMenu.OnMenuItemClickListener {

        /* renamed from: f */
        public final PopupMenu f72901f;

        /* renamed from: g */
        public final Observer<? super MenuItem> f72902g;

        public C13863a(@NotNull PopupMenu view, @NotNull Observer<? super MenuItem> observer) {
            Intrinsics.checkParameterIsNotNull(view, "view");
            Intrinsics.checkParameterIsNotNull(observer, "observer");
            this.f72901f = view;
            this.f72902g = observer;
        }

        @Override // io.reactivex.rxjava3.android.MainThreadDisposable
        public void onDispose() {
            this.f72901f.setOnMenuItemClickListener(null);
        }

        @Override // android.widget.PopupMenu.OnMenuItemClickListener
        public boolean onMenuItemClick(@NotNull MenuItem menuItem) {
            Intrinsics.checkParameterIsNotNull(menuItem, "menuItem");
            if (isDisposed()) {
                return false;
            }
            this.f72902g.onNext(menuItem);
            return true;
        }
    }

    public i5l(@NotNull PopupMenu view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.f72900e = view;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(@NotNull Observer<? super MenuItem> observer) {
        Intrinsics.checkParameterIsNotNull(observer, "observer");
        if (Preconditions.checkMainThread(observer)) {
            C13863a c13863a = new C13863a(this.f72900e, observer);
            this.f72900e.setOnMenuItemClickListener(c13863a);
            observer.onSubscribe(c13863a);
        }
    }
}
