package com.sunia.HTREnginev2;

import com.onyx.android.sdk.base.data.TouchPointList;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes8.dex */
public final class fmm {

    /* renamed from: a */
    @NotNull
    public TouchPointList f70157a = new TouchPointList();

    @NotNull
    /* renamed from: a */
    public final TouchPointList m54138a() {
        return this.f70157a;
    }

    /* renamed from: b */
    public final void m54139b(@NotNull TouchPointList touchPointList) {
        Intrinsics.checkNotNullParameter(touchPointList, "<set-?>");
        this.f70157a = touchPointList;
    }
}
