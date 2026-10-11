package com.sunia.HTREnginev2;

import android.view.View;
import androidx.annotation.CheckResult;
import com.jakewharton.rxbinding4.InitialValueObservable;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final /* synthetic */ class pxl {
    @CheckResult
    @NotNull
    /* renamed from: a */
    public static final InitialValueObservable<Boolean> m56468a(@NotNull View focusChanges) {
        Intrinsics.checkParameterIsNotNull(focusChanges, "$this$focusChanges");
        return new g3o(focusChanges);
    }
}
