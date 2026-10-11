package com.sunia.HTREnginev2;

import android.widget.SeekBar;
import com.jakewharton.rxbinding4.InitialValueObservable;
import com.jakewharton.rxbinding4.internal.Preconditions;
import com.jakewharton.rxbinding4.widget.SeekBarChangeEvent;
import com.jakewharton.rxbinding4.widget.SeekBarProgressChangeEvent;
import com.jakewharton.rxbinding4.widget.SeekBarStartChangeEvent;
import com.jakewharton.rxbinding4.widget.SeekBarStopChangeEvent;
import io.reactivex.rxjava3.android.MainThreadDisposable;
import io.reactivex.rxjava3.core.Observer;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final class odm extends InitialValueObservable<SeekBarChangeEvent> {

    /* renamed from: e */
    public final SeekBar f79607e;

    /* renamed from: com.sunia.HTREnginev2.odm$a */
    /* loaded from: classes4.dex */
    public static final class C14183a extends MainThreadDisposable implements SeekBar.OnSeekBarChangeListener {

        /* renamed from: f */
        public final SeekBar f79608f;

        /* renamed from: g */
        public final Observer<? super SeekBarChangeEvent> f79609g;

        public C14183a(@NotNull SeekBar view, @NotNull Observer<? super SeekBarChangeEvent> observer) {
            Intrinsics.checkParameterIsNotNull(view, "view");
            Intrinsics.checkParameterIsNotNull(observer, "observer");
            this.f79608f = view;
            this.f79609g = observer;
        }

        @Override // io.reactivex.rxjava3.android.MainThreadDisposable
        public void onDispose() {
            this.f79608f.setOnSeekBarChangeListener(null);
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onProgressChanged(@NotNull SeekBar seekBar, int i, boolean z) {
            Intrinsics.checkParameterIsNotNull(seekBar, "seekBar");
            if (isDisposed()) {
                return;
            }
            this.f79609g.onNext(new SeekBarProgressChangeEvent(seekBar, i, z));
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStartTrackingTouch(@NotNull SeekBar seekBar) {
            Intrinsics.checkParameterIsNotNull(seekBar, "seekBar");
            if (isDisposed()) {
                return;
            }
            this.f79609g.onNext(new SeekBarStartChangeEvent(seekBar));
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public void onStopTrackingTouch(@NotNull SeekBar seekBar) {
            Intrinsics.checkParameterIsNotNull(seekBar, "seekBar");
            if (isDisposed()) {
                return;
            }
            this.f79609g.onNext(new SeekBarStopChangeEvent(seekBar));
        }
    }

    public odm(@NotNull SeekBar view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.f79607e = view;
    }

    @Override // com.jakewharton.rxbinding4.InitialValueObservable
    @NotNull
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public SeekBarProgressChangeEvent getInitialValue() {
        SeekBar seekBar = this.f79607e;
        return new SeekBarProgressChangeEvent(seekBar, seekBar.getProgress(), false);
    }

    @Override // com.jakewharton.rxbinding4.InitialValueObservable
    public void subscribeListener(@NotNull Observer<? super SeekBarChangeEvent> observer) {
        Intrinsics.checkParameterIsNotNull(observer, "observer");
        if (Preconditions.checkMainThread(observer)) {
            C14183a c14183a = new C14183a(this.f79607e, observer);
            this.f79607e.setOnSeekBarChangeListener(c14183a);
            observer.onSubscribe(c14183a);
        }
    }
}
