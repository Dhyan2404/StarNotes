package com.sunia.HTREnginev2;

import android.view.View;
import androidx.annotation.CheckResult;
import io.reactivex.rxjava3.core.Observable;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final /* synthetic */ class zxl {
    @CheckResult
    @NotNull
    /* renamed from: a */
    public static final Observable<Unit> m58768a(@NotNull View globalLayouts) {
        Intrinsics.checkParameterIsNotNull(globalLayouts, "$this$globalLayouts");
        return new t4o(globalLayouts);
    }
}
