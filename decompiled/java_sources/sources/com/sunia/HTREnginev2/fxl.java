package com.sunia.HTREnginev2;

import android.widget.TextView;
import androidx.annotation.CheckResult;
import com.jakewharton.rxbinding4.InitialValueObservable;
import com.jakewharton.rxbinding4.widget.TextViewTextChangeEvent;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final /* synthetic */ class fxl {
    @CheckResult
    @NotNull
    /* renamed from: a */
    public static final InitialValueObservable<TextViewTextChangeEvent> m54205a(@NotNull TextView textChangeEvents) {
        Intrinsics.checkParameterIsNotNull(textChangeEvents, "$this$textChangeEvents");
        return new sgn(textChangeEvents);
    }
}
