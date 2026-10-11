package com.sunia.HTREnginev2;

import java.util.function.Function;
import org.apache.poi.util.Units;

/* loaded from: classes13.dex */
public final /* synthetic */ class zgo implements Function {
    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        return Double.valueOf(Units.toPoints(((Integer) obj).intValue()));
    }
}
