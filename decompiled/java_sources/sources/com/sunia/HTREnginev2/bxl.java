package com.sunia.HTREnginev2;

import android.widget.TextView;
import androidx.annotation.CheckResult;
import com.jakewharton.rxbinding4.InitialValueObservable;
import com.jakewharton.rxbinding4.widget.TextViewAfterTextChangeEvent;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final /* synthetic */ class bxl {
    @CheckResult
    @NotNull
    /* renamed from: a */
    public static final InitialValueObservable<TextViewAfterTextChangeEvent> m53348a(@NotNull TextView afterTextChangeEvents) {
        Intrinsics.checkParameterIsNotNull(afterTextChangeEvents, "$this$afterTextChangeEvents");
        return new mgn(afterTextChangeEvents);
    }
}
