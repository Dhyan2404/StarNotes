package com.jakewharton.rxbinding4.widget;

import android.widget.RadioGroup;
import androidx.annotation.CheckResult;
import com.jakewharton.rxbinding4.InitialValueObservable;
import com.sunia.HTREnginev2.owl;
import com.sunia.HTREnginev2.pwl;
import io.reactivex.rxjava3.functions.Consumer;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"com/sunia/HTREnginev2/owl", "com/sunia/HTREnginev2/pwl"}, m61528d2 = {}, m61529k = 4, m61530mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final class RxRadioGroup {
    @CheckResult
    @NotNull
    public static final Consumer<? super Integer> checked(@NotNull RadioGroup radioGroup) {
        return pwl.m56450a(radioGroup);
    }

    @CheckResult
    @NotNull
    public static final InitialValueObservable<Integer> checkedChanges(@NotNull RadioGroup radioGroup) {
        return owl.m56176a(radioGroup);
    }
}
