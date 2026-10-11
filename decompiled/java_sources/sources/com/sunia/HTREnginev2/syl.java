package com.sunia.HTREnginev2;

import java.util.function.Function;
import org.apache.xmlbeans.SimpleValue;

/* loaded from: classes16.dex */
public final /* synthetic */ class syl implements Function {
    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        return ((SimpleValue) obj).getByteArrayValue();
    }
}
