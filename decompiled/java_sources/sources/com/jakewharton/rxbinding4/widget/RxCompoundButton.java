package com.jakewharton.rxbinding4.widget;

import android.widget.CompoundButton;
import androidx.annotation.CheckResult;
import com.jakewharton.rxbinding4.InitialValueObservable;
import com.sunia.HTREnginev2.xvl;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"com/sunia/HTREnginev2/xvl"}, m61528d2 = {}, m61529k = 4, m61530mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final class RxCompoundButton {
    @CheckResult
    @NotNull
    public static final InitialValueObservable<Boolean> checkedChanges(@NotNull CompoundButton compoundButton) {
        return xvl.m58353a(compoundButton);
    }
}
