package com.sunia.HTREnginev2;

import android.view.View;
import androidx.annotation.CheckResult;
import io.reactivex.rxjava3.core.Observable;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final /* synthetic */ class wxl {
    @CheckResult
    @NotNull
    /* renamed from: a */
    public static final Observable<Integer> m58142a(@NotNull View systemUiVisibilityChanges) {
        Intrinsics.checkParameterIsNotNull(systemUiVisibilityChanges, "$this$systemUiVisibilityChanges");
        return new p4o(systemUiVisibilityChanges);
    }
}
