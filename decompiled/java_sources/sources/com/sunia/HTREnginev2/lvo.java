package com.sunia.HTREnginev2;

import java.math.BigInteger;
import java.util.function.BiConsumer;
import org.apache.xmlbeans.impl.values.XmlObjectBase;

/* loaded from: classes13.dex */
public final /* synthetic */ class lvo implements BiConsumer {
    @Override // java.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        ((XmlObjectBase) obj).setBigIntegerValue((BigInteger) obj2);
    }
}
