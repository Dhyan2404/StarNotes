package org.apache.xerces.impl.p115dv.dtd;

import org.apache.xerces.impl.p115dv.InvalidDatatypeValueException;
import org.apache.xerces.impl.p115dv.ValidationContext;
import org.apache.xerces.util.XML11Char;

/* loaded from: classes13.dex */
public class XML11NMTOKENDatatypeValidator extends NMTOKENDatatypeValidator {
    @Override // org.apache.xerces.impl.p115dv.dtd.NMTOKENDatatypeValidator, org.apache.xerces.impl.p115dv.DatatypeValidator
    public void validate(String str, ValidationContext validationContext) throws InvalidDatatypeValueException {
        if (!XML11Char.isXML11ValidNmtoken(str)) {
            throw new InvalidDatatypeValueException("NMTOKENInvalid", new Object[]{str});
        }
    }
}
