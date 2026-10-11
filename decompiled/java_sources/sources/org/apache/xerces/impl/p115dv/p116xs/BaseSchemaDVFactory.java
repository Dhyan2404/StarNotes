package org.apache.xerces.impl.p115dv.p116xs;

import com.sunia.HTREnginev2.k2e;
import org.apache.xerces.impl.p115dv.SchemaDVFactory;
import org.apache.xerces.impl.p115dv.XSFacets;
import org.apache.xerces.impl.p115dv.XSSimpleType;
import org.apache.xerces.impl.p117xs.XSDeclarationPool;
import org.apache.xerces.p118xs.XSObjectList;
import org.apache.xerces.util.SymbolHash;

/* loaded from: classes13.dex */
public abstract class BaseSchemaDVFactory extends SchemaDVFactory {

    /* renamed from: b */
    public static final String f112324b = "http://www.w3.org/2001/XMLSchema";
    protected XSDeclarationPool fDeclPool = null;

    public static void createBuiltInTypes(SymbolHash symbolHash, XSSimpleTypeDecl xSSimpleTypeDecl) {
        XSFacets xSFacets = new XSFacets();
        symbolHash.put("anySimpleType", XSSimpleTypeDecl.f112367a1);
        XSSimpleTypeDecl xSSimpleTypeDecl2 = new XSSimpleTypeDecl(xSSimpleTypeDecl, "string", (short) 1, (short) 0, false, false, false, true, (short) 2);
        symbolHash.put("string", xSSimpleTypeDecl2);
        symbolHash.put("boolean", new XSSimpleTypeDecl(xSSimpleTypeDecl, "boolean", (short) 2, (short) 0, false, true, false, true, (short) 3));
        XSSimpleTypeDecl xSSimpleTypeDecl3 = new XSSimpleTypeDecl(xSSimpleTypeDecl, "decimal", (short) 3, (short) 2, false, false, true, true, (short) 4);
        symbolHash.put("decimal", xSSimpleTypeDecl3);
        symbolHash.put("anyURI", new XSSimpleTypeDecl(xSSimpleTypeDecl, "anyURI", (short) 17, (short) 0, false, false, false, true, (short) 18));
        symbolHash.put("base64Binary", new XSSimpleTypeDecl(xSSimpleTypeDecl, "base64Binary", (short) 16, (short) 0, false, false, false, true, (short) 17));
        symbolHash.put("duration", new XSSimpleTypeDecl(xSSimpleTypeDecl, "duration", (short) 6, (short) 1, false, false, false, true, (short) 7));
        symbolHash.put("dateTime", new XSSimpleTypeDecl(xSSimpleTypeDecl, "dateTime", (short) 7, (short) 1, false, false, false, true, (short) 8));
        symbolHash.put("time", new XSSimpleTypeDecl(xSSimpleTypeDecl, "time", (short) 8, (short) 1, false, false, false, true, (short) 9));
        symbolHash.put("date", new XSSimpleTypeDecl(xSSimpleTypeDecl, "date", (short) 9, (short) 1, false, false, false, true, (short) 10));
        symbolHash.put("gYearMonth", new XSSimpleTypeDecl(xSSimpleTypeDecl, "gYearMonth", (short) 10, (short) 1, false, false, false, true, (short) 11));
        symbolHash.put("gYear", new XSSimpleTypeDecl(xSSimpleTypeDecl, "gYear", (short) 11, (short) 1, false, false, false, true, (short) 12));
        symbolHash.put("gMonthDay", new XSSimpleTypeDecl(xSSimpleTypeDecl, "gMonthDay", (short) 12, (short) 1, false, false, false, true, (short) 13));
        symbolHash.put("gDay", new XSSimpleTypeDecl(xSSimpleTypeDecl, "gDay", (short) 13, (short) 1, false, false, false, true, (short) 14));
        symbolHash.put("gMonth", new XSSimpleTypeDecl(xSSimpleTypeDecl, "gMonth", (short) 14, (short) 1, false, false, false, true, (short) 15));
        XSSimpleTypeDecl xSSimpleTypeDecl4 = new XSSimpleTypeDecl(xSSimpleTypeDecl3, "integer", (short) 24, (short) 2, false, false, true, true, (short) 30);
        symbolHash.put("integer", xSSimpleTypeDecl4);
        xSFacets.maxInclusive = "0";
        XSSimpleTypeDecl xSSimpleTypeDecl5 = new XSSimpleTypeDecl(xSSimpleTypeDecl4, "nonPositiveInteger", "http://www.w3.org/2001/XMLSchema", (short) 0, false, null, (short) 31);
        xSSimpleTypeDecl5.m69958e(xSFacets, (short) 32, (short) 0);
        symbolHash.put("nonPositiveInteger", xSSimpleTypeDecl5);
        xSFacets.maxInclusive = "-1";
        XSSimpleTypeDecl xSSimpleTypeDecl6 = new XSSimpleTypeDecl(xSSimpleTypeDecl5, "negativeInteger", "http://www.w3.org/2001/XMLSchema", (short) 0, false, null, (short) 32);
        xSSimpleTypeDecl6.m69958e(xSFacets, (short) 32, (short) 0);
        symbolHash.put("negativeInteger", xSSimpleTypeDecl6);
        xSFacets.maxInclusive = "9223372036854775807";
        xSFacets.minInclusive = "-9223372036854775808";
        XSSimpleTypeDecl xSSimpleTypeDecl7 = new XSSimpleTypeDecl(xSSimpleTypeDecl4, "long", "http://www.w3.org/2001/XMLSchema", (short) 0, false, null, (short) 33);
        xSSimpleTypeDecl7.m69958e(xSFacets, k2e.C13968c.f74956f, (short) 0);
        symbolHash.put("long", xSSimpleTypeDecl7);
        xSFacets.maxInclusive = "2147483647";
        xSFacets.minInclusive = "-2147483648";
        XSSimpleTypeDecl xSSimpleTypeDecl8 = new XSSimpleTypeDecl(xSSimpleTypeDecl7, "int", "http://www.w3.org/2001/XMLSchema", (short) 0, false, null, (short) 34);
        xSSimpleTypeDecl8.m69958e(xSFacets, k2e.C13968c.f74956f, (short) 0);
        symbolHash.put("int", xSSimpleTypeDecl8);
        xSFacets.maxInclusive = "32767";
        xSFacets.minInclusive = "-32768";
        XSSimpleTypeDecl xSSimpleTypeDecl9 = new XSSimpleTypeDecl(xSSimpleTypeDecl8, "short", "http://www.w3.org/2001/XMLSchema", (short) 0, false, null, (short) 35);
        xSSimpleTypeDecl9.m69958e(xSFacets, k2e.C13968c.f74956f, (short) 0);
        symbolHash.put("short", xSSimpleTypeDecl9);
        xSFacets.maxInclusive = "127";
        xSFacets.minInclusive = "-128";
        XSSimpleTypeDecl xSSimpleTypeDecl10 = new XSSimpleTypeDecl(xSSimpleTypeDecl9, "byte", "http://www.w3.org/2001/XMLSchema", (short) 0, false, null, (short) 36);
        xSSimpleTypeDecl10.m69958e(xSFacets, k2e.C13968c.f74956f, (short) 0);
        symbolHash.put("byte", xSSimpleTypeDecl10);
        xSFacets.minInclusive = "0";
        XSSimpleTypeDecl xSSimpleTypeDecl11 = new XSSimpleTypeDecl(xSSimpleTypeDecl4, "nonNegativeInteger", "http://www.w3.org/2001/XMLSchema", (short) 0, false, null, (short) 37);
        xSSimpleTypeDecl11.m69958e(xSFacets, (short) 256, (short) 0);
        symbolHash.put("nonNegativeInteger", xSSimpleTypeDecl11);
        xSFacets.maxInclusive = "18446744073709551615";
        XSSimpleTypeDecl xSSimpleTypeDecl12 = new XSSimpleTypeDecl(xSSimpleTypeDecl11, "unsignedLong", "http://www.w3.org/2001/XMLSchema", (short) 0, false, null, (short) 38);
        xSSimpleTypeDecl12.m69958e(xSFacets, (short) 32, (short) 0);
        symbolHash.put("unsignedLong", xSSimpleTypeDecl12);
        xSFacets.maxInclusive = "4294967295";
        XSSimpleTypeDecl xSSimpleTypeDecl13 = new XSSimpleTypeDecl(xSSimpleTypeDecl12, "unsignedInt", "http://www.w3.org/2001/XMLSchema", (short) 0, false, null, (short) 39);
        xSSimpleTypeDecl13.m69958e(xSFacets, (short) 32, (short) 0);
        symbolHash.put("unsignedInt", xSSimpleTypeDecl13);
        xSFacets.maxInclusive = "65535";
        XSSimpleTypeDecl xSSimpleTypeDecl14 = new XSSimpleTypeDecl(xSSimpleTypeDecl13, "unsignedShort", "http://www.w3.org/2001/XMLSchema", (short) 0, false, null, (short) 40);
        xSSimpleTypeDecl14.m69958e(xSFacets, (short) 32, (short) 0);
        symbolHash.put("unsignedShort", xSSimpleTypeDecl14);
        xSFacets.maxInclusive = "255";
        XSSimpleTypeDecl xSSimpleTypeDecl15 = new XSSimpleTypeDecl(xSSimpleTypeDecl14, "unsignedByte", "http://www.w3.org/2001/XMLSchema", (short) 0, false, null, (short) 41);
        xSSimpleTypeDecl15.m69958e(xSFacets, (short) 32, (short) 0);
        symbolHash.put("unsignedByte", xSSimpleTypeDecl15);
        xSFacets.minInclusive = "1";
        XSSimpleTypeDecl xSSimpleTypeDecl16 = new XSSimpleTypeDecl(xSSimpleTypeDecl11, "positiveInteger", "http://www.w3.org/2001/XMLSchema", (short) 0, false, null, (short) 42);
        xSSimpleTypeDecl16.m69958e(xSFacets, (short) 256, (short) 0);
        symbolHash.put("positiveInteger", xSSimpleTypeDecl16);
        symbolHash.put("float", new XSSimpleTypeDecl(xSSimpleTypeDecl, "float", (short) 4, (short) 1, true, true, true, true, (short) 5));
        symbolHash.put("double", new XSSimpleTypeDecl(xSSimpleTypeDecl, "double", (short) 5, (short) 1, true, true, true, true, (short) 6));
        symbolHash.put("hexBinary", new XSSimpleTypeDecl(xSSimpleTypeDecl, "hexBinary", (short) 15, (short) 0, false, false, false, true, (short) 16));
        symbolHash.put("NOTATION", new XSSimpleTypeDecl(xSSimpleTypeDecl, "NOTATION", (short) 20, (short) 0, false, false, false, true, (short) 20));
        xSFacets.whiteSpace = (short) 1;
        XSSimpleTypeDecl xSSimpleTypeDecl17 = new XSSimpleTypeDecl(xSSimpleTypeDecl2, "normalizedString", "http://www.w3.org/2001/XMLSchema", (short) 0, false, null, (short) 21);
        xSSimpleTypeDecl17.m69958e(xSFacets, (short) 16, (short) 0);
        symbolHash.put("normalizedString", xSSimpleTypeDecl17);
        xSFacets.whiteSpace = (short) 2;
        XSSimpleTypeDecl xSSimpleTypeDecl18 = new XSSimpleTypeDecl(xSSimpleTypeDecl17, "token", "http://www.w3.org/2001/XMLSchema", (short) 0, false, null, (short) 22);
        xSSimpleTypeDecl18.m69958e(xSFacets, (short) 16, (short) 0);
        symbolHash.put("token", xSSimpleTypeDecl18);
        xSFacets.whiteSpace = (short) 2;
        xSFacets.pattern = "([a-zA-Z]{1,8})(-[a-zA-Z0-9]{1,8})*";
        XSSimpleTypeDecl xSSimpleTypeDecl19 = new XSSimpleTypeDecl(xSSimpleTypeDecl18, "language", "http://www.w3.org/2001/XMLSchema", (short) 0, false, null, (short) 23);
        xSSimpleTypeDecl19.m69958e(xSFacets, (short) 24, (short) 0);
        symbolHash.put("language", xSSimpleTypeDecl19);
        xSFacets.whiteSpace = (short) 2;
        XSSimpleTypeDecl xSSimpleTypeDecl20 = new XSSimpleTypeDecl(xSSimpleTypeDecl18, "Name", "http://www.w3.org/2001/XMLSchema", (short) 0, false, null, (short) 25);
        xSSimpleTypeDecl20.m69959f(xSFacets, (short) 16, (short) 0, (short) 2);
        symbolHash.put("Name", xSSimpleTypeDecl20);
        xSFacets.whiteSpace = (short) 2;
        XSSimpleTypeDecl xSSimpleTypeDecl21 = new XSSimpleTypeDecl(xSSimpleTypeDecl20, "NCName", "http://www.w3.org/2001/XMLSchema", (short) 0, false, null, (short) 26);
        xSSimpleTypeDecl21.m69959f(xSFacets, (short) 16, (short) 0, (short) 3);
        symbolHash.put("NCName", xSSimpleTypeDecl21);
        symbolHash.put("QName", new XSSimpleTypeDecl(xSSimpleTypeDecl, "QName", (short) 18, (short) 0, false, false, false, true, (short) 19));
        symbolHash.put("ID", new XSSimpleTypeDecl(xSSimpleTypeDecl21, "ID", (short) 21, (short) 0, false, false, false, true, (short) 27));
        XSSimpleTypeDecl xSSimpleTypeDecl22 = new XSSimpleTypeDecl(xSSimpleTypeDecl21, "IDREF", (short) 22, (short) 0, false, false, false, true, (short) 28);
        symbolHash.put("IDREF", xSSimpleTypeDecl22);
        xSFacets.minLength = 1;
        XSSimpleTypeDecl xSSimpleTypeDecl23 = new XSSimpleTypeDecl(new XSSimpleTypeDecl((String) null, "http://www.w3.org/2001/XMLSchema", (short) 0, xSSimpleTypeDecl22, true, (XSObjectList) null), "IDREFS", "http://www.w3.org/2001/XMLSchema", (short) 0, false, (XSObjectList) null);
        xSSimpleTypeDecl23.m69958e(xSFacets, (short) 2, (short) 0);
        symbolHash.put("IDREFS", xSSimpleTypeDecl23);
        XSSimpleTypeDecl xSSimpleTypeDecl24 = new XSSimpleTypeDecl(xSSimpleTypeDecl21, "ENTITY", (short) 23, (short) 0, false, false, false, true, (short) 29);
        symbolHash.put("ENTITY", xSSimpleTypeDecl24);
        xSFacets.minLength = 1;
        XSSimpleTypeDecl xSSimpleTypeDecl25 = new XSSimpleTypeDecl(new XSSimpleTypeDecl((String) null, "http://www.w3.org/2001/XMLSchema", (short) 0, xSSimpleTypeDecl24, true, (XSObjectList) null), "ENTITIES", "http://www.w3.org/2001/XMLSchema", (short) 0, false, (XSObjectList) null);
        xSSimpleTypeDecl25.m69958e(xSFacets, (short) 2, (short) 0);
        symbolHash.put("ENTITIES", xSSimpleTypeDecl25);
        xSFacets.whiteSpace = (short) 2;
        XSSimpleTypeDecl xSSimpleTypeDecl26 = new XSSimpleTypeDecl(xSSimpleTypeDecl18, "NMTOKEN", "http://www.w3.org/2001/XMLSchema", (short) 0, false, null, (short) 24);
        xSSimpleTypeDecl26.m69959f(xSFacets, (short) 16, (short) 0, (short) 1);
        symbolHash.put("NMTOKEN", xSSimpleTypeDecl26);
        xSFacets.minLength = 1;
        XSSimpleTypeDecl xSSimpleTypeDecl27 = new XSSimpleTypeDecl(new XSSimpleTypeDecl((String) null, "http://www.w3.org/2001/XMLSchema", (short) 0, xSSimpleTypeDecl26, true, (XSObjectList) null), "NMTOKENS", "http://www.w3.org/2001/XMLSchema", (short) 0, false, (XSObjectList) null);
        xSSimpleTypeDecl27.m69958e(xSFacets, (short) 2, (short) 0);
        symbolHash.put("NMTOKENS", xSSimpleTypeDecl27);
    }

