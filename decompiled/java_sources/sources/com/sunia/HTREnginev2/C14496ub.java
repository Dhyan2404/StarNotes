package com.sunia.HTREnginev2;

import android.app.Application;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@RequiresApi(28)
/* renamed from: com.sunia.HTREnginev2.ub */
/* loaded from: classes3.dex */
public final class C14496ub {

    /* renamed from: a */
    @NotNull
    public static final C14496ub f86304a = new C14496ub();

    @DoNotInline
    @NotNull
    /* renamed from: a */
    public final String m57602a() {
        String processName = Application.getProcessName();
        Intrinsics.checkNotNullExpressionValue(processName, "getProcessName()");
        return processName;
    }
}
