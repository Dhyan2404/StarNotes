package com.sun.org.apache.xerces.internal.impl.p053dv;

import com.sun.org.apache.xerces.internal.p056xs.XSObjectList;
import com.sun.org.apache.xerces.internal.util.SymbolHash;

/* loaded from: classes10.dex */
public abstract class SchemaDVFactory {
    private static final String DEFAULT_FACTORY_CLASS = "com.sun.org.apache.xerces.internal.impl.dv.xs.SchemaDVFactoryImpl";

    public static final synchronized SchemaDVFactory getInstance() throws DVFactoryException {
        SchemaDVFactory schemaDVFactory;
        synchronized (SchemaDVFactory.class) {
            schemaDVFactory = getInstance(DEFAULT_FACTORY_CLASS);
        }
        return schemaDVFactory;
    }

    public abstract XSSimpleType createTypeList(String str, String str2, short s, XSSimpleType xSSimpleType, XSObjectList xSObjectList);

    public abstract XSSimpleType createTypeRestriction(String str, String str2, short s, XSSimpleType xSSimpleType, XSObjectList xSObjectList);

    public abstract XSSimpleType createTypeUnion(String str, String str2, short s, XSSimpleType[] xSSimpleTypeArr, XSObjectList xSObjectList);

    public abstract XSSimpleType getBuiltInType(String str);

    public abstract SymbolHash getBuiltInTypes();

    public static final synchronized SchemaDVFactory getInstance(String str) throws DVFactoryException {
        SchemaDVFactory schemaDVFactory;
        synchronized (SchemaDVFactory.class) {
            try {
                schemaDVFactory = (SchemaDVFactory) ObjectFactory.newInstance(str, ObjectFactory.findClassLoader(), true);
            } catch (ClassCastException unused) {
                throw new DVFactoryException("Schema factory class " + str + " does not extend from SchemaDVFactory.");
            }
        }
        return schemaDVFactory;
    }
}
