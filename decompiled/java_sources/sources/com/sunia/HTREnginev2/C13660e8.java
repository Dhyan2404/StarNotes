package com.sunia.HTREnginev2;

import android.view.View;
import android.widget.AdapterView;
import com.jakewharton.rxbinding4.internal.Preconditions;
import io.reactivex.rxjava3.android.MainThreadDisposable;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* renamed from: com.sunia.HTREnginev2.e8 */
/* loaded from: classes4.dex */
public final class C13660e8 extends Observable<Integer> {

    /* renamed from: e */
    public final AdapterView<?> f68681e;

    /* renamed from: f */
    public final Function0<Boolean> f68682f;

    /* renamed from: com.sunia.HTREnginev2.e8$a */
    /* loaded from: classes4.dex */
    public static final class a extends MainThreadDisposable implements AdapterView.OnItemLongClickListener {

        /* renamed from: f */
        public final AdapterView<?> f68683f;

        /* renamed from: g */
        public final Observer<? super Integer> f68684g;

        /* renamed from: h */
        public final Function0<Boolean> f68685h;

        public a(@NotNull AdapterView<?> view, @NotNull Observer<? super Integer> observer, @NotNull Function0<Boolean> handled) {
            Intrinsics.checkParameterIsNotNull(view, "view");
            Intrinsics.checkParameterIsNotNull(observer, "observer");
            Intrinsics.checkParameterIsNotNull(handled, "handled");
            this.f68683f = view;
            this.f68684g = observer;
            this.f68685h = handled;
        }

        @Override // io.reactivex.rxjava3.android.MainThreadDisposable
        public void onDispose() {
            this.f68683f.setOnItemLongClickListener(null);
        }

        @Override // android.widget.AdapterView.OnItemLongClickListener
        public boolean onItemLongClick(@NotNull AdapterView<?> parent, @Nullable View view, int i, long j) {
            Intrinsics.checkParameterIsNotNull(parent, "parent");
            if (isDisposed()) {
                return false;
            }
            try {
                if (!this.f68685h.invoke().booleanValue()) {
                    return false;
                }
                this.f68684g.onNext(Integer.valueOf(i));
                return true;
            } catch (Exception e) {
                this.f68684g.onError(e);
                dispose();
                return false;
            }
        }
    }

    public C13660e8(@NotNull AdapterView<?> view, @NotNull Function0<Boolean> handled) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        Intrinsics.checkParameterIsNotNull(handled, "handled");
        this.f68681e = view;
        this.f68682f = handled;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(@NotNull Observer<? super Integer> observer) {
        Intrinsics.checkParameterIsNotNull(observer, "observer");
        if (Preconditions.checkMainThread(observer)) {
            a aVar = new a(this.f68681e, observer, this.f68682f);
            observer.onSubscribe(aVar);
            this.f68681e.setOnItemLongClickListener(aVar);
        }
    }
}
