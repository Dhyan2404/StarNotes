package com.sunia.HTREnginev2;

import android.view.View;
import androidx.annotation.CheckResult;
import io.reactivex.rxjava3.core.Observable;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final /* synthetic */ class txl {
    @CheckResult
    @NotNull
    /* renamed from: a */
    public static final Observable<Unit> m57477a(@NotNull View layoutChanges) {
        Intrinsics.checkParameterIsNotNull(layoutChanges, "$this$layoutChanges");
        return new g4o(layoutChanges);
    }
}
