package com.jakewharton.rxbinding4.widget;

import android.widget.TextView;
import androidx.annotation.CheckResult;
import com.jakewharton.rxbinding4.InitialValueObservable;
import com.sunia.HTREnginev2.bxl;
import com.sunia.HTREnginev2.cxl;
import com.sunia.HTREnginev2.dxl;
import com.sunia.HTREnginev2.exl;
import com.sunia.HTREnginev2.fxl;
import com.sunia.HTREnginev2.gxl;
import io.reactivex.rxjava3.core.Observable;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"com/sunia/HTREnginev2/bxl", "com/sunia/HTREnginev2/cxl", "com/sunia/HTREnginev2/dxl", "com/sunia/HTREnginev2/exl", "com/sunia/HTREnginev2/fxl", "com/sunia/HTREnginev2/gxl"}, m61528d2 = {}, m61529k = 4, m61530mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final class RxTextView {
    @CheckResult
    @NotNull
    public static final InitialValueObservable<TextViewAfterTextChangeEvent> afterTextChangeEvents(@NotNull TextView textView) {
        return bxl.m53348a(textView);
    }

    @CheckResult
    @NotNull
    public static final InitialValueObservable<TextViewBeforeTextChangeEvent> beforeTextChangeEvents(@NotNull TextView textView) {
        return cxl.m53537a(textView);
    }

    @CheckResult
    @JvmOverloads
    @NotNull
    public static final Observable<TextViewEditorActionEvent> editorActionEvents(@NotNull TextView textView) {
        return dxl.m53851c(textView, null, 1, null);
    }

    @CheckResult
    @JvmOverloads
    @NotNull
    public static final Observable<Integer> editorActions(@NotNull TextView textView) {
        return exl.m54043c(textView, null, 1, null);
    }

    @CheckResult
    @NotNull
    public static final InitialValueObservable<TextViewTextChangeEvent> textChangeEvents(@NotNull TextView textView) {
        return fxl.m54205a(textView);
    }

    @CheckResult
    @NotNull
    public static final InitialValueObservable<CharSequence> textChanges(@NotNull TextView textView) {
        return gxl.m54369a(textView);
    }

    @CheckResult
    @JvmOverloads
    @NotNull
    public static final Observable<TextViewEditorActionEvent> editorActionEvents(@NotNull TextView textView, @NotNull Function1<? super TextViewEditorActionEvent, Boolean> function1) {
        return dxl.m53850b(textView, function1);
    }

    @CheckResult
    @JvmOverloads
    @NotNull
    public static final Observable<Integer> editorActions(@NotNull TextView textView, @NotNull Function1<? super Integer, Boolean> function1) {
        return exl.m54042b(textView, function1);
    }
}
