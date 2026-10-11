package com.sunia.HTREnginev2;

import android.view.View;
import androidx.annotation.CheckResult;
import com.jakewharton.rxbinding4.view.ViewLayoutChangeEvent;
import io.reactivex.rxjava3.core.Observable;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final /* synthetic */ class sxl {
    @CheckResult
    @NotNull
    /* renamed from: a */
    public static final Observable<ViewLayoutChangeEvent> m57272a(@NotNull View layoutChangeEvents) {
        Intrinsics.checkParameterIsNotNull(layoutChangeEvents, "$this$layoutChangeEvents");
        return new f4o(layoutChangeEvents);
    }
}
