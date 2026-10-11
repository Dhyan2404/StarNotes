package org.apache.xerces.impl.p115dv.dtd;

import org.apache.xerces.impl.p115dv.DatatypeValidator;
import org.apache.xerces.impl.p115dv.InvalidDatatypeValueException;
import org.apache.xerces.impl.p115dv.ValidationContext;

/* loaded from: classes13.dex */
public class ENTITYDatatypeValidator implements DatatypeValidator {
    @Override // org.apache.xerces.impl.p115dv.DatatypeValidator
    public void validate(String str, ValidationContext validationContext) throws InvalidDatatypeValueException {
        if (!validationContext.isEntityUnparsed(str)) {
            throw new InvalidDatatypeValueException("ENTITYNotUnparsed", new Object[]{str});
        }
    }
}
