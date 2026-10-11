package com.sunia.HTREnginev2;

import android.widget.SearchView;
import com.jakewharton.rxbinding4.InitialValueObservable;
import com.jakewharton.rxbinding4.internal.Preconditions;
import com.jakewharton.rxbinding4.widget.SearchViewQueryTextEvent;
import io.reactivex.rxjava3.android.MainThreadDisposable;
import io.reactivex.rxjava3.core.Observer;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final class w8m extends InitialValueObservable<SearchViewQueryTextEvent> {

    /* renamed from: e */
    public final SearchView f88335e;

    /* renamed from: com.sunia.HTREnginev2.w8m$a */
    /* loaded from: classes4.dex */
    public static final class C14594a extends MainThreadDisposable implements SearchView.OnQueryTextListener {

        /* renamed from: f */
        public final SearchView f88336f;

        /* renamed from: g */
        public final Observer<? super SearchViewQueryTextEvent> f88337g;

        public C14594a(@NotNull SearchView view, @NotNull Observer<? super SearchViewQueryTextEvent> observer) {
            Intrinsics.checkParameterIsNotNull(view, "view");
            Intrinsics.checkParameterIsNotNull(observer, "observer");
            this.f88336f = view;
            this.f88337g = observer;
        }

        @Override // io.reactivex.rxjava3.android.MainThreadDisposable
        public void onDispose() {
            this.f88336f.setOnQueryTextListener(null);
        }

        @Override // android.widget.SearchView.OnQueryTextListener
        public boolean onQueryTextChange(@NotNull String s) {
            Intrinsics.checkParameterIsNotNull(s, "s");
            if (isDisposed()) {
                return false;
            }
            this.f88337g.onNext(new SearchViewQueryTextEvent(this.f88336f, s, false));
            return true;
        }

        @Override // android.widget.SearchView.OnQueryTextListener
        public boolean onQueryTextSubmit(@NotNull String query) {
            Intrinsics.checkParameterIsNotNull(query, "query");
            if (isDisposed()) {
                return false;
            }
            this.f88337g.onNext(new SearchViewQueryTextEvent(this.f88336f, query, true));
            return true;
        }
    }

    public w8m(@NotNull SearchView view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.f88335e = view;
    }

    @Override // com.jakewharton.rxbinding4.InitialValueObservable
    @NotNull
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public SearchViewQueryTextEvent getInitialValue() {
        SearchView searchView = this.f88335e;
        CharSequence query = searchView.getQuery();
        Intrinsics.checkExpressionValueIsNotNull(query, "view.query");
        return new SearchViewQueryTextEvent(searchView, query, false);
    }

    @Override // com.jakewharton.rxbinding4.InitialValueObservable
    public void subscribeListener(@NotNull Observer<? super SearchViewQueryTextEvent> observer) {
        Intrinsics.checkParameterIsNotNull(observer, "observer");
        if (Preconditions.checkMainThread(observer)) {
            C14594a c14594a = new C14594a(this.f88335e, observer);
            this.f88335e.setOnQueryTextListener(c14594a);
            observer.onSubscribe(c14594a);
        }
    }
}
