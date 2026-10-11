package com.sunia.HTREnginev2;

import org.apache.xerces.impl.p115dv.InvalidDatatypeValueException;
import org.apache.xerces.impl.p115dv.ValidationContext;
import org.apache.xerces.impl.p115dv.p116xs.TypeValidator;

/* renamed from: com.sunia.HTREnginev2.sb */
/* loaded from: classes13.dex */
public class C14394sb extends TypeValidator {
    @Override // org.apache.xerces.impl.p115dv.p116xs.TypeValidator
    public Object getActualValue(String str, ValidationContext validationContext) throws InvalidDatatypeValueException {
        return str;
    }

    @Override // org.apache.xerces.impl.p115dv.p116xs.TypeValidator
    public short getAllowedFacets() {
        return (short) 0;
    }
}
