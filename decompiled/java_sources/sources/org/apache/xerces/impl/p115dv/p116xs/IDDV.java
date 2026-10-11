package org.apache.xerces.impl.p115dv.p116xs;

import org.apache.xerces.impl.p115dv.InvalidDatatypeValueException;
import org.apache.xerces.impl.p115dv.ValidationContext;
import org.apache.xerces.util.XMLChar;
import org.apache.xmlbeans.XmlErrorCodes;

/* loaded from: classes13.dex */
public class IDDV extends TypeValidator {
    @Override // org.apache.xerces.impl.p115dv.p116xs.TypeValidator
    public void checkExtraRules(Object obj, ValidationContext validationContext) throws InvalidDatatypeValueException {
        String str = (String) obj;
        if (validationContext.isIdDeclared(str)) {
            throw new InvalidDatatypeValueException(XmlErrorCodes.ID_VALID$DUPLICATE, new Object[]{str});
        }
        validationContext.addId(str);
    }

    @Override // org.apache.xerces.impl.p115dv.p116xs.TypeValidator
    public Object getActualValue(String str, ValidationContext validationContext) throws InvalidDatatypeValueException {
        if (XMLChar.isValidNCName(str)) {
            return str;
        }
        throw new InvalidDatatypeValueException("cvc-datatype-valid.1.2.1", new Object[]{str, "NCName"});
    }

    @Override // org.apache.xerces.impl.p115dv.p116xs.TypeValidator
    public short getAllowedFacets() {
        return (short) 2079;
    }
}
