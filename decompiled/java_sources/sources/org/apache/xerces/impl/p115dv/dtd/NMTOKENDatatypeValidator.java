package org.apache.xerces.impl.p115dv.dtd;

import org.apache.xerces.impl.p115dv.DatatypeValidator;
import org.apache.xerces.impl.p115dv.InvalidDatatypeValueException;
import org.apache.xerces.impl.p115dv.ValidationContext;
import org.apache.xerces.util.XMLChar;

/* loaded from: classes13.dex */
public class NMTOKENDatatypeValidator implements DatatypeValidator {
    @Override // org.apache.xerces.impl.p115dv.DatatypeValidator
    public void validate(String str, ValidationContext validationContext) throws InvalidDatatypeValueException {
        if (!XMLChar.isValidNmtoken(str)) {
            throw new InvalidDatatypeValueException("NMTOKENInvalid", new Object[]{str});
        }
    }
}
