package com.sunia.HTREnginev2;

import android.widget.Adapter;
import android.widget.AdapterView;
import androidx.annotation.CheckResult;
import com.jakewharton.rxbinding4.InitialValueObservable;
import com.jakewharton.rxbinding4.widget.AdapterViewSelectionEvent;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final /* synthetic */ class qvl {
    @CheckResult
    @NotNull
    /* renamed from: a */
    public static final <T extends Adapter> InitialValueObservable<AdapterViewSelectionEvent> m56788a(@NotNull AdapterView<T> selectionEvents) {
        Intrinsics.checkParameterIsNotNull(selectionEvents, "$this$selectionEvents");
        return new C13762g8(selectionEvents);
    }
}
