package com.sunia.HTREnginev2;

import com.google.common.math.StatsAccumulator;
import java.util.function.ObjDoubleConsumer;

/* loaded from: classes6.dex */
public final /* synthetic */ class oym implements ObjDoubleConsumer {
    @Override // java.util.function.ObjDoubleConsumer
    public final void accept(Object obj, double d) {
        ((StatsAccumulator) obj).add(d);
    }
}
