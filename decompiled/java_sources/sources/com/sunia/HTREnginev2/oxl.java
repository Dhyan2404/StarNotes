package com.sunia.HTREnginev2;

import android.view.DragEvent;
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
public final /* synthetic */ class oxl {
    @CheckResult
    @JvmOverloads
    @NotNull
    /* renamed from: a */
    public static final Observable<DragEvent> m56177a(@NotNull View view) {
        return m56179c(view, null, 1, null);
    }

    @CheckResult
    @JvmOverloads
    @NotNull
    /* renamed from: b */
    public static final Observable<DragEvent> m56178b(@NotNull View drags, @NotNull Function1<? super DragEvent, Boolean> handled) {
        Intrinsics.checkParameterIsNotNull(drags, "$this$drags");
        Intrinsics.checkParameterIsNotNull(handled, "handled");
        return new a3o(drags, handled);
    }

    /* renamed from: c */
    public static /* synthetic */ Observable m56179c(View view, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            function1 = AlwaysTrue.INSTANCE;
        }
        return RxView.drags(view, function1);
    }
}
