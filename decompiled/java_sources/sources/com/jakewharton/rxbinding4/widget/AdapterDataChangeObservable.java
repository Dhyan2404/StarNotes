package com.jakewharton.rxbinding4.widget;

import android.database.DataSetObserver;
import android.widget.Adapter;
import com.jakewharton.rxbinding4.InitialValueObservable;
import com.jakewharton.rxbinding4.internal.Preconditions;
import com.jakewharton.rxbinding4.widget.AdapterDataChangeObservable;
import io.reactivex.rxjava3.android.MainThreadDisposable;
import io.reactivex.rxjava3.core.Observer;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final class AdapterDataChangeObservable<T extends Adapter> extends InitialValueObservable<T> {

    /* renamed from: e */
    public final T f39090e;

    /* loaded from: classes4.dex */
    public static final class ObserverDisposable<T extends Adapter> extends MainThreadDisposable {

        /* renamed from: f */
        @JvmField
        @NotNull
        public final DataSetObserver f39091f;

        /* renamed from: g */
        public final T f39092g;

        public ObserverDisposable(@NotNull T adapter, @NotNull final Observer<? super T> observer) {
            Intrinsics.checkParameterIsNotNull(adapter, "adapter");
            Intrinsics.checkParameterIsNotNull(observer, "observer");
            this.f39092g = adapter;
            this.f39091f = new DataSetObserver() { // from class: com.jakewharton.rxbinding4.widget.AdapterDataChangeObservable$ObserverDisposable$dataSetObserver$1
                @Override // android.database.DataSetObserver
                public void onChanged() {
                    Adapter adapter2;
                    if (AdapterDataChangeObservable.ObserverDisposable.this.isDisposed()) {
                        return;
                    }
                    Observer observer2 = observer;
                    adapter2 = AdapterDataChangeObservable.ObserverDisposable.this.f39092g;
                    observer2.onNext(adapter2);
                }
            };
        }

        @Override // io.reactivex.rxjava3.android.MainThreadDisposable
        public void onDispose() {
            this.f39092g.unregisterDataSetObserver(this.f39091f);
        }
    }

    public AdapterDataChangeObservable(@NotNull T adapter) {
        Intrinsics.checkParameterIsNotNull(adapter, "adapter");
        this.f39090e = adapter;
    }

    @Override // com.jakewharton.rxbinding4.InitialValueObservable
    @NotNull
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public T getInitialValue() {
        return this.f39090e;
    }

    @Override // com.jakewharton.rxbinding4.InitialValueObservable
    public void subscribeListener(@NotNull Observer<? super T> observer) {
        Intrinsics.checkParameterIsNotNull(observer, "observer");
        if (Preconditions.checkMainThread(observer)) {
            ObserverDisposable observerDisposable = new ObserverDisposable(getInitialValue(), observer);
            getInitialValue().registerDataSetObserver(observerDisposable.f39091f);
            observer.onSubscribe(observerDisposable);
        }
    }
}
