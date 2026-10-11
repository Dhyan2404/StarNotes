package com.sunia.HTREnginev2;

import java.util.function.ToIntFunction;
import org.apache.xmlbeans.SimpleValue;

/* loaded from: classes13.dex */
public final /* synthetic */ class rwo implements ToIntFunction {
    @Override // java.util.function.ToIntFunction
    public final int applyAsInt(Object obj) {
        return ((SimpleValue) obj).getIntValue();
    }
}
