package com.sun.org.apache.xerces.internal.impl.p053dv;

import java.util.Hashtable;

/* loaded from: classes10.dex */
public abstract class DTDDVFactory {
    private static final String DEFAULT_FACTORY_CLASS = "com.sun.org.apache.xerces.internal.impl.dv.dtd.DTDDVFactoryImpl";

    public static final synchronized DTDDVFactory getInstance() throws DVFactoryException {
        DTDDVFactory dTDDVFactory;
        synchronized (DTDDVFactory.class) {
            dTDDVFactory = getInstance(DEFAULT_FACTORY_CLASS);
        }
        return dTDDVFactory;
    }

    public abstract DatatypeValidator getBuiltInDV(String str);

    public abstract Hashtable getBuiltInTypes();

    public static final synchronized DTDDVFactory getInstance(String str) throws DVFactoryException {
        DTDDVFactory dTDDVFactory;
        synchronized (DTDDVFactory.class) {
            try {
                dTDDVFactory = (DTDDVFactory) ObjectFactory.newInstance(str, ObjectFactory.findClassLoader(), true);
            } catch (ClassCastException unused) {
                throw new DVFactoryException("DTD factory class " + str + " does not extend from DTDDVFactory.");
            }
        }
        return dTDDVFactory;
    }
}
