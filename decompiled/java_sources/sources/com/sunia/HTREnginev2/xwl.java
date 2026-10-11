package com.sunia.HTREnginev2;

import android.widget.SearchView;
import androidx.annotation.CheckResult;
import com.jakewharton.rxbinding4.InitialValueObservable;
import com.jakewharton.rxbinding4.widget.SearchViewQueryTextEvent;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final /* synthetic */ class xwl {
    @CheckResult
    @NotNull
    /* renamed from: a */
    public static final InitialValueObservable<SearchViewQueryTextEvent> m58356a(@NotNull SearchView queryTextChangeEvents) {
        Intrinsics.checkParameterIsNotNull(queryTextChangeEvents, "$this$queryTextChangeEvents");
        return new w8m(queryTextChangeEvents);
    }
}
