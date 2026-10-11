package org.apache.xerces.impl.p115dv.p116xs;

import org.apache.xerces.impl.p115dv.XSSimpleType;
import org.apache.xerces.util.SymbolHash;

/* loaded from: classes13.dex */
public class SchemaDVFactoryImpl extends BaseSchemaDVFactory {

    /* renamed from: c */
    public static final SymbolHash f112346c = new SymbolHash();

    static {
        m69952a();
    }

    /* renamed from: a */
    public static void m69952a() {
        BaseSchemaDVFactory.createBuiltInTypes(f112346c, XSSimpleTypeDecl.f112367a1);
    }

    @Override // org.apache.xerces.impl.p115dv.SchemaDVFactory
    public XSSimpleType getBuiltInType(String str) {
        return (XSSimpleType) f112346c.get(str);
    }

    @Override // org.apache.xerces.impl.p115dv.SchemaDVFactory
    public SymbolHash getBuiltInTypes() {
        return f112346c.makeClone();
    }
}
