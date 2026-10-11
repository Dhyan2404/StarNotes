package com.sunia.HTREnginev2;

import java.util.function.ToDoubleFunction;
import org.apache.xmlbeans.SimpleValue;

/* loaded from: classes13.dex */
public final /* synthetic */ class pwo implements ToDoubleFunction {
    @Override // java.util.function.ToDoubleFunction
    public final double applyAsDouble(Object obj) {
        return ((SimpleValue) obj).getDoubleValue();
    }
}
