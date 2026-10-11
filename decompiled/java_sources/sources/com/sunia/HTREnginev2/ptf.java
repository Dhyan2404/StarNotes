package com.sunia.HTREnginev2;

import java.util.function.Function;
import org.apache.poi.ddf.EscherRecord;

/* loaded from: classes12.dex */
public final /* synthetic */ class ptf implements Function {
    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        return ((EscherRecord) obj).copy();
    }
}
