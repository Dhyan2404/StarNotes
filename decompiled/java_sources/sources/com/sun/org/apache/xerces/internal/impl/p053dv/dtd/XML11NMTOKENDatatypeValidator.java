package com.sun.org.apache.xerces.internal.impl.p053dv.dtd;

import com.sun.org.apache.xerces.internal.impl.p053dv.InvalidDatatypeValueException;
import com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext;
import com.sun.org.apache.xerces.internal.util.XML11Char;

/* loaded from: classes10.dex */
public class XML11NMTOKENDatatypeValidator extends NMTOKENDatatypeValidator {
    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.dtd.NMTOKENDatatypeValidator, com.sun.org.apache.xerces.internal.impl.p053dv.DatatypeValidator
    public void validate(String str, ValidationContext validationContext) throws InvalidDatatypeValueException {
        if (!XML11Char.isXML11ValidNmtoken(str)) {
            throw new InvalidDatatypeValueException("NMTOKENInvalid", new Object[]{str});
        }
    }
}
