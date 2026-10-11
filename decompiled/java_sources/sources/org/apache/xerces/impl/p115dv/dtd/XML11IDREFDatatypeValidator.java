package org.apache.xerces.impl.p115dv.dtd;

import org.apache.xerces.impl.p115dv.InvalidDatatypeValueException;
import org.apache.xerces.impl.p115dv.ValidationContext;
import org.apache.xerces.util.XML11Char;

/* loaded from: classes13.dex */
public class XML11IDREFDatatypeValidator extends IDREFDatatypeValidator {
    @Override // org.apache.xerces.impl.p115dv.dtd.IDREFDatatypeValidator, org.apache.xerces.impl.p115dv.DatatypeValidator
    public void validate(String str, ValidationContext validationContext) throws InvalidDatatypeValueException {
        if (validationContext.useNamespaces()) {
            if (!XML11Char.isXML11ValidNCName(str)) {
                throw new InvalidDatatypeValueException("IDREFInvalidWithNamespaces", new Object[]{str});
            }
        } else if (!XML11Char.isXML11ValidName(str)) {
            throw new InvalidDatatypeValueException("IDREFInvalid", new Object[]{str});
        }
        validationContext.addIdRef(str);
    }
}
