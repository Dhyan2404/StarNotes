package com.sunia.HTREnginev2;

import android.view.View;
import androidx.annotation.CheckResult;
import io.reactivex.rxjava3.core.Observable;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final /* synthetic */ class nxl {
    @CheckResult
    @NotNull
    /* renamed from: a */
    public static final Observable<Unit> m55808a(@NotNull View clicks) {
        Intrinsics.checkParameterIsNotNull(clicks, "$this$clicks");
        return new y1o(clicks);
    }
}
