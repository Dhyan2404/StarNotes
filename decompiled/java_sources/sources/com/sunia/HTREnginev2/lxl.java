package com.sunia.HTREnginev2;

import android.view.View;
import androidx.annotation.CheckResult;
import com.jakewharton.rxbinding4.view.ViewAttachEvent;
import io.reactivex.rxjava3.core.Observable;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final /* synthetic */ class lxl {
    @CheckResult
    @NotNull
    /* renamed from: a */
    public static final Observable<ViewAttachEvent> m55526a(@NotNull View attachEvents) {
        Intrinsics.checkParameterIsNotNull(attachEvents, "$this$attachEvents");
        return new w1o(attachEvents);
    }
}
