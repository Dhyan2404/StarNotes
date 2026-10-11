package com.sunia.HTREnginev2;

import android.widget.TextView;
import androidx.annotation.CheckResult;
import com.jakewharton.rxbinding4.InitialValueObservable;
import com.jakewharton.rxbinding4.widget.TextViewBeforeTextChangeEvent;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final /* synthetic */ class cxl {
    @CheckResult
    @NotNull
    /* renamed from: a */
    public static final InitialValueObservable<TextViewBeforeTextChangeEvent> m53537a(@NotNull TextView beforeTextChangeEvents) {
        Intrinsics.checkParameterIsNotNull(beforeTextChangeEvents, "$this$beforeTextChangeEvents");
        return new ngn(beforeTextChangeEvents);
    }
}
