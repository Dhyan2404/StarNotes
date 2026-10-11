package com.sunia.HTREnginev2;

import android.view.MenuItem;
import android.widget.Toolbar;
import androidx.annotation.RequiresApi;
import com.jakewharton.rxbinding4.internal.Preconditions;
import io.reactivex.rxjava3.android.MainThreadDisposable;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@RequiresApi(21)
/* loaded from: classes4.dex */
public final class ujn extends Observable<MenuItem> {

    /* renamed from: e */
    public final Toolbar f86555e;

    /* renamed from: com.sunia.HTREnginev2.ujn$a */
    /* loaded from: classes4.dex */
    public static final class C14506a extends MainThreadDisposable implements Toolbar.OnMenuItemClickListener {

        /* renamed from: f */
        public final Toolbar f86556f;

        /* renamed from: g */
        public final Observer<? super MenuItem> f86557g;

        public C14506a(@NotNull Toolbar view, @NotNull Observer<? super MenuItem> observer) {
            Intrinsics.checkParameterIsNotNull(view, "view");
            Intrinsics.checkParameterIsNotNull(observer, "observer");
            this.f86556f = view;
            this.f86557g = observer;
        }

        @Override // io.reactivex.rxjava3.android.MainThreadDisposable
        public void onDispose() {
            this.f86556f.setOnMenuItemClickListener(null);
        }

        @Override // android.widget.Toolbar.OnMenuItemClickListener
        public boolean onMenuItemClick(@NotNull MenuItem item) {
            Intrinsics.checkParameterIsNotNull(item, "item");
            if (isDisposed()) {
                return false;
            }
            this.f86557g.onNext(item);
            return true;
        }
    }

    public ujn(@NotNull Toolbar view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.f86555e = view;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(@NotNull Observer<? super MenuItem> observer) {
        Intrinsics.checkParameterIsNotNull(observer, "observer");
        if (Preconditions.checkMainThread(observer)) {
            C14506a c14506a = new C14506a(this.f86555e, observer);
            observer.onSubscribe(c14506a);
            this.f86555e.setOnMenuItemClickListener(c14506a);
        }
    }
}
