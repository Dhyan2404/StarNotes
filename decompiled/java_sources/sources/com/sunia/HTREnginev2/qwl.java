package com.sunia.HTREnginev2;

import android.widget.RatingBar;
import androidx.annotation.CheckResult;
import com.jakewharton.rxbinding4.InitialValueObservable;
import com.jakewharton.rxbinding4.widget.RatingBarChangeEvent;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final /* synthetic */ class qwl {
    @CheckResult
    @NotNull
    /* renamed from: a */
    public static final InitialValueObservable<RatingBarChangeEvent> m56789a(@NotNull RatingBar ratingChangeEvents) {
        Intrinsics.checkParameterIsNotNull(ratingChangeEvents, "$this$ratingChangeEvents");
        return new qcl(ratingChangeEvents);
    }
}
