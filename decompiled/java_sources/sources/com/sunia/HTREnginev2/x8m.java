package com.sunia.HTREnginev2;

import android.widget.SearchView;
import com.jakewharton.rxbinding4.InitialValueObservable;
import com.jakewharton.rxbinding4.internal.Preconditions;
import io.reactivex.rxjava3.android.MainThreadDisposable;
import io.reactivex.rxjava3.core.Observer;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final class x8m extends InitialValueObservable<CharSequence> {

    /* renamed from: e */
    public final SearchView f89387e;

    /* renamed from: com.sunia.HTREnginev2.x8m$a */
    /* loaded from: classes4.dex */
    public static final class C14643a extends MainThreadDisposable implements SearchView.OnQueryTextListener {

        /* renamed from: f */
        public final SearchView f89388f;

        /* renamed from: g */
        public final Observer<? super CharSequence> f89389g;

        public C14643a(@NotNull SearchView view, @NotNull Observer<? super CharSequence> observer) {
            Intrinsics.checkParameterIsNotNull(view, "view");
            Intrinsics.checkParameterIsNotNull(observer, "observer");
            this.f89388f = view;
            this.f89389g = observer;
        }

        @Override // io.reactivex.rxjava3.android.MainThreadDisposable
        public void onDispose() {
            this.f89388f.setOnQueryTextListener(null);
        }

        @Override // android.widget.SearchView.OnQueryTextListener
        public boolean onQueryTextChange(@NotNull String s) {
            Intrinsics.checkParameterIsNotNull(s, "s");
            if (isDisposed()) {
                return false;
            }
            this.f89389g.onNext(s);
            return true;
        }

        @Override // android.widget.SearchView.OnQueryTextListener
        public boolean onQueryTextSubmit(@NotNull String query) {
            Intrinsics.checkParameterIsNotNull(query, "query");
            return false;
        }
    }

    public x8m(@NotNull SearchView view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.f89387e = view;
    }

    @Override // com.jakewharton.rxbinding4.InitialValueObservable
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public CharSequence getInitialValue() {
        return this.f89387e.getQuery();
    }

    @Override // com.jakewharton.rxbinding4.InitialValueObservable
    public void subscribeListener(@NotNull Observer<? super CharSequence> observer) {
        Intrinsics.checkParameterIsNotNull(observer, "observer");
        if (Preconditions.checkMainThread(observer)) {
            C14643a c14643a = new C14643a(this.f89387e, observer);
            this.f89387e.setOnQueryTextListener(c14643a);
            observer.onSubscribe(c14643a);
        }
    }
}
