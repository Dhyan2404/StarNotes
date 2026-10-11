package com.sun.org.apache.xerces.internal.impl.p053dv.dtd;

import com.sun.org.apache.xerces.internal.impl.p053dv.DTDDVFactory;
import com.sun.org.apache.xerces.internal.impl.p053dv.DatatypeValidator;
import java.util.Hashtable;

/* loaded from: classes10.dex */
public class DTDDVFactoryImpl extends DTDDVFactory {
    static Hashtable fBuiltInTypes = new Hashtable();

    static {
        createBuiltInTypes();
    }

    public static void createBuiltInTypes() {
        fBuiltInTypes.put("string", new StringDatatypeValidator());
        fBuiltInTypes.put("ID", new IDDatatypeValidator());
        IDREFDatatypeValidator iDREFDatatypeValidator = new IDREFDatatypeValidator();
        fBuiltInTypes.put("IDREF", iDREFDatatypeValidator);
        fBuiltInTypes.put("IDREFS", new ListDatatypeValidator(iDREFDatatypeValidator));
        ENTITYDatatypeValidator eNTITYDatatypeValidator = new ENTITYDatatypeValidator();
        fBuiltInTypes.put("ENTITY", new ENTITYDatatypeValidator());
        fBuiltInTypes.put("ENTITIES", new ListDatatypeValidator(eNTITYDatatypeValidator));
        fBuiltInTypes.put("NOTATION", new NOTATIONDatatypeValidator());
        NMTOKENDatatypeValidator nMTOKENDatatypeValidator = new NMTOKENDatatypeValidator();
        fBuiltInTypes.put("NMTOKEN", nMTOKENDatatypeValidator);
        fBuiltInTypes.put("NMTOKENS", new ListDatatypeValidator(nMTOKENDatatypeValidator));
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.DTDDVFactory
    public DatatypeValidator getBuiltInDV(String str) {
        return (DatatypeValidator) fBuiltInTypes.get(str);
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.DTDDVFactory
    public Hashtable getBuiltInTypes() {
        return (Hashtable) fBuiltInTypes.clone();
    }
}
