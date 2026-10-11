package com.jakewharton.rxbinding4.widget;

import android.view.MenuItem;
import android.widget.Toolbar;
import androidx.annotation.CheckResult;
import androidx.annotation.RequiresApi;
import com.sunia.HTREnginev2.ixl;
import com.sunia.HTREnginev2.jxl;
import io.reactivex.rxjava3.core.Observable;
import kotlin.Metadata;
import kotlin.Unit;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"com/sunia/HTREnginev2/ixl", "com/sunia/HTREnginev2/jxl"}, m61528d2 = {}, m61529k = 4, m61530mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final class RxToolbar {
    @CheckResult
    @RequiresApi(21)
    @NotNull
    public static final Observable<MenuItem> itemClicks(@NotNull Toolbar toolbar) {
        return ixl.m54810a(toolbar);
    }

    @CheckResult
    @RequiresApi(21)
    @NotNull
    public static final Observable<Unit> navigationClicks(@NotNull Toolbar toolbar) {
        return jxl.m55070a(toolbar);
    }
}
