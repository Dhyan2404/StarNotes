package com.sun.org.apache.xerces.internal.impl.p053dv.dtd;

import com.sun.org.apache.xerces.internal.impl.p053dv.InvalidDatatypeValueException;
import com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext;
import com.sun.org.apache.xerces.internal.util.XML11Char;

/* loaded from: classes10.dex */
public class XML11IDREFDatatypeValidator extends IDREFDatatypeValidator {
    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.dtd.IDREFDatatypeValidator, com.sun.org.apache.xerces.internal.impl.p053dv.DatatypeValidator
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
