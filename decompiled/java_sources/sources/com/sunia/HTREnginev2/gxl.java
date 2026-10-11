package com.sunia.HTREnginev2;

import android.widget.TextView;
import androidx.annotation.CheckResult;
import com.jakewharton.rxbinding4.InitialValueObservable;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final /* synthetic */ class gxl {
    @CheckResult
    @NotNull
    /* renamed from: a */
    public static final InitialValueObservable<CharSequence> m54369a(@NotNull TextView textChanges) {
        Intrinsics.checkParameterIsNotNull(textChanges, "$this$textChanges");
        return new tgn(textChanges);
    }
}
