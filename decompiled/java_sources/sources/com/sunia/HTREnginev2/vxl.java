package com.sunia.HTREnginev2;

import android.view.View;
import androidx.annotation.CheckResult;
import androidx.annotation.RequiresApi;
import com.jakewharton.rxbinding4.view.ViewScrollChangeEvent;
import io.reactivex.rxjava3.core.Observable;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final /* synthetic */ class vxl {
    @CheckResult
    @RequiresApi(23)
    @NotNull
    /* renamed from: a */
    public static final Observable<ViewScrollChangeEvent> m57894a(@NotNull View scrollChangeEvents) {
        Intrinsics.checkParameterIsNotNull(scrollChangeEvents, "$this$scrollChangeEvents");
        return new n4o(scrollChangeEvents);
    }
}
