package org.apache.xerces.impl.p115dv.dtd;

import java.util.StringTokenizer;
import org.apache.xerces.impl.p115dv.DatatypeValidator;
import org.apache.xerces.impl.p115dv.InvalidDatatypeValueException;
import org.apache.xerces.impl.p115dv.ValidationContext;

/* loaded from: classes13.dex */
public class ListDatatypeValidator implements DatatypeValidator {

    /* renamed from: a */
    public final DatatypeValidator f112278a;

    public ListDatatypeValidator(DatatypeValidator datatypeValidator) {
        this.f112278a = datatypeValidator;
    }

    @Override // org.apache.xerces.impl.p115dv.DatatypeValidator
    public void validate(String str, ValidationContext validationContext) throws InvalidDatatypeValueException {
        StringTokenizer stringTokenizer = new StringTokenizer(str, " ");
        if (stringTokenizer.countTokens() == 0) {
            throw new InvalidDatatypeValueException("EmptyList", null);
        }
        while (stringTokenizer.hasMoreTokens()) {
            this.f112278a.validate(stringTokenizer.nextToken(), validationContext);
        }
    }
}
