package com.sunia.HTREnginev2;

import android.widget.Toolbar;
import androidx.annotation.CheckResult;
import androidx.annotation.RequiresApi;
import com.jakewharton.rxbinding4.widget.ToolbarNavigationClickObservable;
import io.reactivex.rxjava3.core.Observable;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final /* synthetic */ class jxl {
    @CheckResult
    @RequiresApi(21)
    @NotNull
    /* renamed from: a */
    public static final Observable<Unit> m55070a(@NotNull Toolbar navigationClicks) {
        Intrinsics.checkParameterIsNotNull(navigationClicks, "$this$navigationClicks");
        return new ToolbarNavigationClickObservable(navigationClicks);
    }
}
