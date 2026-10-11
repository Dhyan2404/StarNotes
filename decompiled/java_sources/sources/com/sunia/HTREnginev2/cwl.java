package com.sunia.HTREnginev2;

import android.view.MenuItem;
import androidx.annotation.CheckResult;
import com.jakewharton.rxbinding4.internal.AlwaysTrue;
import com.jakewharton.rxbinding4.view.MenuItemActionViewEvent;
import com.jakewharton.rxbinding4.view.RxMenuItem;
import io.reactivex.rxjava3.core.Observable;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final /* synthetic */ class cwl {
    @CheckResult
    @JvmOverloads
    @NotNull
    /* renamed from: a */
    public static final Observable<MenuItemActionViewEvent> m53530a(@NotNull MenuItem menuItem) {
        return m53532c(menuItem, null, 1, null);
    }

    @CheckResult
    @JvmOverloads
    @NotNull
    /* renamed from: b */
    public static final Observable<MenuItemActionViewEvent> m53531b(@NotNull MenuItem actionViewEvents, @NotNull Function1<? super MenuItemActionViewEvent, Boolean> handled) {
        Intrinsics.checkParameterIsNotNull(actionViewEvents, "$this$actionViewEvents");
        Intrinsics.checkParameterIsNotNull(handled, "handled");
        return new dmj(actionViewEvents, handled);
    }

    /* renamed from: c */
    public static /* synthetic */ Observable m53532c(MenuItem menuItem, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            function1 = AlwaysTrue.INSTANCE;
        }
        return RxMenuItem.actionViewEvents(menuItem, function1);
    }
}
