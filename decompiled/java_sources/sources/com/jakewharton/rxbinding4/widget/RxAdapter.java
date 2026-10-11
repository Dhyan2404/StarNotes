package com.jakewharton.rxbinding4.widget;

import android.widget.Adapter;
import androidx.annotation.CheckResult;
import com.jakewharton.rxbinding4.InitialValueObservable;
import com.sunia.HTREnginev2.rvl;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"com/sunia/HTREnginev2/rvl"}, m61528d2 = {}, m61529k = 4, m61530mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final class RxAdapter {
    @CheckResult
    @NotNull
    public static final <T extends Adapter> InitialValueObservable<T> dataChanges(@NotNull T t) {
        return rvl.m57038a(t);
    }
}
