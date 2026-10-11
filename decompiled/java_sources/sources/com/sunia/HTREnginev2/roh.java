package com.sunia.HTREnginev2;

import java.awt.geom.Point2D;
import java.util.function.BiFunction;
import org.apache.poi.hemf.record.emfplus.HemfPlusDraw;
import org.apache.poi.util.LittleEndianInputStream;

/* loaded from: classes12.dex */
public final /* synthetic */ class roh implements BiFunction {
    @Override // java.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        return Integer.valueOf(HemfPlusDraw.readPointS((LittleEndianInputStream) obj, (Point2D) obj2));
    }
}
