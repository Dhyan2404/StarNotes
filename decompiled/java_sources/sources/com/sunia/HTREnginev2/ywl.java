package com.sunia.HTREnginev2;

import android.widget.SearchView;
import androidx.annotation.CheckResult;
import com.jakewharton.rxbinding4.InitialValueObservable;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final /* synthetic */ class ywl {
    @CheckResult
    @NotNull
    /* renamed from: a */
    public static final InitialValueObservable<CharSequence> m58492a(@NotNull SearchView queryTextChanges) {
        Intrinsics.checkParameterIsNotNull(queryTextChanges, "$this$queryTextChanges");
        return new x8m(queryTextChanges);
    }
}
