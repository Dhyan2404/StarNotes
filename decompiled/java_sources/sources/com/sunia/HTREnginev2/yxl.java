package com.sunia.HTREnginev2;

import android.view.View;
import androidx.annotation.CheckResult;
import androidx.annotation.RequiresApi;
import io.reactivex.rxjava3.core.Observable;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final /* synthetic */ class yxl {
    @CheckResult
    @RequiresApi(16)
    @NotNull
    /* renamed from: a */
    public static final Observable<Unit> m58495a(@NotNull View draws) {
        Intrinsics.checkParameterIsNotNull(draws, "$this$draws");
        return new s4o(draws);
    }
}
