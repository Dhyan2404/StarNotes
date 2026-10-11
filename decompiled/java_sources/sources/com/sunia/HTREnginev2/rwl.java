package com.sunia.HTREnginev2;

import android.widget.RatingBar;
import androidx.annotation.CheckResult;
import com.jakewharton.rxbinding4.InitialValueObservable;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final /* synthetic */ class rwl {
    @CheckResult
    @NotNull
    /* renamed from: a */
    public static final InitialValueObservable<Float> m57039a(@NotNull RatingBar ratingChanges) {
        Intrinsics.checkParameterIsNotNull(ratingChanges, "$this$ratingChanges");
        return new rcl(ratingChanges);
    }
}
