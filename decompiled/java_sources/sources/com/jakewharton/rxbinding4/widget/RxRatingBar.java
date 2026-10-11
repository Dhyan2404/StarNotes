package com.jakewharton.rxbinding4.widget;

import android.widget.RatingBar;
import androidx.annotation.CheckResult;
import com.jakewharton.rxbinding4.InitialValueObservable;
import com.sunia.HTREnginev2.qwl;
import com.sunia.HTREnginev2.rwl;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"com/sunia/HTREnginev2/qwl", "com/sunia/HTREnginev2/rwl"}, m61528d2 = {}, m61529k = 4, m61530mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final class RxRatingBar {
    @CheckResult
    @NotNull
    public static final InitialValueObservable<RatingBarChangeEvent> ratingChangeEvents(@NotNull RatingBar ratingBar) {
        return qwl.m56789a(ratingBar);
    }

    @CheckResult
    @NotNull
    public static final InitialValueObservable<Float> ratingChanges(@NotNull RatingBar ratingBar) {
        return rwl.m57039a(ratingBar);
    }
}
