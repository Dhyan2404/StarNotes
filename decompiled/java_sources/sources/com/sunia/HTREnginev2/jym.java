package com.sunia.HTREnginev2;

import com.google.common.math.StatsAccumulator;
import java.util.function.ObjLongConsumer;

/* loaded from: classes6.dex */
public final /* synthetic */ class jym implements ObjLongConsumer {
    @Override // java.util.function.ObjLongConsumer
    public final void accept(Object obj, long j) {
        ((StatsAccumulator) obj).add(j);
    }
}
