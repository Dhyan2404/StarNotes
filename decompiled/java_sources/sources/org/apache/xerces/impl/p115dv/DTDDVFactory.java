package org.apache.xerces.impl.p115dv;

import java.util.Hashtable;

/* loaded from: classes13.dex */
public abstract class DTDDVFactory {

    /* renamed from: a */
    public static final String f112269a = "org.apache.xerces.impl.dv.dtd.DTDDVFactoryImpl";

    public static final DTDDVFactory getInstance() throws DVFactoryException {
        return getInstance(f112269a);
    }

    public abstract DatatypeValidator getBuiltInDV(String str);

    public abstract Hashtable getBuiltInTypes();

    public static final DTDDVFactory getInstance(String str) throws DVFactoryException {
        try {
            return (DTDDVFactory) ObjectFactory.m69928h(str, ObjectFactory.m69924d(), true);
        } catch (ClassCastException unused) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("DTD factory class ");
            stringBuffer.append(str);
            stringBuffer.append(" does not extend from DTDDVFactory.");
            throw new DVFactoryException(stringBuffer.toString());
        }
    }
}
