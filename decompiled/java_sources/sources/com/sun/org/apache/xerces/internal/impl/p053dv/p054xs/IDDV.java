package com.sun.org.apache.xerces.internal.impl.p053dv.p054xs;

import com.sun.org.apache.xerces.internal.impl.p053dv.InvalidDatatypeValueException;
import com.sun.org.apache.xerces.internal.impl.p053dv.ValidationContext;
import com.sun.org.apache.xerces.internal.util.XMLChar;
import org.apache.xmlbeans.XmlErrorCodes;

/* loaded from: classes10.dex */
public class IDDV extends TypeValidator {
    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.TypeValidator
    public void checkExtraRules(Object obj, ValidationContext validationContext) throws InvalidDatatypeValueException {
        String str = (String) obj;
        if (validationContext.isIdDeclared(str)) {
            throw new InvalidDatatypeValueException(XmlErrorCodes.ID_VALID$DUPLICATE, new Object[]{str});
        }
        validationContext.addId(str);
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.TypeValidator
    public Object getActualValue(String str, ValidationContext validationContext) throws InvalidDatatypeValueException {
        if (XMLChar.isValidNCName(str)) {
            return str;
        }
        throw new InvalidDatatypeValueException("cvc-datatype-valid.1.2.1", new Object[]{str, "NCName"});
    }

    @Override // com.sun.org.apache.xerces.internal.impl.p053dv.p054xs.TypeValidator
    public short getAllowedFacets() {
        return (short) 2079;
    }
}
