package com.sunia.HTREnginev2;

import android.view.MenuItem;
import android.widget.Toolbar;
import androidx.annotation.CheckResult;
import androidx.annotation.RequiresApi;
import io.reactivex.rxjava3.core.Observable;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final /* synthetic */ class ixl {
    @CheckResult
    @RequiresApi(21)
    @NotNull
    /* renamed from: a */
    public static final Observable<MenuItem> m54810a(@NotNull Toolbar itemClicks) {
        Intrinsics.checkParameterIsNotNull(itemClicks, "$this$itemClicks");
        return new ujn(itemClicks);
    }
}
