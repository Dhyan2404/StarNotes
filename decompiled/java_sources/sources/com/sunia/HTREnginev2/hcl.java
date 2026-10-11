package com.sunia.HTREnginev2;

import android.widget.RadioGroup;
import com.jakewharton.rxbinding4.InitialValueObservable;
import com.jakewharton.rxbinding4.internal.Preconditions;
import io.reactivex.rxjava3.android.MainThreadDisposable;
import io.reactivex.rxjava3.core.Observer;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final class hcl extends InitialValueObservable<Integer> {

    /* renamed from: e */
    public final RadioGroup f72078e;

    /* renamed from: com.sunia.HTREnginev2.hcl$a */
    /* loaded from: classes4.dex */
    public static final class C13822a extends MainThreadDisposable implements RadioGroup.OnCheckedChangeListener {

        /* renamed from: f */
        public int f72079f;

        /* renamed from: g */
        public final RadioGroup f72080g;

        /* renamed from: h */
        public final Observer<? super Integer> f72081h;

        public C13822a(@NotNull RadioGroup view, @NotNull Observer<? super Integer> observer) {
            Intrinsics.checkParameterIsNotNull(view, "view");
            Intrinsics.checkParameterIsNotNull(observer, "observer");
            this.f72080g = view;
            this.f72081h = observer;
            this.f72079f = -1;
        }

        @Override // android.widget.RadioGroup.OnCheckedChangeListener
        public void onCheckedChanged(@NotNull RadioGroup radioGroup, int i) {
            Intrinsics.checkParameterIsNotNull(radioGroup, "radioGroup");
            if (isDisposed() || i == this.f72079f) {
                return;
            }
            this.f72079f = i;
            this.f72081h.onNext(Integer.valueOf(i));
        }

        @Override // io.reactivex.rxjava3.android.MainThreadDisposable
        public void onDispose() {
            this.f72080g.setOnCheckedChangeListener(null);
        }
    }

    public hcl(@NotNull RadioGroup view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.f72078e = view;
    }

    @Override // com.jakewharton.rxbinding4.InitialValueObservable
    @NotNull
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public Integer getInitialValue() {
        return Integer.valueOf(this.f72078e.getCheckedRadioButtonId());
    }

    @Override // com.jakewharton.rxbinding4.InitialValueObservable
    public void subscribeListener(@NotNull Observer<? super Integer> observer) {
        Intrinsics.checkParameterIsNotNull(observer, "observer");
        if (Preconditions.checkMainThread(observer)) {
            C13822a c13822a = new C13822a(this.f72078e, observer);
            this.f72078e.setOnCheckedChangeListener(c13822a);
            observer.onSubscribe(c13822a);
        }
    }
}
