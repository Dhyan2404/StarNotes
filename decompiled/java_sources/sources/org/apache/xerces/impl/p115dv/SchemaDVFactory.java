package org.apache.xerces.impl.p115dv;

import org.apache.xerces.p118xs.XSObjectList;
import org.apache.xerces.util.SymbolHash;

/* loaded from: classes13.dex */
public abstract class SchemaDVFactory {

    /* renamed from: a */
    public static final String f112276a = "org.apache.xerces.impl.dv.xs.SchemaDVFactoryImpl";

    public static final SchemaDVFactory getInstance() throws DVFactoryException {
        return getInstance(f112276a);
    }

    public abstract XSSimpleType createTypeList(String str, String str2, short s, XSSimpleType xSSimpleType, XSObjectList xSObjectList);

    public abstract XSSimpleType createTypeRestriction(String str, String str2, short s, XSSimpleType xSSimpleType, XSObjectList xSObjectList);

    public abstract XSSimpleType createTypeUnion(String str, String str2, short s, XSSimpleType[] xSSimpleTypeArr, XSObjectList xSObjectList);

    public abstract XSSimpleType getBuiltInType(String str);

    public abstract SymbolHash getBuiltInTypes();

    public static final SchemaDVFactory getInstance(String str) throws DVFactoryException {
        try {
            return (SchemaDVFactory) ObjectFactory.m69928h(str, ObjectFactory.m69924d(), true);
        } catch (ClassCastException unused) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Schema factory class ");
            stringBuffer.append(str);
            stringBuffer.append(" does not extend from SchemaDVFactory.");
            throw new DVFactoryException(stringBuffer.toString());
        }
    }
}
