package com.sunia.HTREnginev2;

import java.util.function.BiConsumer;
import org.apache.xmlbeans.GDate;
import org.apache.xmlbeans.impl.values.XmlObjectBase;

/* loaded from: classes13.dex */
public final /* synthetic */ class mvo implements BiConsumer {
    @Override // java.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        ((XmlObjectBase) obj).setGDateValue((GDate) obj2);
    }
}
