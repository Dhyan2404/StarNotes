package org.apache.xmlbeans.impl.values;

import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlErrorCodes;
import org.apache.xmlbeans.XmlTokenSource;
import org.apache.xmlbeans.impl.common.QNameHelper;
import org.apache.xmlbeans.impl.common.ValidationContext;

/* loaded from: classes13.dex */
public abstract class JavaBase64HolderEx extends JavaBase64Holder {
    private final SchemaType _schemaType;

    public JavaBase64HolderEx(SchemaType schemaType, boolean z) {
        this._schemaType = schemaType;
        initComplexType(z, false);
    }

    public static void validateValue(byte[] bArr, SchemaType schemaType, ValidationContext validationContext) {
        int intValue;
        int intValue2;
        int intValue3;
        XmlTokenSource facet = schemaType.getFacet(0);
        if (facet != null && (intValue3 = ((XmlObjectBase) facet).getBigIntegerValue().intValue()) != bArr.length) {
            validationContext.invalid(XmlErrorCodes.DATATYPE_LENGTH_VALID$BINARY, new Object[]{"base64Binary", Integer.valueOf(bArr.length), Integer.valueOf(intValue3), QNameHelper.readable(schemaType)});
        }
        XmlTokenSource facet2 = schemaType.getFacet(1);
        if (facet2 != null && (intValue2 = ((XmlObjectBase) facet2).getBigIntegerValue().intValue()) > bArr.length) {
            validationContext.invalid(XmlErrorCodes.DATATYPE_MIN_LENGTH_VALID$BINARY, new Object[]{"base64Binary", Integer.valueOf(bArr.length), Integer.valueOf(intValue2), QNameHelper.readable(schemaType)});
        }
        XmlTokenSource facet3 = schemaType.getFacet(2);
        if (facet3 != null && (intValue = ((XmlObjectBase) facet3).getBigIntegerValue().intValue()) < bArr.length) {
            validationContext.invalid(XmlErrorCodes.DATATYPE_MAX_LENGTH_VALID$BINARY, new Object[]{"base64Binary", Integer.valueOf(bArr.length), Integer.valueOf(intValue), QNameHelper.readable(schemaType)});
        }
        Object[] enumerationValues = schemaType.getEnumerationValues();
        if (enumerationValues != null) {
            int i = 0;
            loop0: while (i < enumerationValues.length) {
                byte[] byteArrayValue = ((XmlObjectBase) enumerationValues[i]).getByteArrayValue();
                if (byteArrayValue.length == bArr.length) {
                    for (int i2 = 0; i2 < byteArrayValue.length; i2++) {
                        if (byteArrayValue[i2] != bArr[i2]) {
                            break;
                        }
                    }
                    break loop0;
                }
                i++;
            }
            if (i >= enumerationValues.length) {
                validationContext.invalid(XmlErrorCodes.DATATYPE_ENUM_VALID$NO_VALUE, new Object[]{"base64Binary", QNameHelper.readable(schemaType)});
            }
        }
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase
    public int get_wscanon_rule() {
        return schemaType().getWhiteSpaceRule();
    }

    @Override // org.apache.xmlbeans.impl.values.JavaBase64Holder, org.apache.xmlbeans.impl.values.XmlObjectBase, org.apache.xmlbeans.XmlObject
    public SchemaType schemaType() {
        return this._schemaType;
    }

    @Override // org.apache.xmlbeans.impl.values.JavaBase64Holder, org.apache.xmlbeans.impl.values.XmlObjectBase
    public void set_ByteArray(byte[] bArr) {
        if (_validateOnSet()) {
            validateValue(bArr, schemaType(), XmlObjectBase._voorVc);
        }
        super.set_ByteArray(bArr);
    }

    @Override // org.apache.xmlbeans.impl.values.JavaBase64Holder, org.apache.xmlbeans.impl.values.XmlObjectBase
    public void set_text(String str) {
        byte[] validateLexical = _validateOnSet() ? JavaBase64Holder.validateLexical(str, schemaType(), XmlObjectBase._voorVc) : JavaBase64Holder.lex(str, XmlObjectBase._voorVc);
        if (validateLexical != null && _validateOnSet()) {
            validateValue(validateLexical, schemaType(), XmlObjectBase._voorVc);
        }
        if (validateLexical != null) {
            super.set_ByteArray(validateLexical);
        }
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase
    public void validate_simpleval(String str, ValidationContext validationContext) {
        JavaBase64Holder.validateLexical(str, schemaType(), validationContext);
        validateValue(getByteArrayValue(), schemaType(), validationContext);
    }
}
