package org.apache.xmlbeans.impl.values;

import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlAnySimpleType;
import org.apache.xmlbeans.XmlErrorCodes;
import org.apache.xmlbeans.impl.common.QNameHelper;
import org.apache.xmlbeans.impl.common.ValidationContext;

/* loaded from: classes13.dex */
public class JavaUriHolderEx extends JavaUriHolder {
    private final SchemaType _schemaType;

    public JavaUriHolderEx(SchemaType schemaType, boolean z) {
        this._schemaType = schemaType;
        initComplexType(z, false);
    }

    private static boolean check(String str, SchemaType schemaType) {
        int length = str == null ? 0 : str.length();
        XmlAnySimpleType facet = schemaType.getFacet(0);
        if (facet != null && length == ((SimpleValue) facet).getBigIntegerValue().intValue()) {
            return false;
        }
        XmlAnySimpleType facet2 = schemaType.getFacet(1);
        if (facet2 != null && length < ((SimpleValue) facet2).getBigIntegerValue().intValue()) {
            return false;
        }
        XmlAnySimpleType facet3 = schemaType.getFacet(2);
        return facet3 == null || length <= ((SimpleValue) facet3).getBigIntegerValue().intValue();
    }

    public static void validateLexical(String str, SchemaType schemaType, ValidationContext validationContext) {
        int intValue;
        int intValue2;
        int intValue3;
        JavaUriHolder.validateLexical(str, validationContext);
        XmlAnySimpleType[] enumerationValues = schemaType.getEnumerationValues();
        if (enumerationValues != null) {
            int i = 0;
            while (i < enumerationValues.length && !((SimpleValue) enumerationValues[i]).getStringValue().equals(str)) {
                i++;
            }
            if (i >= enumerationValues.length) {
                validationContext.invalid(XmlErrorCodes.DATATYPE_ENUM_VALID, new Object[]{"anyURI", str, QNameHelper.readable(schemaType)});
            }
        }
        if (schemaType.hasPatternFacet() && !schemaType.matchPatternFacet(str)) {
            validationContext.invalid(XmlErrorCodes.DATATYPE_VALID$PATTERN_VALID, new Object[]{"anyURI", str, QNameHelper.readable(schemaType)});
        }
        XmlAnySimpleType facet = schemaType.getFacet(0);
        if (facet != null && (intValue3 = ((SimpleValue) facet).getBigIntegerValue().intValue()) != str.length()) {
            validationContext.invalid(XmlErrorCodes.DATATYPE_LENGTH_VALID$STRING, new Object[]{"anyURI", str, Integer.valueOf(intValue3), QNameHelper.readable(schemaType)});
        }
        XmlAnySimpleType facet2 = schemaType.getFacet(1);
        if (facet2 != null && (intValue2 = ((SimpleValue) facet2).getBigIntegerValue().intValue()) > str.length()) {
            validationContext.invalid(XmlErrorCodes.DATATYPE_MIN_LENGTH_VALID$STRING, new Object[]{"anyURI", str, Integer.valueOf(intValue2), QNameHelper.readable(schemaType)});
        }
        XmlAnySimpleType facet3 = schemaType.getFacet(2);
        if (facet3 == null || (intValue = ((SimpleValue) facet3).getBigIntegerValue().intValue()) >= str.length()) {
            return;
        }
        validationContext.invalid(XmlErrorCodes.DATATYPE_MAX_LENGTH_VALID$STRING, new Object[]{"anyURI", str, Integer.valueOf(intValue), QNameHelper.readable(schemaType)});
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase
    public int get_wscanon_rule() {
        return schemaType().getWhiteSpaceRule();
    }

    @Override // org.apache.xmlbeans.impl.values.JavaUriHolder, org.apache.xmlbeans.impl.values.XmlObjectBase, org.apache.xmlbeans.XmlObject
    public SchemaType schemaType() {
        return this._schemaType;
    }

    @Override // org.apache.xmlbeans.impl.values.JavaUriHolder, org.apache.xmlbeans.impl.values.XmlObjectBase
    public void set_text(String str) {
        if (_validateOnSet()) {
            if (!check(str, this._schemaType)) {
                throw new XmlValueOutOfRangeException();
            }
            if (!this._schemaType.matchPatternFacet(str)) {
                throw new XmlValueOutOfRangeException();
            }
        }
        super.set_text(str);
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase
    public void validate_simpleval(String str, ValidationContext validationContext) {
        validateLexical(getStringValue(), schemaType(), validationContext);
    }
}
