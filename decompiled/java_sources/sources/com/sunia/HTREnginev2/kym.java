package com.sunia.HTREnginev2;

import com.google.common.math.StatsAccumulator;
import java.util.function.BiConsumer;

/* loaded from: classes6.dex */
public final /* synthetic */ class kym implements BiConsumer {
    @Override // java.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        ((StatsAccumulator) obj).addAll((StatsAccumulator) obj2);
    }
}
