package com.sunia.HTREnginev2;

import android.widget.RatingBar;
import com.jakewharton.rxbinding4.InitialValueObservable;
import com.jakewharton.rxbinding4.internal.Preconditions;
import io.reactivex.rxjava3.android.MainThreadDisposable;
import io.reactivex.rxjava3.core.Observer;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final class rcl extends InitialValueObservable<Float> {

    /* renamed from: e */
    public final RatingBar f82977e;

    /* renamed from: com.sunia.HTREnginev2.rcl$a */
    /* loaded from: classes4.dex */
    public static final class C14345a extends MainThreadDisposable implements RatingBar.OnRatingBarChangeListener {

        /* renamed from: f */
        public final RatingBar f82978f;

        /* renamed from: g */
        public final Observer<? super Float> f82979g;

        public C14345a(@NotNull RatingBar view, @NotNull Observer<? super Float> observer) {
            Intrinsics.checkParameterIsNotNull(view, "view");
            Intrinsics.checkParameterIsNotNull(observer, "observer");
            this.f82978f = view;
            this.f82979g = observer;
        }

        @Override // io.reactivex.rxjava3.android.MainThreadDisposable
        public void onDispose() {
            this.f82978f.setOnRatingBarChangeListener(null);
        }

        @Override // android.widget.RatingBar.OnRatingBarChangeListener
        public void onRatingChanged(@NotNull RatingBar ratingBar, float f, boolean z) {
            Intrinsics.checkParameterIsNotNull(ratingBar, "ratingBar");
            if (isDisposed()) {
                return;
            }
            this.f82979g.onNext(Float.valueOf(f));
        }
    }

    public rcl(@NotNull RatingBar view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.f82977e = view;
    }

    @Override // com.jakewharton.rxbinding4.InitialValueObservable
    @NotNull
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public Float getInitialValue() {
        return Float.valueOf(this.f82977e.getRating());
    }

    @Override // com.jakewharton.rxbinding4.InitialValueObservable
    public void subscribeListener(@NotNull Observer<? super Float> observer) {
        Intrinsics.checkParameterIsNotNull(observer, "observer");
        if (Preconditions.checkMainThread(observer)) {
            C14345a c14345a = new C14345a(this.f82977e, observer);
            this.f82977e.setOnRatingBarChangeListener(c14345a);
            observer.onSubscribe(c14345a);
        }
    }
}
