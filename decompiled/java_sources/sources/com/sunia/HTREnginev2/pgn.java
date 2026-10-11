package com.sunia.HTREnginev2;

import android.view.KeyEvent;
import android.widget.TextView;
import com.jakewharton.rxbinding4.internal.Preconditions;
import io.reactivex.rxjava3.android.MainThreadDisposable;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* loaded from: classes4.dex */
public final class pgn extends Observable<Integer> {

    /* renamed from: e */
    public final TextView f80775e;

    /* renamed from: f */
    public final Function1<Integer, Boolean> f80776f;

    /* renamed from: com.sunia.HTREnginev2.pgn$a */
    /* loaded from: classes4.dex */
    public static final class C14241a extends MainThreadDisposable implements TextView.OnEditorActionListener {

        /* renamed from: f */
        public final TextView f80777f;

        /* renamed from: g */
        public final Observer<? super Integer> f80778g;

        /* renamed from: h */
        public final Function1<Integer, Boolean> f80779h;

        /* JADX WARN: Multi-variable type inference failed */
        public C14241a(@NotNull TextView view, @NotNull Observer<? super Integer> observer, @NotNull Function1<? super Integer, Boolean> handled) {
            Intrinsics.checkParameterIsNotNull(view, "view");
            Intrinsics.checkParameterIsNotNull(observer, "observer");
            Intrinsics.checkParameterIsNotNull(handled, "handled");
            this.f80777f = view;
            this.f80778g = observer;
            this.f80779h = handled;
        }

        @Override // io.reactivex.rxjava3.android.MainThreadDisposable
        public void onDispose() {
            this.f80777f.setOnEditorActionListener(null);
        }

        @Override // android.widget.TextView.OnEditorActionListener
        public boolean onEditorAction(@NotNull TextView textView, int i, @Nullable KeyEvent keyEvent) {
            Intrinsics.checkParameterIsNotNull(textView, "textView");
            try {
                if (isDisposed() || !this.f80779h.invoke(Integer.valueOf(i)).booleanValue()) {
                    return false;
                }
                this.f80778g.onNext(Integer.valueOf(i));
                return true;
            } catch (Exception e) {
                this.f80778g.onError(e);
                dispose();
                return false;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public pgn(@NotNull TextView view, @NotNull Function1<? super Integer, Boolean> handled) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        Intrinsics.checkParameterIsNotNull(handled, "handled");
        this.f80775e = view;
        this.f80776f = handled;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public void subscribeActual(@NotNull Observer<? super Integer> observer) {
        Intrinsics.checkParameterIsNotNull(observer, "observer");
        if (Preconditions.checkMainThread(observer)) {
            C14241a c14241a = new C14241a(this.f80775e, observer, this.f80776f);
            observer.onSubscribe(c14241a);
            this.f80775e.setOnEditorActionListener(c14241a);
        }
    }
}
