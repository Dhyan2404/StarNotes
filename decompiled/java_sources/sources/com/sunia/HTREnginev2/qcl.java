package com.sunia.HTREnginev2;

import android.widget.RatingBar;
import com.jakewharton.rxbinding4.InitialValueObservable;
import com.jakewharton.rxbinding4.internal.Preconditions;
import com.jakewharton.rxbinding4.widget.RatingBarChangeEvent;
import io.reactivex.rxjava3.android.MainThreadDisposable;
import io.reactivex.rxjava3.core.Observer;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final class qcl extends InitialValueObservable<RatingBarChangeEvent> {

    /* renamed from: e */
    public final RatingBar f81904e;

    /* renamed from: com.sunia.HTREnginev2.qcl$a */
    /* loaded from: classes4.dex */
    public static final class C14296a extends MainThreadDisposable implements RatingBar.OnRatingBarChangeListener {

        /* renamed from: f */
        public final RatingBar f81905f;

        /* renamed from: g */
        public final Observer<? super RatingBarChangeEvent> f81906g;

        public C14296a(@NotNull RatingBar view, @NotNull Observer<? super RatingBarChangeEvent> observer) {
            Intrinsics.checkParameterIsNotNull(view, "view");
            Intrinsics.checkParameterIsNotNull(observer, "observer");
            this.f81905f = view;
            this.f81906g = observer;
        }

        @Override // io.reactivex.rxjava3.android.MainThreadDisposable
        public void onDispose() {
            this.f81905f.setOnRatingBarChangeListener(null);
        }

        @Override // android.widget.RatingBar.OnRatingBarChangeListener
        public void onRatingChanged(@NotNull RatingBar ratingBar, float f, boolean z) {
            Intrinsics.checkParameterIsNotNull(ratingBar, "ratingBar");
            if (isDisposed()) {
                return;
            }
            this.f81906g.onNext(new RatingBarChangeEvent(ratingBar, f, z));
        }
    }

    public qcl(@NotNull RatingBar view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.f81904e = view;
    }

    @Override // com.jakewharton.rxbinding4.InitialValueObservable
    @NotNull
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public RatingBarChangeEvent getInitialValue() {
        RatingBar ratingBar = this.f81904e;
        return new RatingBarChangeEvent(ratingBar, ratingBar.getRating(), false);
    }

    @Override // com.jakewharton.rxbinding4.InitialValueObservable
    public void subscribeListener(@NotNull Observer<? super RatingBarChangeEvent> observer) {
        Intrinsics.checkParameterIsNotNull(observer, "observer");
        if (Preconditions.checkMainThread(observer)) {
            C14296a c14296a = new C14296a(this.f81904e, observer);
            this.f81904e.setOnRatingBarChangeListener(c14296a);
            observer.onSubscribe(c14296a);
        }
    }
}
