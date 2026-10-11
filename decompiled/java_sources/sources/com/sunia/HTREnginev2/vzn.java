package com.sunia.HTREnginev2;

import java.util.function.Function;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.impl.common.QNameHelper;

/* loaded from: classes13.dex */
public final /* synthetic */ class vzn implements Function {
    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        return QNameHelper.pretty((QName) obj);
    }
}
