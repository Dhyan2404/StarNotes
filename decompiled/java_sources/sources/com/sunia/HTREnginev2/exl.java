package com.sunia.HTREnginev2;

import android.widget.TextView;
import androidx.annotation.CheckResult;
import com.jakewharton.rxbinding4.internal.AlwaysTrue;
import com.jakewharton.rxbinding4.widget.RxTextView;
import io.reactivex.rxjava3.core.Observable;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final /* synthetic */ class exl {
    @CheckResult
    @JvmOverloads
    @NotNull
    /* renamed from: a */
    public static final Observable<Integer> m54041a(@NotNull TextView textView) {
        return RxTextView.editorActions$default(textView, null, 1, null);
    }

    @CheckResult
    @JvmOverloads
    @NotNull
    /* renamed from: b */
    public static final Observable<Integer> m54042b(@NotNull TextView editorActions, @NotNull Function1<? super Integer, Boolean> handled) {
        Intrinsics.checkParameterIsNotNull(editorActions, "$this$editorActions");
        Intrinsics.checkParameterIsNotNull(handled, "handled");
        return new pgn(editorActions, handled);
    }

    /* renamed from: c */
    public static /* synthetic */ Observable m54043c(TextView textView, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            function1 = AlwaysTrue.INSTANCE;
        }
        return RxTextView.editorActions(textView, function1);
    }
}
