package com.sun.org.apache.xerces.internal.impl.p053dv.p054xs;

import com.sun.org.apache.xerces.internal.impl.p053dv.SchemaDVFactory;
import com.sun.org.apache.xerces.internal.impl.p053dv.XSFacets;
import com.sun.org.apache.xerces.internal.impl.p053dv.XSSimpleType;
import com.sun.org.apache.xerces.internal.impl.p055xs.XSDeclarationPool;
import com.sun.org.apache.xerces.internal.p056xs.XSObjectList;
import com.sun.org.apache.xerces.internal.util.SymbolHash;
import com.sunia.HTREnginev2.k2e;

/* loaded from: classes10.dex */
public class SchemaDVFactoryImpl extends SchemaDVFactory {
    static final String URI_SCHEMAFORSCHEMA = "http://www.w3.org/2001/XMLSchema";
    static SymbolHash fBuiltInTypes = new SymbolHash();
    protected XSDeclarationPool fDeclPool = null;

    static {
        createBuiltInTypes();
    }

    public static void createBuiltInTypes() {
        XSFacets xSFacets = new XSFacets();
        XSSimpleTypeDecl xSSimpleTypeDecl = XSSimpleTypeDecl.fAnySimpleType;
        XSSimpleTypeDecl xSSimpleTypeDecl2 = XSSimpleTypeDecl.fAnyAtomicType;
        fBuiltInTypes.put("anySimpleType", xSSimpleTypeDecl);
        XSSimpleTypeDecl xSSimpleTypeDecl3 = new XSSimpleTypeDecl(xSSimpleTypeDecl, "string", (short) 1, (short) 0, false, false, false, true, (short) 2);
        fBuiltInTypes.put("string", xSSimpleTypeDecl3);
        fBuiltInTypes.put("boolean", new XSSimpleTypeDecl(xSSimpleTypeDecl, "boolean", (short) 2, (short) 0, false, true, false, true, (short) 3));
        XSSimpleTypeDecl xSSimpleTypeDecl4 = new XSSimpleTypeDecl(xSSimpleTypeDecl, "decimal", (short) 3, (short) 2, false, false, true, true, (short) 4);
        fBuiltInTypes.put("decimal", xSSimpleTypeDecl4);
        fBuiltInTypes.put("anyURI", new XSSimpleTypeDecl(xSSimpleTypeDecl, "anyURI", (short) 17, (short) 0, false, false, false, true, (short) 18));
        fBuiltInTypes.put("base64Binary", new XSSimpleTypeDecl(xSSimpleTypeDecl, "base64Binary", (short) 16, (short) 0, false, false, false, true, (short) 17));
        fBuiltInTypes.put("duration", new XSSimpleTypeDecl(xSSimpleTypeDecl, "duration", (short) 6, (short) 1, false, false, false, true, (short) 7));
        fBuiltInTypes.put("dateTime", new XSSimpleTypeDecl(xSSimpleTypeDecl, "dateTime", (short) 7, (short) 1, false, false, false, true, (short) 8));
        fBuiltInTypes.put("time", new XSSimpleTypeDecl(xSSimpleTypeDecl, "time", (short) 8, (short) 1, false, false, false, true, (short) 9));
        fBuiltInTypes.put("date", new XSSimpleTypeDecl(xSSimpleTypeDecl, "date", (short) 9, (short) 1, false, false, false, true, (short) 10));
        fBuiltInTypes.put("gYearMonth", new XSSimpleTypeDecl(xSSimpleTypeDecl, "gYearMonth", (short) 10, (short) 1, false, false, false, true, (short) 11));
        fBuiltInTypes.put("gYear", new XSSimpleTypeDecl(xSSimpleTypeDecl, "gYear", (short) 11, (short) 1, false, false, false, true, (short) 12));
        fBuiltInTypes.put("gMonthDay", new XSSimpleTypeDecl(xSSimpleTypeDecl, "gMonthDay", (short) 12, (short) 1, false, false, false, true, (short) 13));
        fBuiltInTypes.put("gDay", new XSSimpleTypeDecl(xSSimpleTypeDecl, "gDay", (short) 13, (short) 1, false, false, false, true, (short) 14));
        fBuiltInTypes.put("gMonth", new XSSimpleTypeDecl(xSSimpleTypeDecl, "gMonth", (short) 14, (short) 1, false, false, false, true, (short) 15));
        XSSimpleTypeDecl xSSimpleTypeDecl5 = new XSSimpleTypeDecl(xSSimpleTypeDecl4, "integer", (short) 24, (short) 2, false, false, true, true, (short) 30);
        fBuiltInTypes.put("integer", xSSimpleTypeDecl5);
        xSFacets.maxInclusive = "0";
        XSSimpleTypeDecl xSSimpleTypeDecl6 = new XSSimpleTypeDecl(xSSimpleTypeDecl5, "nonPositiveInteger", "http://www.w3.org/2001/XMLSchema", (short) 0, false, null, (short) 31);
        xSSimpleTypeDecl6.applyFacets1(xSFacets, (short) 32, (short) 0);
        fBuiltInTypes.put("nonPositiveInteger", xSSimpleTypeDecl6);
        xSFacets.maxInclusive = "-1";
        XSSimpleTypeDecl xSSimpleTypeDecl7 = new XSSimpleTypeDecl(xSSimpleTypeDecl5, "negativeInteger", "http://www.w3.org/2001/XMLSchema", (short) 0, false, null, (short) 32);
        xSSimpleTypeDecl7.applyFacets1(xSFacets, (short) 32, (short) 0);
        fBuiltInTypes.put("negativeInteger", xSSimpleTypeDecl7);
        xSFacets.maxInclusive = "9223372036854775807";
        xSFacets.minInclusive = "-9223372036854775808";
        XSSimpleTypeDecl xSSimpleTypeDecl8 = new XSSimpleTypeDecl(xSSimpleTypeDecl5, "long", "http://www.w3.org/2001/XMLSchema", (short) 0, false, null, (short) 33);
        xSSimpleTypeDecl8.applyFacets1(xSFacets, k2e.C13968c.f74956f, (short) 0);
        fBuiltInTypes.put("long", xSSimpleTypeDecl8);
        xSFacets.maxInclusive = "2147483647";
        xSFacets.minInclusive = "-2147483648";
        XSSimpleTypeDecl xSSimpleTypeDecl9 = new XSSimpleTypeDecl(xSSimpleTypeDecl8, "int", "http://www.w3.org/2001/XMLSchema", (short) 0, false, null, (short) 34);
        xSSimpleTypeDecl9.applyFacets1(xSFacets, k2e.C13968c.f74956f, (short) 0);
        fBuiltInTypes.put("int", xSSimpleTypeDecl9);
        xSFacets.maxInclusive = "32767";
        xSFacets.minInclusive = "-32768";
        XSSimpleTypeDecl xSSimpleTypeDecl10 = new XSSimpleTypeDecl(xSSimpleTypeDecl9, "short", "http://www.w3.org/2001/XMLSchema", (short) 0, false, null, (short) 35);
        xSSimpleTypeDecl10.applyFacets1(xSFacets, k2e.C13968c.f74956f, (short) 0);
        fBuiltInTypes.put("short", xSSimpleTypeDecl10);
        xSFacets.maxInclusive = "127";
        xSFacets.minInclusive = "-128";
        XSSimpleTypeDecl xSSimpleTypeDecl11 = new XSSimpleTypeDecl(xSSimpleTypeDecl10, "byte", "http://www.w3.org/2001/XMLSchema", (short) 0, false, null, (short) 36);
        xSSimpleTypeDecl11.applyFacets1(xSFacets, k2e.C13968c.f74956f, (short) 0);
        fBuiltInTypes.put("byte", xSSimpleTypeDecl11);
        xSFacets.minInclusive = "0";
        XSSimpleTypeDecl xSSimpleTypeDecl12 = new XSSimpleTypeDecl(xSSimpleTypeDecl5, "nonNegativeInteger", "http://www.w3.org/2001/XMLSchema", (short) 0, false, null, (short) 37);
        xSSimpleTypeDecl12.applyFacets1(xSFacets, (short) 256, (short) 0);
        fBuiltInTypes.put("nonNegativeInteger", xSSimpleTypeDecl12);
        xSFacets.maxInclusive = "18446744073709551615";
        XSSimpleTypeDecl xSSimpleTypeDecl13 = new XSSimpleTypeDecl(xSSimpleTypeDecl12, "unsignedLong", "http://www.w3.org/2001/XMLSchema", (short) 0, false, null, (short) 38);
        xSSimpleTypeDecl13.applyFacets1(xSFacets, (short) 32, (short) 0);
        fBuiltInTypes.put("unsignedLong", xSSimpleTypeDecl13);
        xSFacets.maxInclusive = "4294967295";
        XSSimpleTypeDecl xSSimpleTypeDecl14 = new XSSimpleTypeDecl(xSSimpleTypeDecl13, "unsignedInt", "http://www.w3.org/2001/XMLSchema", (short) 0, false, null, (short) 39);
        xSSimpleTypeDecl14.applyFacets1(xSFacets, (short) 32, (short) 0);
        fBuiltInTypes.put("unsignedInt", xSSimpleTypeDecl14);
        xSFacets.maxInclusive = "65535";
        XSSimpleTypeDecl xSSimpleTypeDecl15 = new XSSimpleTypeDecl(xSSimpleTypeDecl14, "unsignedShort", "http://www.w3.org/2001/XMLSchema", (short) 0, false, null, (short) 40);
        xSSimpleTypeDecl15.applyFacets1(xSFacets, (short) 32, (short) 0);
        fBuiltInTypes.put("unsignedShort", xSSimpleTypeDecl15);
        xSFacets.maxInclusive = "255";
        XSSimpleTypeDecl xSSimpleTypeDecl16 = new XSSimpleTypeDecl(xSSimpleTypeDecl15, "unsignedByte", "http://www.w3.org/2001/XMLSchema", (short) 0, false, null, (short) 41);
        xSSimpleTypeDecl16.applyFacets1(xSFacets, (short) 32, (short) 0);
        fBuiltInTypes.put("unsignedByte", xSSimpleTypeDecl16);
        xSFacets.minInclusive = "1";
        XSSimpleTypeDecl xSSimpleTypeDecl17 = new XSSimpleTypeDecl(xSSimpleTypeDecl12, "positiveInteger", "http://www.w3.org/2001/XMLSchema", (short) 0, false, null, (short) 42);
        xSSimpleTypeDecl17.applyFacets1(xSFacets, (short) 256, (short) 0);
        fBuiltInTypes.put("positiveInteger", xSSimpleTypeDecl17);
        fBuiltInTypes.put("float", new XSSimpleTypeDecl(xSSimpleTypeDecl, "float", (short) 4, (short) 1, true, true, true, true, (short) 5));
        fBuiltInTypes.put("double", new XSSimpleTypeDecl(xSSimpleTypeDecl, "double", (short) 5, (short) 1, true, true, true, true, (short) 6));
        fBuiltInTypes.put("hexBinary", new XSSimpleTypeDecl(xSSimpleTypeDecl, "hexBinary", (short) 15, (short) 0, false, false, false, true, (short) 16));
        fBuiltInTypes.put("NOTATION", new XSSimpleTypeDecl(xSSimpleTypeDecl, "NOTATION", (short) 20, (short) 0, false, false, false, true, (short) 20));
        xSFacets.whiteSpace = (short) 1;
        XSSimpleTypeDecl xSSimpleTypeDecl18 = new XSSimpleTypeDecl(xSSimpleTypeDecl3, "normalizedString", "http://www.w3.org/2001/XMLSchema", (short) 0, false, null, (short) 21);
        xSSimpleTypeDecl18.applyFacets1(xSFacets, (short) 16, (short) 0);
        fBuiltInTypes.put("normalizedString", xSSimpleTypeDecl18);
        xSFacets.whiteSpace = (short) 2;
        XSSimpleTypeDecl xSSimpleTypeDecl19 = new XSSimpleTypeDecl(xSSimpleTypeDecl18, "token", "http://www.w3.org/2001/XMLSchema", (short) 0, false, null, (short) 22);
        xSSimpleTypeDecl19.applyFacets1(xSFacets, (short) 16, (short) 0);
        fBuiltInTypes.put("token", xSSimpleTypeDecl19);
        xSFacets.whiteSpace = (short) 2;
        xSFacets.pattern = "([a-zA-Z]{1,8})(-[a-zA-Z0-9]{1,8})*";
        XSSimpleTypeDecl xSSimpleTypeDecl20 = new XSSimpleTypeDecl(xSSimpleTypeDecl19, "language", "http://www.w3.org/2001/XMLSchema", (short) 0, false, null, (short) 23);
        xSSimpleTypeDecl20.applyFacets1(xSFacets, (short) 24, (short) 0);
        fBuiltInTypes.put("language", xSSimpleTypeDecl20);
        xSFacets.whiteSpace = (short) 2;
        XSSimpleTypeDecl xSSimpleTypeDecl21 = new XSSimpleTypeDecl(xSSimpleTypeDecl19, "Name", "http://www.w3.org/2001/XMLSchema", (short) 0, false, null, (short) 25);
        xSSimpleTypeDecl21.applyFacets1(xSFacets, (short) 16, (short) 0, (short) 2);
        fBuiltInTypes.put("Name", xSSimpleTypeDecl21);
        xSFacets.whiteSpace = (short) 2;
        XSSimpleTypeDecl xSSimpleTypeDecl22 = new XSSimpleTypeDecl(xSSimpleTypeDecl21, "NCName", "http://www.w3.org/2001/XMLSchema", (short) 0, false, null, (short) 26);
        xSSimpleTypeDecl22.applyFacets1(xSFacets, (short) 16, (short) 0, (short) 3);
        fBuiltInTypes.put("NCName", xSSimpleTypeDecl22);
        fBuiltInTypes.put("QName", new XSSimpleTypeDecl(xSSimpleTypeDecl, "QName", (short) 18, (short) 0, false, false, false, true, (short) 19));
        fBuiltInTypes.put("ID", new XSSimpleTypeDecl(xSSimpleTypeDecl22, "ID", (short) 21, (short) 0, false, false, false, true, (short) 27));
        XSSimpleTypeDecl xSSimpleTypeDecl23 = new XSSimpleTypeDecl(xSSimpleTypeDecl22, "IDREF", (short) 22, (short) 0, false, false, false, true, (short) 28);
        fBuiltInTypes.put("IDREF", xSSimpleTypeDecl23);
        xSFacets.minLength = 1;
        XSSimpleTypeDecl xSSimpleTypeDecl24 = new XSSimpleTypeDecl(new XSSimpleTypeDecl((String) null, "http://www.w3.org/2001/XMLSchema", (short) 0, xSSimpleTypeDecl23, true, (XSObjectList) null), "IDREFS", "http://www.w3.org/2001/XMLSchema", (short) 0, false, (XSObjectList) null);
        xSSimpleTypeDecl24.applyFacets1(xSFacets, (short) 2, (short) 0);
        fBuiltInTypes.put("IDREFS", xSSimpleTypeDecl24);
        XSSimpleTypeDecl xSSimpleTypeDecl25 = new XSSimpleTypeDecl(xSSimpleTypeDecl22, "ENTITY", (short) 23, (short) 0, false, false, false, true, (short) 29);
        fBuiltInTypes.put("ENTITY", xSSimpleTypeDecl25);
        xSFacets.minLength = 1;
        XSSimpleTypeDecl xSSimpleTypeDecl26 = new XSSimpleTypeDecl(new XSSimpleTypeDecl((String) null, "http://www.w3.org/2001/XMLSchema", (short) 0, xSSimpleTypeDecl25, true, (XSObjectList) null), "ENTITIES", "http://www.w3.org/2001/XMLSchema", (short) 0, false, (XSObjectList) null);
        xSSimpleTypeDecl26.applyFacets1(xSFacets, (short) 2, (short) 0);
        fBuiltInTypes.put("ENTITIES", xSSimpleTypeDecl26);
        xSFacets.whiteSpace = (short) 2;
        XSSimpleTypeDecl xSSimpleTypeDecl27 = new XSSimpleTypeDecl(xSSimpleTypeDecl19, "NMTOKEN", "http://www.w3.org/2001/XMLSchema", (short) 0, false, null, (short) 24);
        xSSimpleTypeDecl27.applyFacets1(xSFacets, (short) 16, (short) 0, (short) 1);
        fBuiltInTypes.put("NMTOKEN", xSSimpleTypeDecl27);
        xSFacets.minLength = 1;
        XSSimpleTypeDecl xSSimpleTypeDecl28 = new XSSimpleTypeDecl(new XSSimpleTypeDecl((String) null, "http://www.w3.org/2001/XMLSchema", (short) 0, xSSimpleTypeDecl27, true, (XSObjectList) null), "NMTOKENS", "http://www.w3.org/2001/XMLSchema", (short) 0, false, (XSObjectList) null);
        xSSimpleTypeDecl28.applyFacets1(xSFacets, (short) 2, (short) 0);
        fBuiltInTypes.put("NMTOKENS", xSSimpleTypeDecl28);
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.SchemaDVFactory
    public XSSimpleType createTypeList(String str, String str2, short s, XSSimpleType xSSimpleType, XSObjectList xSObjectList) {
        XSDeclarationPool xSDeclarationPool = this.fDeclPool;
        return xSDeclarationPool != null ? xSDeclarationPool.getSimpleTypeDecl().setListValues(str, str2, s, (XSSimpleTypeDecl) xSSimpleType, xSObjectList) : new XSSimpleTypeDecl(str, str2, s, (XSSimpleTypeDecl) xSSimpleType, false, xSObjectList);
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.SchemaDVFactory
    public XSSimpleType createTypeRestriction(String str, String str2, short s, XSSimpleType xSSimpleType, XSObjectList xSObjectList) {
        XSDeclarationPool xSDeclarationPool = this.fDeclPool;
        return xSDeclarationPool != null ? xSDeclarationPool.getSimpleTypeDecl().setRestrictionValues((XSSimpleTypeDecl) xSSimpleType, str, str2, s, xSObjectList) : new XSSimpleTypeDecl((XSSimpleTypeDecl) xSSimpleType, str, str2, s, false, xSObjectList);
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.SchemaDVFactory
    public XSSimpleType createTypeUnion(String str, String str2, short s, XSSimpleType[] xSSimpleTypeArr, XSObjectList xSObjectList) {
        int length = xSSimpleTypeArr.length;
        XSSimpleTypeDecl[] xSSimpleTypeDeclArr = new XSSimpleTypeDecl[length];
        System.arraycopy(xSSimpleTypeArr, 0, xSSimpleTypeDeclArr, 0, length);
        XSDeclarationPool xSDeclarationPool = this.fDeclPool;
        return xSDeclarationPool != null ? xSDeclarationPool.getSimpleTypeDecl().setUnionValues(str, str2, s, xSSimpleTypeDeclArr, xSObjectList) : new XSSimpleTypeDecl(str, str2, s, xSSimpleTypeDeclArr, xSObjectList);
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.SchemaDVFactory
    public XSSimpleType getBuiltInType(String str) {
        return (XSSimpleType) fBuiltInTypes.get(str);
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.SchemaDVFactory
    public SymbolHash getBuiltInTypes() {
        return fBuiltInTypes.makeClone();
    }

    public void setDeclPool(XSDeclarationPool xSDeclarationPool) {
        this.fDeclPool = xSDeclarationPool;
    }
}
