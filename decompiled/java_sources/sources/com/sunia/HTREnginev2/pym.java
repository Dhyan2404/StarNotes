package com.sunia.HTREnginev2;

import com.google.common.math.StatsAccumulator;
import java.util.function.ObjIntConsumer;

/* loaded from: classes6.dex */
public final /* synthetic */ class pym implements ObjIntConsumer {
    @Override // java.util.function.ObjIntConsumer
    public final void accept(Object obj, int i) {
        ((StatsAccumulator) obj).add(i);
    }
}
