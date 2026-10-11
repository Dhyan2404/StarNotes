package com.jakewharton.rxbinding4.widget;

import android.widget.SearchView;
import androidx.annotation.CheckResult;
import com.jakewharton.rxbinding4.InitialValueObservable;
import com.sunia.HTREnginev2.wwl;
import com.sunia.HTREnginev2.xwl;
import com.sunia.HTREnginev2.ywl;
import io.reactivex.rxjava3.functions.Consumer;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"com/sunia/HTREnginev2/wwl", "com/sunia/HTREnginev2/xwl", "com/sunia/HTREnginev2/ywl"}, m61528d2 = {}, m61529k = 4, m61530mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final class RxSearchView {
    @CheckResult
    @NotNull
    public static final Consumer<? super CharSequence> query(@NotNull SearchView searchView, boolean z) {
        return wwl.m58140a(searchView, z);
    }

    @CheckResult
    @NotNull
    public static final InitialValueObservable<SearchViewQueryTextEvent> queryTextChangeEvents(@NotNull SearchView searchView) {
        return xwl.m58356a(searchView);
    }

    @CheckResult
    @NotNull
    public static final InitialValueObservable<CharSequence> queryTextChanges(@NotNull SearchView searchView) {
        return ywl.m58492a(searchView);
    }
}
