package com.sunia.HTREnginev2;

import java.util.function.Function;
import org.apache.poi.ooxml.util.POIXMLUnits;
import org.openxmlformats.schemas.drawingml.x2006.main.STPercentage;

/* loaded from: classes13.dex */
public final /* synthetic */ class yio implements Function {
    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        return Integer.valueOf(POIXMLUnits.parsePercent((STPercentage) obj));
    }
}
