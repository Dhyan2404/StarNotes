package org.apache.xerces.impl.p115dv.p116xs;

import org.apache.xerces.impl.p115dv.XSFacets;
import org.apache.xerces.impl.p115dv.XSSimpleType;
import org.apache.xerces.p118xs.XSObjectList;
import org.apache.xerces.util.SymbolHash;

/* loaded from: classes13.dex */
public class FullDVFactory extends BaseDVFactory {

    /* renamed from: d */
    public static final String f112340d = "http://www.w3.org/2001/XMLSchema";

    /* renamed from: e */
    public static SymbolHash f112341e;

    static {
        SymbolHash symbolHash = new SymbolHash(89);
        f112341e = symbolHash;
        m69951a(symbolHash);
    }

    /* renamed from: a */
    public static void m69951a(SymbolHash symbolHash) {
        BaseDVFactory.m69935a(symbolHash);
        XSFacets xSFacets = new XSFacets();
        XSSimpleTypeDecl xSSimpleTypeDecl = XSSimpleTypeDecl.f112367a1;
        XSSimpleTypeDecl xSSimpleTypeDecl2 = (XSSimpleTypeDecl) symbolHash.get("string");
        symbolHash.put("float", new XSSimpleTypeDecl(xSSimpleTypeDecl, "float", (short) 4, (short) 1, true, true, true, true, (short) 5));
        symbolHash.put("double", new XSSimpleTypeDecl(xSSimpleTypeDecl, "double", (short) 5, (short) 1, true, true, true, true, (short) 6));
        symbolHash.put("duration", new XSSimpleTypeDecl(xSSimpleTypeDecl, "duration", (short) 6, (short) 1, false, false, false, true, (short) 7));
        symbolHash.put("hexBinary", new XSSimpleTypeDecl(xSSimpleTypeDecl, "hexBinary", (short) 15, (short) 0, false, false, false, true, (short) 16));
        symbolHash.put("QName", new XSSimpleTypeDecl(xSSimpleTypeDecl, "QName", (short) 18, (short) 0, false, false, false, true, (short) 19));
        symbolHash.put("NOTATION", new XSSimpleTypeDecl(xSSimpleTypeDecl, "NOTATION", (short) 20, (short) 0, false, false, false, true, (short) 20));
        xSFacets.whiteSpace = (short) 1;
        XSSimpleTypeDecl xSSimpleTypeDecl3 = new XSSimpleTypeDecl(xSSimpleTypeDecl2, "normalizedString", "http://www.w3.org/2001/XMLSchema", (short) 0, false, null, (short) 21);
        xSSimpleTypeDecl3.m69958e(xSFacets, (short) 16, (short) 0);
        symbolHash.put("normalizedString", xSSimpleTypeDecl3);
        xSFacets.whiteSpace = (short) 2;
        XSSimpleTypeDecl xSSimpleTypeDecl4 = new XSSimpleTypeDecl(xSSimpleTypeDecl3, "token", "http://www.w3.org/2001/XMLSchema", (short) 0, false, null, (short) 22);
        xSSimpleTypeDecl4.m69958e(xSFacets, (short) 16, (short) 0);
        symbolHash.put("token", xSSimpleTypeDecl4);
        xSFacets.whiteSpace = (short) 2;
        xSFacets.pattern = "([a-zA-Z]{1,8})(-[a-zA-Z0-9]{1,8})*";
        XSSimpleTypeDecl xSSimpleTypeDecl5 = new XSSimpleTypeDecl(xSSimpleTypeDecl4, "language", "http://www.w3.org/2001/XMLSchema", (short) 0, false, null, (short) 23);
        xSSimpleTypeDecl5.m69958e(xSFacets, (short) 24, (short) 0);
        symbolHash.put("language", xSSimpleTypeDecl5);
        xSFacets.whiteSpace = (short) 2;
        XSSimpleTypeDecl xSSimpleTypeDecl6 = new XSSimpleTypeDecl(xSSimpleTypeDecl4, "Name", "http://www.w3.org/2001/XMLSchema", (short) 0, false, null, (short) 25);
        xSSimpleTypeDecl6.m69959f(xSFacets, (short) 16, (short) 0, (short) 2);
        symbolHash.put("Name", xSSimpleTypeDecl6);
        xSFacets.whiteSpace = (short) 2;
        XSSimpleTypeDecl xSSimpleTypeDecl7 = new XSSimpleTypeDecl(xSSimpleTypeDecl6, "NCName", "http://www.w3.org/2001/XMLSchema", (short) 0, false, null, (short) 26);
        xSSimpleTypeDecl7.m69959f(xSFacets, (short) 16, (short) 0, (short) 3);
        symbolHash.put("NCName", xSSimpleTypeDecl7);
        symbolHash.put("ID", new XSSimpleTypeDecl(xSSimpleTypeDecl7, "ID", (short) 21, (short) 0, false, false, false, true, (short) 27));
        XSSimpleTypeDecl xSSimpleTypeDecl8 = new XSSimpleTypeDecl(xSSimpleTypeDecl7, "IDREF", (short) 22, (short) 0, false, false, false, true, (short) 28);
        symbolHash.put("IDREF", xSSimpleTypeDecl8);
        xSFacets.minLength = 1;
        XSSimpleTypeDecl xSSimpleTypeDecl9 = new XSSimpleTypeDecl(new XSSimpleTypeDecl((String) null, "http://www.w3.org/2001/XMLSchema", (short) 0, xSSimpleTypeDecl8, true, (XSObjectList) null), "IDREFS", "http://www.w3.org/2001/XMLSchema", (short) 0, false, (XSObjectList) null);
        xSSimpleTypeDecl9.m69958e(xSFacets, (short) 2, (short) 0);
        symbolHash.put("IDREFS", xSSimpleTypeDecl9);
        XSSimpleTypeDecl xSSimpleTypeDecl10 = new XSSimpleTypeDecl(xSSimpleTypeDecl7, "ENTITY", (short) 23, (short) 0, false, false, false, true, (short) 29);
        symbolHash.put("ENTITY", xSSimpleTypeDecl10);
        xSFacets.minLength = 1;
        XSSimpleTypeDecl xSSimpleTypeDecl11 = new XSSimpleTypeDecl(new XSSimpleTypeDecl((String) null, "http://www.w3.org/2001/XMLSchema", (short) 0, xSSimpleTypeDecl10, true, (XSObjectList) null), "ENTITIES", "http://www.w3.org/2001/XMLSchema", (short) 0, false, (XSObjectList) null);
        xSSimpleTypeDecl11.m69958e(xSFacets, (short) 2, (short) 0);
        symbolHash.put("ENTITIES", xSSimpleTypeDecl11);
        xSFacets.whiteSpace = (short) 2;
        XSSimpleTypeDecl xSSimpleTypeDecl12 = new XSSimpleTypeDecl(xSSimpleTypeDecl4, "NMTOKEN", "http://www.w3.org/2001/XMLSchema", (short) 0, false, null, (short) 24);
        xSSimpleTypeDecl12.m69959f(xSFacets, (short) 16, (short) 0, (short) 1);
        symbolHash.put("NMTOKEN", xSSimpleTypeDecl12);
        xSFacets.minLength = 1;
        XSSimpleTypeDecl xSSimpleTypeDecl13 = new XSSimpleTypeDecl(new XSSimpleTypeDecl((String) null, "http://www.w3.org/2001/XMLSchema", (short) 0, xSSimpleTypeDecl12, true, (XSObjectList) null), "NMTOKENS", "http://www.w3.org/2001/XMLSchema", (short) 0, false, (XSObjectList) null);
        xSSimpleTypeDecl13.m69958e(xSFacets, (short) 2, (short) 0);
        symbolHash.put("NMTOKENS", xSSimpleTypeDecl13);
    }

    @Override // org.apache.xerces.impl.p115dv.p116xs.BaseDVFactory, org.apache.xerces.impl.p115dv.SchemaDVFactory
    public XSSimpleType getBuiltInType(String str) {
        return (XSSimpleType) f112341e.get(str);
    }

    @Override // org.apache.xerces.impl.p115dv.p116xs.BaseDVFactory, org.apache.xerces.impl.p115dv.SchemaDVFactory
    public SymbolHash getBuiltInTypes() {
        return f112341e.makeClone();
    }
}
