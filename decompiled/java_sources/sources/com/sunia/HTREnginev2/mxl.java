package com.sunia.HTREnginev2;

import android.view.View;
import androidx.annotation.CheckResult;
import io.reactivex.rxjava3.core.Observable;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final /* synthetic */ class mxl {
    @CheckResult
    @NotNull
    /* renamed from: a */
    public static final Observable<Unit> m55692a(@NotNull View attaches) {
        Intrinsics.checkParameterIsNotNull(attaches, "$this$attaches");
        return new x1o(attaches, true);
    }

    @CheckResult
    @NotNull
    /* renamed from: b */
    public static final Observable<Unit> m55693b(@NotNull View detaches) {
        Intrinsics.checkParameterIsNotNull(detaches, "$this$detaches");
        return new x1o(detaches, false);
    }
}
