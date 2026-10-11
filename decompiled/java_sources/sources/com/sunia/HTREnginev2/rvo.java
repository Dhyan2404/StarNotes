package com.sunia.HTREnginev2;

import java.util.function.BiConsumer;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.impl.values.XmlObjectBase;

/* loaded from: classes13.dex */
public final /* synthetic */ class rvo implements BiConsumer {
    @Override // java.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        ((XmlObjectBase) obj).setQNameValue((QName) obj2);
    }
}
