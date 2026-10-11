package com.sunia.HTREnginev2;

import android.widget.Adapter;
import androidx.annotation.CheckResult;
import com.jakewharton.rxbinding4.InitialValueObservable;
import com.jakewharton.rxbinding4.widget.AdapterDataChangeObservable;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final /* synthetic */ class rvl {
    @CheckResult
    @NotNull
    /* renamed from: a */
    public static final <T extends Adapter> InitialValueObservable<T> m57038a(@NotNull T dataChanges) {
        Intrinsics.checkParameterIsNotNull(dataChanges, "$this$dataChanges");
        return new AdapterDataChangeObservable(dataChanges);
    }
}
