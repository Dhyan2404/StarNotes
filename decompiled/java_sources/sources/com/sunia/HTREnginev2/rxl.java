package com.sunia.HTREnginev2;

import android.view.KeyEvent;
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
public final /* synthetic */ class rxl {
    @CheckResult
    @JvmOverloads
    @NotNull
    /* renamed from: a */
    public static final Observable<KeyEvent> m57040a(@NotNull View view) {
        return m57042c(view, null, 1, null);
    }

    @CheckResult
    @JvmOverloads
    @NotNull
    /* renamed from: b */
    public static final Observable<KeyEvent> m57041b(@NotNull View keys, @NotNull Function1<? super KeyEvent, Boolean> handled) {
        Intrinsics.checkParameterIsNotNull(keys, "$this$keys");
        Intrinsics.checkParameterIsNotNull(handled, "handled");
        return new s3o(keys, handled);
    }

    /* renamed from: c */
    public static /* synthetic */ Observable m57042c(View view, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            function1 = AlwaysTrue.INSTANCE;
        }
        return RxView.keys(view, function1);
    }
}
