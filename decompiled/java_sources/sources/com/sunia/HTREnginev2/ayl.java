package com.sunia.HTREnginev2;

import android.view.View;
import androidx.annotation.CheckResult;
import io.reactivex.rxjava3.core.Observable;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final /* synthetic */ class ayl {
    @CheckResult
    @NotNull
    /* renamed from: a */
    public static final Observable<Unit> m53111a(@NotNull View preDraws, @NotNull Function0<Boolean> proceedDrawingPass) {
        Intrinsics.checkParameterIsNotNull(preDraws, "$this$preDraws");
        Intrinsics.checkParameterIsNotNull(proceedDrawingPass, "proceedDrawingPass");
        return new u4o(preDraws, proceedDrawingPass);
    }
}
