package com.sunia.HTREnginev2;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AutoCompleteTextView;
import com.jakewharton.rxbinding4.internal.Preconditions;
import com.jakewharton.rxbinding4.widget.AdapterViewItemClickEvent;
import io.reactivex.rxjava3.android.MainThreadDisposable;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* renamed from: com.sunia.HTREnginev2.jj */
/* loaded from: classes4.dex */
public final class C13927jj extends Observable<AdapterViewItemClickEvent> {

    /* renamed from: e */
    public final AutoCompleteTextView f74342e;

    /* renamed from: com.sunia.HTREnginev2.jj$a */
    /* loaded from: classes4.dex */
    public static final class a extends MainThreadDisposable implements AdapterView.OnItemClickListener {

        /* renamed from: f */
        public final AutoCompleteTextView f74343f;

        /* renamed from: g */
        public final Observer<? super AdapterViewItemClickEvent> f74344g;

        public a(@NotNull AutoCompleteTextView view, @NotNull Observer<? super AdapterViewItemClickEvent> observer) {
            Intrinsics.checkParameterIsNotNull(view, "view");
            Intrinsics.checkParameterIsNotNull(observer, "observer");
            this.f74343f = view;
            this.f74344g = observer;
        }

        @Override // io.reactivex.rxjava3.android.MainThreadDisposable
        public void onDispose() {
            this.f74343f.setOnItemClickListener(null);
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(@NotNull AdapterView<?> parent, @Nullable View view, int i, long j) {
            Intrinsics.checkParameterIsNotNull(parent, "parent");
            if (isDisposed()) {
                return;
            }
            this.f74344g.onNext(new AdapterViewItemClickEvent(parent, view, i, j));
        }
    }

    public C13927jj(@NotNull AutoCompleteTextView view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.f74342e = view;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(@NotNull Observer<? super AdapterViewItemClickEvent> observer) {
        Intrinsics.checkParameterIsNotNull(observer, "observer");
        if (Preconditions.checkMainThread(observer)) {
            a aVar = new a(this.f74342e, observer);
            observer.onSubscribe(aVar);
            this.f74342e.setOnItemClickListener(aVar);
        }
    }
}
