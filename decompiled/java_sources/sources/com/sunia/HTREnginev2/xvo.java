package com.sunia.HTREnginev2;

import java.util.Date;
import java.util.function.BiConsumer;
import org.apache.xmlbeans.impl.values.XmlObjectBase;

/* loaded from: classes13.dex */
public final /* synthetic */ class xvo implements BiConsumer {
    @Override // java.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        ((XmlObjectBase) obj).setDateValue((Date) obj2);
    }
}
