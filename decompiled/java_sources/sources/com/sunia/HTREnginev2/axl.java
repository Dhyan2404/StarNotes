package com.sunia.HTREnginev2;

import android.widget.SeekBar;
import androidx.annotation.CheckResult;
import com.jakewharton.rxbinding4.InitialValueObservable;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final /* synthetic */ class axl {
    @CheckResult
    @NotNull
    /* renamed from: a */
    public static final InitialValueObservable<Integer> m53106a(@NotNull SeekBar changes) {
        Intrinsics.checkParameterIsNotNull(changes, "$this$changes");
        return new pdm(changes, null);
    }

    @CheckResult
    @NotNull
    /* renamed from: b */
    public static final InitialValueObservable<Integer> m53107b(@NotNull SeekBar systemChanges) {
        Intrinsics.checkParameterIsNotNull(systemChanges, "$this$systemChanges");
        return new pdm(systemChanges, Boolean.FALSE);
    }

    @CheckResult
    @NotNull
    /* renamed from: c */
    public static final InitialValueObservable<Integer> m53108c(@NotNull SeekBar userChanges) {
        Intrinsics.checkParameterIsNotNull(userChanges, "$this$userChanges");
        return new pdm(userChanges, Boolean.TRUE);
    }
}
