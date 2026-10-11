package com.sunia.HTREnginev2;

import android.widget.CompoundButton;
import androidx.annotation.CheckResult;
import com.jakewharton.rxbinding4.InitialValueObservable;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final /* synthetic */ class xvl {
    @CheckResult
    @NotNull
    /* renamed from: a */
    public static final InitialValueObservable<Boolean> m58353a(@NotNull CompoundButton checkedChanges) {
        Intrinsics.checkParameterIsNotNull(checkedChanges, "$this$checkedChanges");
        return new p7e(checkedChanges);
    }
}
