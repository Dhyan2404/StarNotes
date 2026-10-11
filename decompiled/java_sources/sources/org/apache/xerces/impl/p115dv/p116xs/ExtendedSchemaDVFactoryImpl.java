package org.apache.xerces.impl.p115dv.p116xs;

import org.apache.xerces.impl.p115dv.XSSimpleType;
import org.apache.xerces.util.SymbolHash;

/* loaded from: classes13.dex */
public class ExtendedSchemaDVFactoryImpl extends BaseSchemaDVFactory {

    /* renamed from: c */
    public static SymbolHash f112337c = new SymbolHash();

    static {
        m69947a();
    }

    /* renamed from: a */
    public static void m69947a() {
        SymbolHash symbolHash = f112337c;
        XSSimpleTypeDecl xSSimpleTypeDecl = XSSimpleTypeDecl.f112368b1;
        BaseSchemaDVFactory.createBuiltInTypes(symbolHash, xSSimpleTypeDecl);
        f112337c.put("anyAtomicType", xSSimpleTypeDecl);
        XSSimpleTypeDecl xSSimpleTypeDecl2 = (XSSimpleTypeDecl) f112337c.get("duration");
        f112337c.put("yearMonthDuration", new XSSimpleTypeDecl(xSSimpleTypeDecl2, "yearMonthDuration", (short) 27, (short) 1, false, false, false, true, (short) 46));
        f112337c.put("dayTimeDuration", new XSSimpleTypeDecl(xSSimpleTypeDecl2, "dayTimeDuration", (short) 28, (short) 1, false, false, false, true, (short) 47));
    }

    @Override // org.apache.xerces.impl.p115dv.SchemaDVFactory
    public XSSimpleType getBuiltInType(String str) {
        return (XSSimpleType) f112337c.get(str);
    }

    @Override // org.apache.xerces.impl.p115dv.SchemaDVFactory
    public SymbolHash getBuiltInTypes() {
        return f112337c.makeClone();
    }
}
