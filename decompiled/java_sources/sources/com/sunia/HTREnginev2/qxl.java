package com.sunia.HTREnginev2;

import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.CheckResult;
import com.jakewharton.rxbinding4.internal.AlwaysTrue;
import com.jakewharton.rxbinding4.view.RxView;
import io.reactivex.rxjava3.core.Observable;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final /* synthetic */ class qxl {
    @CheckResult
    @JvmOverloads
    @NotNull
    /* renamed from: a */
    public static final Observable<MotionEvent> m56790a(@NotNull View view) {
        return m56792c(view, null, 1, null);
    }

    @CheckResult
    @JvmOverloads
    @NotNull
    /* renamed from: b */
    public static final Observable<MotionEvent> m56791b(@NotNull View hovers, @NotNull Function1<? super MotionEvent, Boolean> handled) {
        Intrinsics.checkParameterIsNotNull(hovers, "$this$hovers");
        Intrinsics.checkParameterIsNotNull(handled, "handled");
        return new m3o(hovers, handled);
    }

    /* renamed from: c */
    public static /* synthetic */ Observable m56792c(View view, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            function1 = AlwaysTrue.INSTANCE;
        }
        return RxView.hovers(view, function1);
    }
}
