package com.sunia.HTREnginev2;

import android.view.View;
import androidx.annotation.CheckResult;
import com.jakewharton.rxbinding4.internal.AlwaysTrue;
import com.jakewharton.rxbinding4.view.RxView;
import io.reactivex.rxjava3.core.Observable;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final /* synthetic */ class uxl {
    @CheckResult
    @JvmOverloads
    @NotNull
    /* renamed from: a */
    public static final Observable<Unit> m57673a(@NotNull View view) {
        return m57675c(view, null, 1, null);
    }

    @CheckResult
    @JvmOverloads
    @NotNull
    /* renamed from: b */
    public static final Observable<Unit> m57674b(@NotNull View longClicks, @NotNull Function0<Boolean> handled) {
        Intrinsics.checkParameterIsNotNull(longClicks, "$this$longClicks");
        Intrinsics.checkParameterIsNotNull(handled, "handled");
        return new h4o(longClicks, handled);
    }

    /* renamed from: c */
    public static /* synthetic */ Observable m57675c(View view, Function0 function0, int i, Object obj) {
        if ((i & 1) != 0) {
            function0 = AlwaysTrue.INSTANCE;
        }
        return RxView.longClicks(view, function0);
    }
}
