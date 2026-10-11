package com.jakewharton.rxbinding4.view;

import android.view.MenuItem;
import androidx.annotation.CheckResult;
import com.sunia.HTREnginev2.cwl;
import com.sunia.HTREnginev2.dwl;
import io.reactivex.rxjava3.core.Observable;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"com/sunia/HTREnginev2/cwl", "com/sunia/HTREnginev2/dwl"}, m61528d2 = {}, m61529k = 4, m61530mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final class RxMenuItem {
    @CheckResult
    @JvmOverloads
    @NotNull
    public static final Observable<MenuItemActionViewEvent> actionViewEvents(@NotNull MenuItem menuItem) {
        return cwl.m53532c(menuItem, null, 1, null);
    }

    @CheckResult
    @JvmOverloads
    @NotNull
    public static final Observable<Unit> clicks(@NotNull MenuItem menuItem) {
        return dwl.m53848c(menuItem, null, 1, null);
    }

    @CheckResult
    @JvmOverloads
    @NotNull
    public static final Observable<MenuItemActionViewEvent> actionViewEvents(@NotNull MenuItem menuItem, @NotNull Function1<? super MenuItemActionViewEvent, Boolean> function1) {
        return cwl.m53531b(menuItem, function1);
    }

    @CheckResult
    @JvmOverloads
    @NotNull
    public static final Observable<Unit> clicks(@NotNull MenuItem menuItem, @NotNull Function1<? super MenuItem, Boolean> function1) {
        return dwl.m53847b(menuItem, function1);
    }
}
