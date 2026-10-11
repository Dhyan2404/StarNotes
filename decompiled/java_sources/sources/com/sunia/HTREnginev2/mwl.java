package com.sunia.HTREnginev2;

import android.widget.PopupMenu;
import androidx.annotation.CheckResult;
import io.reactivex.rxjava3.core.Observable;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes4.dex */
public final /* synthetic */ class mwl {
    @CheckResult
    @NotNull
    /* renamed from: a */
    public static final Observable<Unit> m55691a(@NotNull PopupMenu dismisses) {
        Intrinsics.checkParameterIsNotNull(dismisses, "$this$dismisses");
        return new h5l(dismisses);
    }
}
