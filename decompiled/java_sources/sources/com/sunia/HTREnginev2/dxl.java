package com.sunia.HTREnginev2;

import android.widget.TextView;
import androidx.annotation.CheckResult;
import com.jakewharton.rxbinding4.internal.AlwaysTrue;
import com.jakewharton.rxbinding4.widget.RxTextView;
import com.jakewharton.rxbinding4.widget.TextViewEditorActionEvent;
import io.reactivex.rxjava3.core.Observable;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final /* synthetic */ class dxl {
    @CheckResult
    @JvmOverloads
    @NotNull
    /* renamed from: a */
    public static final Observable<TextViewEditorActionEvent> m53849a(@NotNull TextView textView) {
        return m53851c(textView, null, 1, null);
    }

    @CheckResult
    @JvmOverloads
    @NotNull
    /* renamed from: b */
    public static final Observable<TextViewEditorActionEvent> m53850b(@NotNull TextView editorActionEvents, @NotNull Function1<? super TextViewEditorActionEvent, Boolean> handled) {
        Intrinsics.checkParameterIsNotNull(editorActionEvents, "$this$editorActionEvents");
        Intrinsics.checkParameterIsNotNull(handled, "handled");
        return new ogn(editorActionEvents, handled);
    }

    /* renamed from: c */
    public static /* synthetic */ Observable m53851c(TextView textView, Function1 function1, int i, Object obj) {
        if ((i & 1) != 0) {
            function1 = AlwaysTrue.INSTANCE;
        }
        return RxTextView.editorActionEvents(textView, function1);
    }
}
