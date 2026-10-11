package com.sunia.HTREnginev2;

import android.widget.RadioGroup;
import androidx.annotation.CheckResult;
import com.jakewharton.rxbinding4.InitialValueObservable;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final /* synthetic */ class owl {
    @CheckResult
    @NotNull
    /* renamed from: a */
    public static final InitialValueObservable<Integer> m56176a(@NotNull RadioGroup checkedChanges) {
        Intrinsics.checkParameterIsNotNull(checkedChanges, "$this$checkedChanges");
        return new hcl(checkedChanges);
    }
}
