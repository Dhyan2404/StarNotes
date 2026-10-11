package com.sunia.HTREnginev2;

import java.util.function.Function;
import org.apache.poi.ss.util.CellRangeAddress;

/* loaded from: classes12.dex */
public final /* synthetic */ class o9g implements Function {
    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        return ((CellRangeAddress) obj).copy();
    }
}
