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
public final /* synthetic */ class xxl {
    @CheckResult
    @JvmOverloads
    @NotNull
    /* renamed from: a */
    public static final Observable<MotionEvent> m58363a(@NotNull View view) {
        return m58365c(view, null, 1, null);
    }

    @CheckResult
    @JvmOverloads
    @NotNull
    /* renamed from: b */
    public static final Observable<MotionEvent> m58364b(@NotNull View touches, @NotNull Function1<? super MotionEvent, Boolean> handled) {
        Intrinsics.checkParameterIsNotNull(touches, "$this$touches");
        Intrinsics.checkParameterIsNotNull(handled, "handled");
        return new q4o(touches, handled);
    }

    /* renamed from: c */
    public static /* synthetic */ Observable m58365c(View view, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            function1 = AlwaysTrue.INSTANCE;
        }
        return RxView.touches(view, function1);
    }
}
