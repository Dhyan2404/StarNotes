package com.sun.org.apache.xerces.internal.impl.p053dv.dtd;

import com.sun.org.apache.xerces.internal.impl.p053dv.DatatypeValidator;
import com.sun.org.apache.xerces.internal.impl.p053dv.InvalidDatatypeValueException;
import com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext;
import com.sun.org.apache.xerces.internal.util.XMLChar;

/* loaded from: classes10.dex */
public class IDDatatypeValidator implements DatatypeValidator {
    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.DatatypeValidator
    public void validate(String str, ValidationContext validationContext) throws InvalidDatatypeValueException {
        if (validationContext.useNamespaces()) {
            if (!XMLChar.isValidNCName(str)) {
                throw new InvalidDatatypeValueException("IDInvalidWithNamespaces", new Object[]{str});
            }
        } else if (!XMLChar.isValidName(str)) {
            throw new InvalidDatatypeValueException("IDInvalid", new Object[]{str});
        }
        if (validationContext.isIdDeclared(str)) {
            throw new InvalidDatatypeValueException("IDNotUnique", new Object[]{str});
        }
        validationContext.addId(str);
    }
}
