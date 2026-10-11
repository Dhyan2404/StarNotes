package com.sunia.HTREnginev2;

import java.util.function.ToLongFunction;
import org.apache.xmlbeans.SimpleValue;

/* loaded from: classes13.dex */
public final /* synthetic */ class swo implements ToLongFunction {
    @Override // java.util.function.ToLongFunction
    public final long applyAsLong(Object obj) {
        return ((SimpleValue) obj).getLongValue();
    }
}
