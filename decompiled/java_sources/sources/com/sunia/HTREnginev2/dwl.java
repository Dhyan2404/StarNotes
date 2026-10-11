package com.sunia.HTREnginev2;

import android.view.MenuItem;
import androidx.annotation.CheckResult;
import com.jakewharton.rxbinding4.internal.AlwaysTrue;
import com.jakewharton.rxbinding4.view.RxMenuItem;
import io.reactivex.rxjava3.core.Observable;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final /* synthetic */ class dwl {
    @CheckResult
    @JvmOverloads
    @NotNull
    /* renamed from: a */
    public static final Observable<Unit> m53846a(@NotNull MenuItem menuItem) {
        return m53848c(menuItem, null, 1, null);
    }

    @CheckResult
    @JvmOverloads
    @NotNull
    /* renamed from: b */
    public static final Observable<Unit> m53847b(@NotNull MenuItem clicks, @NotNull Function1<? super MenuItem, Boolean> handled) {
        Intrinsics.checkParameterIsNotNull(clicks, "$this$clicks");
        Intrinsics.checkParameterIsNotNull(handled, "handled");
        return new emj(clicks, handled);
    }

    /* renamed from: c */
    public static /* synthetic */ Observable m53848c(MenuItem menuItem, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            function1 = AlwaysTrue.INSTANCE;
        }
        return RxMenuItem.clicks(menuItem, function1);
    }
}
