package com.sunia.HTREnginev2;

import androidx.customview.poolingcontainer.PoolingContainerListener;
import java.util.ArrayList;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes3.dex */
public final class f5l {

    /* renamed from: a */
    @NotNull
    public final ArrayList<PoolingContainerListener> f69678a = new ArrayList<>();

    /* renamed from: a */
    public final void m54069a(@NotNull PoolingContainerListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.f69678a.add(listener);
    }

    /* renamed from: b */
    public final void m54070b() {
        int lastIndex;
        for (lastIndex = CollectionsKt__CollectionsKt.getLastIndex(this.f69678a); -1 < lastIndex; lastIndex--) {
            this.f69678a.get(lastIndex).onRelease();
        }
    }

    /* renamed from: c */
    public final void m54071c(@NotNull PoolingContainerListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.f69678a.remove(listener);
    }
}
