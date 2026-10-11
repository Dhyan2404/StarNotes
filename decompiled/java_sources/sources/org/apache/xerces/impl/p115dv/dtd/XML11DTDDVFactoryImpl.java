package org.apache.xerces.impl.p115dv.dtd;

import java.util.Hashtable;
import java.util.Map;
import org.apache.xerces.impl.p115dv.DatatypeValidator;

/* loaded from: classes13.dex */
public class XML11DTDDVFactoryImpl extends DTDDVFactoryImpl {

    /* renamed from: c */
    public static final Hashtable f112279c;

    static {
        Hashtable hashtable = new Hashtable();
        f112279c = hashtable;
        hashtable.put("XML11ID", new XML11IDDatatypeValidator());
        XML11IDREFDatatypeValidator xML11IDREFDatatypeValidator = new XML11IDREFDatatypeValidator();
        hashtable.put("XML11IDREF", xML11IDREFDatatypeValidator);
        hashtable.put("XML11IDREFS", new ListDatatypeValidator(xML11IDREFDatatypeValidator));
        XML11NMTOKENDatatypeValidator xML11NMTOKENDatatypeValidator = new XML11NMTOKENDatatypeValidator();
        hashtable.put("XML11NMTOKEN", xML11NMTOKENDatatypeValidator);
        hashtable.put("XML11NMTOKENS", new ListDatatypeValidator(xML11NMTOKENDatatypeValidator));
    }

    @Override // org.apache.xerces.impl.p115dv.dtd.DTDDVFactoryImpl, org.apache.xerces.impl.p115dv.DTDDVFactory
    public DatatypeValidator getBuiltInDV(String str) {
        Hashtable hashtable = f112279c;
        if (hashtable.get(str) == null) {
            hashtable = DTDDVFactoryImpl.f112277b;
        }
        return (DatatypeValidator) hashtable.get(str);
    }

    @Override // org.apache.xerces.impl.p115dv.dtd.DTDDVFactoryImpl, org.apache.xerces.impl.p115dv.DTDDVFactory
    public Hashtable getBuiltInTypes() {
        Hashtable hashtable = (Hashtable) DTDDVFactoryImpl.f112277b.clone();
        for (Map.Entry entry : f112279c.entrySet()) {
            hashtable.put(entry.getKey(), entry.getValue());
        }
        return hashtable;
    }
}
