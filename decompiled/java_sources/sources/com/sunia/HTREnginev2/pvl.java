package com.sunia.HTREnginev2;

import android.widget.Adapter;
import android.widget.AdapterView;
import androidx.annotation.CheckResult;
import com.jakewharton.rxbinding4.InitialValueObservable;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final /* synthetic */ class pvl {
    @CheckResult
    @NotNull
    /* renamed from: a */
    public static final <T extends Adapter> InitialValueObservable<Integer> m56426a(@NotNull AdapterView<T> itemSelections) {
        Intrinsics.checkParameterIsNotNull(itemSelections, "$this$itemSelections");
        return new C13711f8(itemSelections);
    }
}
