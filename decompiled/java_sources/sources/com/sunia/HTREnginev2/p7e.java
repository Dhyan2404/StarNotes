package com.sunia.HTREnginev2;

import android.widget.CompoundButton;
import com.jakewharton.rxbinding4.InitialValueObservable;
import com.jakewharton.rxbinding4.internal.Preconditions;
import io.reactivex.rxjava3.android.MainThreadDisposable;
import io.reactivex.rxjava3.core.Observer;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final class p7e extends InitialValueObservable<Boolean> {

    /* renamed from: e */
    public final CompoundButton f80525e;

    /* renamed from: com.sunia.HTREnginev2.p7e$a */
    /* loaded from: classes4.dex */
    public static final class C14228a extends MainThreadDisposable implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: f */
        public final CompoundButton f80526f;

        /* renamed from: g */
        public final Observer<? super Boolean> f80527g;

        public C14228a(@NotNull CompoundButton view, @NotNull Observer<? super Boolean> observer) {
            Intrinsics.checkParameterIsNotNull(view, "view");
            Intrinsics.checkParameterIsNotNull(observer, "observer");
            this.f80526f = view;
            this.f80527g = observer;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(@NotNull CompoundButton compoundButton, boolean z) {
            Intrinsics.checkParameterIsNotNull(compoundButton, "compoundButton");
            if (isDisposed()) {
                return;
            }
            this.f80527g.onNext(Boolean.valueOf(z));
        }

        @Override // io.reactivex.rxjava3.android.MainThreadDisposable
        public void onDispose() {
            this.f80526f.setOnCheckedChangeListener(null);
        }
    }

    public p7e(@NotNull CompoundButton view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.f80525e = view;
    }

    @Override // com.jakewharton.rxbinding4.InitialValueObservable
    @NotNull
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public Boolean getInitialValue() {
        return Boolean.valueOf(this.f80525e.isChecked());
    }

    @Override // com.jakewharton.rxbinding4.InitialValueObservable
    public void subscribeListener(@NotNull Observer<? super Boolean> observer) {
        Intrinsics.checkParameterIsNotNull(observer, "observer");
        if (Preconditions.checkMainThread(observer)) {
            C14228a c14228a = new C14228a(this.f80525e, observer);
            observer.onSubscribe(c14228a);
            this.f80525e.setOnCheckedChangeListener(c14228a);
        }
    }
}
