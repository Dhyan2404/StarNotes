package org.apache.xerces.impl.p115dv.dtd;

import java.util.Hashtable;
import org.apache.xerces.impl.p115dv.DTDDVFactory;
import org.apache.xerces.impl.p115dv.DatatypeValidator;

/* loaded from: classes13.dex */
public class DTDDVFactoryImpl extends DTDDVFactory {

    /* renamed from: b */
    public static final Hashtable f112277b = new Hashtable();

    static {
        m69930a();
    }

    /* renamed from: a */
    public static void m69930a() {
        Hashtable hashtable = f112277b;
        hashtable.put("string", new StringDatatypeValidator());
        hashtable.put("ID", new IDDatatypeValidator());
        IDREFDatatypeValidator iDREFDatatypeValidator = new IDREFDatatypeValidator();
        hashtable.put("IDREF", iDREFDatatypeValidator);
        hashtable.put("IDREFS", new ListDatatypeValidator(iDREFDatatypeValidator));
        ENTITYDatatypeValidator eNTITYDatatypeValidator = new ENTITYDatatypeValidator();
        hashtable.put("ENTITY", new ENTITYDatatypeValidator());
        hashtable.put("ENTITIES", new ListDatatypeValidator(eNTITYDatatypeValidator));
        hashtable.put("NOTATION", new NOTATIONDatatypeValidator());
        NMTOKENDatatypeValidator nMTOKENDatatypeValidator = new NMTOKENDatatypeValidator();
        hashtable.put("NMTOKEN", nMTOKENDatatypeValidator);
        hashtable.put("NMTOKENS", new ListDatatypeValidator(nMTOKENDatatypeValidator));
    }

    @Override // org.apache.xerces.impl.p115dv.DTDDVFactory
    public DatatypeValidator getBuiltInDV(String str) {
        return (DatatypeValidator) f112277b.get(str);
    }

    @Override // org.apache.xerces.impl.p115dv.DTDDVFactory
    public Hashtable getBuiltInTypes() {
        return (Hashtable) f112277b.clone();
    }
}
