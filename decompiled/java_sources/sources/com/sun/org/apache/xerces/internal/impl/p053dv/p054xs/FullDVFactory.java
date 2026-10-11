package com.sun.org.apache.xerces.internal.impl.p053dv.p054xs;

import com.sun.org.apache.xerces.internal.impl.p053dv.XSFacets;
import com.sun.org.apache.xerces.internal.impl.p053dv.XSSimpleType;
import com.sun.org.apache.xerces.internal.p056xs.XSObjectList;
import com.sun.org.apache.xerces.internal.util.SymbolHash;

/* loaded from: classes10.dex */
public class FullDVFactory extends BaseDVFactory {
    static final String URI_SCHEMAFORSCHEMA = "http://www.w3.org/2001/XMLSchema";
    static SymbolHash fFullTypes;

    static {
        SymbolHash symbolHash = new SymbolHash(89);
        fFullTypes = symbolHash;
        createBuiltInTypes(symbolHash);
    }

    public static void createBuiltInTypes(SymbolHash symbolHash) {
        BaseDVFactory.createBuiltInTypes(symbolHash);
        XSFacets xSFacets = new XSFacets();
        XSSimpleTypeDecl xSSimpleTypeDecl = XSSimpleTypeDecl.fAnySimpleType;
        XSSimpleTypeDecl xSSimpleTypeDecl2 = (XSSimpleTypeDecl) symbolHash.get("string");
        symbolHash.put("float", new XSSimpleTypeDecl(xSSimpleTypeDecl, "float", (short) 4, (short) 1, true, true, true, true, (short) 5));
        symbolHash.put("double", new XSSimpleTypeDecl(xSSimpleTypeDecl, "double", (short) 5, (short) 1, true, true, true, true, (short) 6));
        symbolHash.put("duration", new XSSimpleTypeDecl(xSSimpleTypeDecl, "duration", (short) 6, (short) 1, false, false, false, true, (short) 7));
        symbolHash.put("hexBinary", new XSSimpleTypeDecl(xSSimpleTypeDecl, "hexBinary", (short) 15, (short) 0, false, false, false, true, (short) 16));
        symbolHash.put("QName", new XSSimpleTypeDecl(xSSimpleTypeDecl, "QName", (short) 18, (short) 0, false, false, false, true, (short) 19));
        symbolHash.put("NOTATION", new XSSimpleTypeDecl(xSSimpleTypeDecl, "NOTATION", (short) 20, (short) 0, false, false, false, true, (short) 20));
        xSFacets.whiteSpace = (short) 1;
        XSSimpleTypeDecl xSSimpleTypeDecl3 = new XSSimpleTypeDecl(xSSimpleTypeDecl2, "normalizedString", "http://www.w3.org/2001/XMLSchema", (short) 0, false, null, (short) 21);
        xSSimpleTypeDecl3.applyFacets1(xSFacets, (short) 16, (short) 0);
        symbolHash.put("normalizedString", xSSimpleTypeDecl3);
        xSFacets.whiteSpace = (short) 2;
        XSSimpleTypeDecl xSSimpleTypeDecl4 = new XSSimpleTypeDecl(xSSimpleTypeDecl3, "token", "http://www.w3.org/2001/XMLSchema", (short) 0, false, null, (short) 22);
        xSSimpleTypeDecl4.applyFacets1(xSFacets, (short) 16, (short) 0);
        symbolHash.put("token", xSSimpleTypeDecl4);
        xSFacets.whiteSpace = (short) 2;
        xSFacets.pattern = "([a-zA-Z]{1,8})(-[a-zA-Z0-9]{1,8})*";
        XSSimpleTypeDecl xSSimpleTypeDecl5 = new XSSimpleTypeDecl(xSSimpleTypeDecl4, "language", "http://www.w3.org/2001/XMLSchema", (short) 0, false, null, (short) 23);
        xSSimpleTypeDecl5.applyFacets1(xSFacets, (short) 24, (short) 0);
        symbolHash.put("language", xSSimpleTypeDecl5);
        xSFacets.whiteSpace = (short) 2;
        XSSimpleTypeDecl xSSimpleTypeDecl6 = new XSSimpleTypeDecl(xSSimpleTypeDecl4, "Name", "http://www.w3.org/2001/XMLSchema", (short) 0, false, null, (short) 25);
        xSSimpleTypeDecl6.applyFacets1(xSFacets, (short) 16, (short) 0, (short) 2);
        symbolHash.put("Name", xSSimpleTypeDecl6);
        xSFacets.whiteSpace = (short) 2;
        XSSimpleTypeDecl xSSimpleTypeDecl7 = new XSSimpleTypeDecl(xSSimpleTypeDecl6, "NCName", "http://www.w3.org/2001/XMLSchema", (short) 0, false, null, (short) 26);
        xSSimpleTypeDecl7.applyFacets1(xSFacets, (short) 16, (short) 0, (short) 3);
        symbolHash.put("NCName", xSSimpleTypeDecl7);
        symbolHash.put("ID", new XSSimpleTypeDecl(xSSimpleTypeDecl7, "ID", (short) 21, (short) 0, false, false, false, true, (short) 27));
        XSSimpleTypeDecl xSSimpleTypeDecl8 = new XSSimpleTypeDecl(xSSimpleTypeDecl7, "IDREF", (short) 22, (short) 0, false, false, false, true, (short) 28);
        symbolHash.put("IDREF", xSSimpleTypeDecl8);
        xSFacets.minLength = 1;
        XSSimpleTypeDecl xSSimpleTypeDecl9 = new XSSimpleTypeDecl(new XSSimpleTypeDecl((String) null, "http://www.w3.org/2001/XMLSchema", (short) 0, xSSimpleTypeDecl8, true, (XSObjectList) null), "IDREFS", "http://www.w3.org/2001/XMLSchema", (short) 0, false, (XSObjectList) null);
        xSSimpleTypeDecl9.applyFacets1(xSFacets, (short) 2, (short) 0);
        symbolHash.put("IDREFS", xSSimpleTypeDecl9);
        XSSimpleTypeDecl xSSimpleTypeDecl10 = new XSSimpleTypeDecl(xSSimpleTypeDecl7, "ENTITY", (short) 23, (short) 0, false, false, false, true, (short) 29);
        symbolHash.put("ENTITY", xSSimpleTypeDecl10);
        xSFacets.minLength = 1;
        XSSimpleTypeDecl xSSimpleTypeDecl11 = new XSSimpleTypeDecl(new XSSimpleTypeDecl((String) null, "http://www.w3.org/2001/XMLSchema", (short) 0, xSSimpleTypeDecl10, true, (XSObjectList) null), "ENTITIES", "http://www.w3.org/2001/XMLSchema", (short) 0, false, (XSObjectList) null);
        xSSimpleTypeDecl11.applyFacets1(xSFacets, (short) 2, (short) 0);
        symbolHash.put("ENTITIES", xSSimpleTypeDecl11);
        xSFacets.whiteSpace = (short) 2;
        XSSimpleTypeDecl xSSimpleTypeDecl12 = new XSSimpleTypeDecl(xSSimpleTypeDecl4, "NMTOKEN", "http://www.w3.org/2001/XMLSchema", (short) 0, false, null, (short) 24);
        xSSimpleTypeDecl12.applyFacets1(xSFacets, (short) 16, (short) 0, (short) 1);
        symbolHash.put("NMTOKEN", xSSimpleTypeDecl12);
        xSFacets.minLength = 1;
        XSSimpleTypeDecl xSSimpleTypeDecl13 = new XSSimpleTypeDecl(new XSSimpleTypeDecl((String) null, "http://www.w3.org/2001/XMLSchema", (short) 0, xSSimpleTypeDecl12, true, (XSObjectList) null), "NMTOKENS", "http://www.w3.org/2001/XMLSchema", (short) 0, false, (XSObjectList) null);
        xSSimpleTypeDecl13.applyFacets1(xSFacets, (short) 2, (short) 0);
        symbolHash.put("NMTOKENS", xSSimpleTypeDecl13);
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.BaseDVFactory, com.sun.org.apache.xerces.internal.impl.p053dv.SchemaDVFactory
    public XSSimpleType getBuiltInType(String str) {
        return (XSSimpleType) fFullTypes.get(str);
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.BaseDVFactory, com.sun.org.apache.xerces.internal.impl.p053dv.SchemaDVFactory
    public SymbolHash getBuiltInTypes() {
        return fFullTypes.makeClone();
    }
}
