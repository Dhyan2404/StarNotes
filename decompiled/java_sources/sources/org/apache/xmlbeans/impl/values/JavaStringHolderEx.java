package org.apache.xmlbeans.impl.values;

import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlAnySimpleType;
import org.apache.xmlbeans.XmlErrorCodes;
import org.apache.xmlbeans.XmlTokenSource;
import org.apache.xmlbeans.impl.common.QNameHelper;
import org.apache.xmlbeans.impl.common.ValidationContext;

/* loaded from: classes13.dex */
public abstract class JavaStringHolderEx extends JavaStringHolder {
    private final SchemaType _schemaType;

    public JavaStringHolderEx(SchemaType schemaType, boolean z) {
        this._schemaType = schemaType;
        initComplexType(z, false);
    }

    public static void validateLexical(String str, SchemaType schemaType, ValidationContext validationContext) {
        int intValue;
        int intValue2;
        int intValue3;
        if (!schemaType.matchPatternFacet(str)) {
            validationContext.invalid(XmlErrorCodes.DATATYPE_VALID$PATTERN_VALID, new Object[]{"string", str, QNameHelper.readable(schemaType)});
            return;
        }
        XmlTokenSource facet = schemaType.getFacet(0);
        if (facet != null && str.length() != (intValue3 = ((XmlObjectBase) facet).getBigIntegerValue().intValue())) {
            validationContext.invalid(XmlErrorCodes.DATATYPE_LENGTH_VALID$STRING, new Object[]{"string", Integer.valueOf(str.length()), Integer.valueOf(intValue3), QNameHelper.readable(schemaType)});
            return;
        }
        XmlTokenSource facet2 = schemaType.getFacet(1);
        if (facet2 != null && str.length() < (intValue2 = ((XmlObjectBase) facet2).getBigIntegerValue().intValue())) {
            validationContext.invalid(XmlErrorCodes.DATATYPE_MIN_LENGTH_VALID$STRING, new Object[]{"string", Integer.valueOf(str.length()), Integer.valueOf(intValue2), QNameHelper.readable(schemaType)});
            return;
        }
        XmlTokenSource facet3 = schemaType.getFacet(2);
        if (facet3 != null && str.length() > (intValue = ((XmlObjectBase) facet3).getBigIntegerValue().intValue())) {
            validationContext.invalid(XmlErrorCodes.DATATYPE_MAX_LENGTH_VALID$STRING, new Object[]{"string", Integer.valueOf(str.length()), Integer.valueOf(intValue), QNameHelper.readable(schemaType)});
            return;
        }
        XmlAnySimpleType[] enumerationValues = schemaType.getEnumerationValues();
        if (enumerationValues != null) {
            for (XmlAnySimpleType xmlAnySimpleType : enumerationValues) {
                if (str.equals(xmlAnySimpleType.getStringValue())) {
                    return;
                }
            }
            validationContext.invalid(XmlErrorCodes.DATATYPE_ENUM_VALID, new Object[]{"string", str, QNameHelper.readable(schemaType)});
        }
    }

    @Override // org.apache.xmlbeans.impl.values.JavaStringHolder, org.apache.xmlbeans.impl.values.XmlObjectBase
    public int get_wscanon_rule() {
        return schemaType().getWhiteSpaceRule();
    }

    @Override // org.apache.xmlbeans.impl.values.JavaStringHolder, org.apache.xmlbeans.impl.values.XmlObjectBase
    public boolean is_defaultable_ws(String str) {
        try {
            validateLexical(str, this._schemaType, XmlObjectBase._voorVc);
            return false;
        } catch (XmlValueOutOfRangeException unused) {
            return true;
        }
    }

    @Override // org.apache.xmlbeans.impl.values.JavaStringHolder, org.apache.xmlbeans.impl.values.XmlObjectBase, org.apache.xmlbeans.XmlObject
    public SchemaType schemaType() {
        return this._schemaType;
    }

    @Override // org.apache.xmlbeans.impl.values.JavaStringHolder, org.apache.xmlbeans.impl.values.XmlObjectBase
    public void set_text(String str) {
        if (_validateOnSet()) {
            validateLexical(str, this._schemaType, XmlObjectBase._voorVc);
        }
        super.set_text(str);
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase
    public void validate_simpleval(String str, ValidationContext validationContext) {
        validateLexical(getStringValue(), schemaType(), validationContext);
    }
}
