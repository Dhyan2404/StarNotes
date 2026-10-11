package org.apache.xmlbeans.impl.values;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.RoundingMode;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.common.ValidationContext;
import org.apache.xmlbeans.impl.schema.BuiltinSchemaTypeSystem;
import org.apache.xmlbeans.impl.util.XsTypeConverter;

/* loaded from: classes13.dex */
public class JavaDecimalHolder extends XmlObjectBase {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final BigInteger _maxlong = BigInteger.valueOf(Long.MAX_VALUE);
    private static final BigInteger _minlong = BigInteger.valueOf(Long.MIN_VALUE);
    private BigDecimal _value;

    public static void validateLexical(String str, ValidationContext validationContext) {
        char charAt;
        int length = str.length();
        boolean z = false;
        boolean z2 = false;
        for (int i = (length <= 0 || !((charAt = str.charAt(0)) == '+' || charAt == '-')) ? 0 : 1; i < length; i++) {
            char charAt2 = str.charAt(i);
            if (charAt2 == '.') {
                if (z2) {
                    validationContext.invalid("decimal", new Object[]{"saw '.' more than once: " + str});
                    return;
                }
                z2 = true;
            } else {
                if (charAt2 < '0' || charAt2 > '9') {
                    validationContext.invalid("decimal", new Object[]{"unexpected char '" + ((int) charAt2) + CloudStorageConstants.SINGLE_QUOTES});
                    return;
                }
                z = true;
            }
        }
        if (z) {
            return;
        }
        validationContext.invalid("decimal", new Object[]{"expected at least one digit"});
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase
    public int compare_to(XmlObject xmlObject) {
        return this._value.compareTo(((XmlObjectBase) xmlObject).getBigDecimalValue());
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase
    public String compute_text(NamespaceManager namespaceManager) {
        return XsTypeConverter.printDecimal(this._value);
    }

    public int decimalHashCode() {
        String bigDecimal = this._value.toString();
        int length = bigDecimal.length() - 1;
        while (length >= 0 && bigDecimal.charAt(length) == '0') {
            length--;
        }
        return bigDecimal.substring(0, length + 1).hashCode();
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase
    public boolean equal_to(XmlObject xmlObject) {
        return this._value.compareTo(((XmlObjectBase) xmlObject).getBigDecimalValue()) == 0;
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase, org.apache.xmlbeans.SimpleValue
    public BigDecimal getBigDecimalValue() {
        check_dated();
        return this._value;
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase, org.apache.xmlbeans.XmlObject
    public SchemaType schemaType() {
        return BuiltinSchemaTypeSystem.ST_DECIMAL;
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase
    public void set_BigDecimal(BigDecimal bigDecimal) {
        this._value = bigDecimal;
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase
    public void set_nil() {
        this._value = null;
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase
    public void set_text(String str) {
        if (_validateOnSet()) {
            validateLexical(str, XmlObjectBase._voorVc);
        }
        try {
            set_BigDecimal(new BigDecimal(str));
        } catch (NumberFormatException unused) {
            XmlObjectBase._voorVc.invalid("decimal", new Object[]{str});
        }
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase
    public int value_hash_code() {
        if (this._value.scale() > 0 && this._value.setScale(0, RoundingMode.DOWN).compareTo(this._value) != 0) {
            return decimalHashCode();
        }
        BigInteger bigInteger = this._value.toBigInteger();
        if (bigInteger.compareTo(_maxlong) > 0 || bigInteger.compareTo(_minlong) < 0) {
            return bigInteger.hashCode();
        }
        long longValue = bigInteger.longValue();
        return (int) (((longValue >> 32) * 19) + longValue);
    }
}
