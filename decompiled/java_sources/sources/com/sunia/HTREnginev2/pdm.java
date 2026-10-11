package com.sunia.HTREnginev2;

import android.widget.SeekBar;
import com.jakewharton.rxbinding4.InitialValueObservable;
import com.jakewharton.rxbinding4.internal.Preconditions;
import io.reactivex.rxjava3.android.MainThreadDisposable;
import io.reactivex.rxjava3.core.Observer;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* loaded from: classes4.dex */
public final class pdm extends InitialValueObservable<Integer> {

    /* renamed from: e */
    public final SeekBar f80697e;

    /* renamed from: f */
    public final Boolean f80698f;

    /* renamed from: com.sunia.HTREnginev2.pdm$a */
    /* loaded from: classes4.dex */
    public static final class C14236a extends MainThreadDisposable implements SeekBar.OnSeekBarChangeListener {

        /* renamed from: f */
        public final SeekBar f80699f;

        /* renamed from: g */
        public final Boolean f80700g;

        /* renamed from: h */
        public final Observer<? super Integer> f80701h;

        public C14236a(@NotNull SeekBar view, @Nullable Boolean bool, @NotNull Observer<? super Integer> observer) {
            Intrinsics.checkParameterIsNotNull(view, "view");
            Intrinsics.checkParameterIsNotNull(observer, "observer");
            this.f80699f = view;
            this.f80700g = bool;
            this.f80701h = observer;
        }

        @Override // io.reactivex.rxjava3.android.MainThreadDisposable
        public void onDispose() {
            this.f80699f.setOnSeekBarChangeListener(null);
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(@NotNull SeekBar seekBar, int i, boolean z) {
            Intrinsics.checkParameterIsNotNull(seekBar, "seekBar");
            if (isDisposed()) {
                return;
            }
            Boolean bool = this.f80700g;
            if (bool == null || Intrinsics.areEqual(bool, Boolean.valueOf(z))) {
                this.f80701h.onNext(Integer.valueOf(i));
            }
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(@NotNull SeekBar seekBar) {
            Intrinsics.checkParameterIsNotNull(seekBar, "seekBar");
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(@NotNull SeekBar seekBar) {
            Intrinsics.checkParameterIsNotNull(seekBar, "seekBar");
        }
    }

    public pdm(@NotNull SeekBar view, @Nullable Boolean bool) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.f80697e = view;
        this.f80698f = bool;
    }

    @Override // com.jakewharton.rxbinding4.InitialValueObservable
    @NotNull
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public Integer getInitialValue() {
        return Integer.valueOf(this.f80697e.getProgress());
    }

    @Override // com.jakewharton.rxbinding4.InitialValueObservable
    public void subscribeListener(@NotNull Observer<? super Integer> observer) {
        Intrinsics.checkParameterIsNotNull(observer, "observer");
        if (Preconditions.checkMainThread(observer)) {
            C14236a c14236a = new C14236a(this.f80697e, this.f80698f, observer);
            this.f80697e.setOnSeekBarChangeListener(c14236a);
            observer.onSubscribe(c14236a);
        }
    }
}
