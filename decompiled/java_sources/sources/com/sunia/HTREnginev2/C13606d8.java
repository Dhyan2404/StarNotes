package com.sunia.HTREnginev2;

import android.view.View;
import android.widget.AdapterView;
import com.jakewharton.rxbinding4.internal.Preconditions;
import com.jakewharton.rxbinding4.widget.AdapterViewItemLongClickEvent;
import io.reactivex.rxjava3.android.MainThreadDisposable;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* renamed from: com.sunia.HTREnginev2.d8 */
/* loaded from: classes4.dex */
public final class C13606d8 extends Observable<AdapterViewItemLongClickEvent> {

    /* renamed from: e */
    public final AdapterView<?> f67580e;

    /* renamed from: f */
    public final Function1<AdapterViewItemLongClickEvent, Boolean> f67581f;

    /* renamed from: com.sunia.HTREnginev2.d8$a */
    /* loaded from: classes4.dex */
    public static final class a extends MainThreadDisposable implements AdapterView.OnItemLongClickListener {

        /* renamed from: f */
        public final AdapterView<?> f67582f;

        /* renamed from: g */
        public final Observer<? super AdapterViewItemLongClickEvent> f67583g;

        /* renamed from: h */
        public final Function1<AdapterViewItemLongClickEvent, Boolean> f67584h;

        /* JADX WARN: Multi-variable type inference failed */
        public a(@NotNull AdapterView<?> view, @NotNull Observer<? super AdapterViewItemLongClickEvent> observer, @NotNull Function1<? super AdapterViewItemLongClickEvent, Boolean> handled) {
            Intrinsics.checkParameterIsNotNull(view, "view");
            Intrinsics.checkParameterIsNotNull(observer, "observer");
            Intrinsics.checkParameterIsNotNull(handled, "handled");
            this.f67582f = view;
            this.f67583g = observer;
            this.f67584h = handled;
        }

        @Override // io.reactivex.rxjava3.android.MainThreadDisposable
        public void onDispose() {
            this.f67582f.setOnItemLongClickListener(null);
        }

        @Override // android.widget.AdapterView.OnItemLongClickListener
        public boolean onItemLongClick(@NotNull AdapterView<?> parent, @Nullable View view, int i, long j) {
            Intrinsics.checkParameterIsNotNull(parent, "parent");
            if (isDisposed()) {
                return false;
            }
            AdapterViewItemLongClickEvent adapterViewItemLongClickEvent = new AdapterViewItemLongClickEvent(parent, view, i, j);
            try {
                if (!this.f67584h.invoke(adapterViewItemLongClickEvent).booleanValue()) {
                    return false;
                }
                this.f67583g.onNext(adapterViewItemLongClickEvent);
                return true;
            } catch (Exception e) {
                this.f67583g.onError(e);
                dispose();
                return false;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C13606d8(@NotNull AdapterView<?> view, @NotNull Function1<? super AdapterViewItemLongClickEvent, Boolean> handled) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        Intrinsics.checkParameterIsNotNull(handled, "handled");
        this.f67580e = view;
        this.f67581f = handled;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(@NotNull Observer<? super AdapterViewItemLongClickEvent> observer) {
        Intrinsics.checkParameterIsNotNull(observer, "observer");
        if (Preconditions.checkMainThread(observer)) {
            a aVar = new a(this.f67580e, observer, this.f67581f);
            observer.onSubscribe(aVar);
            this.f67580e.setOnItemLongClickListener(aVar);
        }
    }
}