    @Override // org.apache.xerces.impl.p115dv.SchemaDVFactory
    public XSSimpleType createTypeList(String str, String str2, short s, XSSimpleType xSSimpleType, XSObjectList xSObjectList) {
        XSDeclarationPool xSDeclarationPool = this.fDeclPool;
        return xSDeclarationPool != null ? xSDeclarationPool.getSimpleTypeDecl().setListValues(str, str2, s, (XSSimpleTypeDecl) xSSimpleType, xSObjectList) : new XSSimpleTypeDecl(str, str2, s, (XSSimpleTypeDecl) xSSimpleType, false, xSObjectList);
    }

    @Override // org.apache.xerces.impl.p115dv.SchemaDVFactory
    public XSSimpleType createTypeRestriction(String str, String str2, short s, XSSimpleType xSSimpleType, XSObjectList xSObjectList) {
        XSDeclarationPool xSDeclarationPool = this.fDeclPool;
        return xSDeclarationPool != null ? xSDeclarationPool.getSimpleTypeDecl().setRestrictionValues((XSSimpleTypeDecl) xSSimpleType, str, str2, s, xSObjectList) : new XSSimpleTypeDecl((XSSimpleTypeDecl) xSSimpleType, str, str2, s, false, xSObjectList);
    }

    @Override // org.apache.xerces.impl.p115dv.SchemaDVFactory
    public XSSimpleType createTypeUnion(String str, String str2, short s, XSSimpleType[] xSSimpleTypeArr, XSObjectList xSObjectList) {
        int length = xSSimpleTypeArr.length;
        XSSimpleTypeDecl[] xSSimpleTypeDeclArr = new XSSimpleTypeDecl[length];
        System.arraycopy(xSSimpleTypeArr, 0, xSSimpleTypeDeclArr, 0, length);
        XSDeclarationPool xSDeclarationPool = this.fDeclPool;
        return xSDeclarationPool != null ? xSDeclarationPool.getSimpleTypeDecl().setUnionValues(str, str2, s, xSSimpleTypeDeclArr, xSObjectList) : new XSSimpleTypeDecl(str, str2, s, xSSimpleTypeDeclArr, xSObjectList);
    }

    public XSSimpleTypeDecl newXSSimpleTypeDecl() {
        return new XSSimpleTypeDecl();
    }

    public void setDeclPool(XSDeclarationPool xSDeclarationPool) {
        this.fDeclPool = xSDeclarationPool;
    }
}
