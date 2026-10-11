package org.apache.xerces.impl.p115dv.p116xs;

import org.apache.xerces.impl.p115dv.InvalidDatatypeValueException;
import org.apache.xerces.impl.p115dv.ValidationContext;

/* loaded from: classes13.dex */
public class BooleanDV extends TypeValidator {
    @Override // org.apache.xerces.impl.p115dv.p116xs.TypeValidator
    public Object getActualValue(String str, ValidationContext validationContext) throws InvalidDatatypeValueException {
        if ("false".equals(str) || "0".equals(str)) {
            return Boolean.FALSE;
        }
        if ("true".equals(str) || "1".equals(str)) {
            return Boolean.TRUE;
        }
        throw new InvalidDatatypeValueException("cvc-datatype-valid.1.2.1", new Object[]{str, "boolean"});
    }

    @Override // org.apache.xerces.impl.p115dv.p116xs.TypeValidator
    public short getAllowedFacets() {
        return (short) 24;
    }
}
