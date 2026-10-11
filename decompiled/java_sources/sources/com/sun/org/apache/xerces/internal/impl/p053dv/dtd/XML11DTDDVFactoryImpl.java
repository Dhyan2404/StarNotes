package com.sun.org.apache.xerces.internal.impl.p053dv.dtd;

import com.sun.org.apache.xerces.internal.impl.p053dv.DatatypeValidator;
import java.util.Enumeration;
import java.util.Hashtable;

/* loaded from: classes10.dex */
public class XML11DTDDVFactoryImpl extends DTDDVFactoryImpl {
    static Hashtable fXML11BuiltInTypes;

    static {
        Hashtable hashtable = new Hashtable();
        fXML11BuiltInTypes = hashtable;
        hashtable.put("XML11ID", new XML11IDDatatypeValidator());
        XML11IDREFDatatypeValidator xML11IDREFDatatypeValidator = new XML11IDREFDatatypeValidator();
        fXML11BuiltInTypes.put("XML11IDREF", xML11IDREFDatatypeValidator);
        fXML11BuiltInTypes.put("XML11IDREFS", new ListDatatypeValidator(xML11IDREFDatatypeValidator));
        XML11NMTOKENDatatypeValidator xML11NMTOKENDatatypeValidator = new XML11NMTOKENDatatypeValidator();
        fXML11BuiltInTypes.put("XML11NMTOKEN", xML11NMTOKENDatatypeValidator);
        fXML11BuiltInTypes.put("XML11NMTOKENS", new ListDatatypeValidator(xML11NMTOKENDatatypeValidator));
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.dtd.DTDDVFactoryImpl, com.sun.org.apache.xerces.internal.impl.p053dv.DTDDVFactory
    public DatatypeValidator getBuiltInDV(String str) {
        return fXML11BuiltInTypes.get(str) != null ? (DatatypeValidator) fXML11BuiltInTypes.get(str) : (DatatypeValidator) DTDDVFactoryImpl.fBuiltInTypes.get(str);
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.dtd.DTDDVFactoryImpl, com.sun.org.apache.xerces.internal.impl.p053dv.DTDDVFactory
    public Hashtable getBuiltInTypes() {
        Hashtable hashtable = (Hashtable) DTDDVFactoryImpl.fBuiltInTypes.clone();
        Enumeration keys = fXML11BuiltInTypes.keys();
        while (keys.hasMoreElements()) {
            Object nextElement = keys.nextElement();
            hashtable.put(nextElement, fXML11BuiltInTypes.get(nextElement));
        }
        return hashtable;
    }
}
