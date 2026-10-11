package com.sunia.HTREnginev2;

import android.widget.SeekBar;
import androidx.annotation.CheckResult;
import com.jakewharton.rxbinding4.InitialValueObservable;
import com.jakewharton.rxbinding4.widget.SeekBarChangeEvent;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final /* synthetic */ class zwl {
    @CheckResult
    @NotNull
    /* renamed from: a */
    public static final InitialValueObservable<SeekBarChangeEvent> m58764a(@NotNull SeekBar changeEvents) {
        Intrinsics.checkParameterIsNotNull(changeEvents, "$this$changeEvents");
        return new odm(changeEvents);
    }
}
