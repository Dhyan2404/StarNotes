package org.apache.xmlbeans.impl.values;

import java.math.BigDecimal;
import java.math.BigInteger;
import net.p110sf.saxon.value.FloatingPointConverter;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.common.ValidationContext;
import org.apache.xmlbeans.impl.schema.BuiltinSchemaTypeSystem;
import org.apache.xmlbeans.impl.util.XsTypeConverter;

/* loaded from: classes13.dex */
public abstract class JavaDoubleHolder extends XmlObjectBase {
    double _value;

    public static int compare(double d, double d2) {
        if (d < d2) {
            return -1;
        }
        if (d > d2) {
            return 1;
        }
        return Long.compare(Double.doubleToLongBits(d), Double.doubleToLongBits(d2));
    }

    public static String serialize(double d) {
        return d == Double.POSITIVE_INFINITY ? FloatingPointConverter.f102870b : d == Double.NEGATIVE_INFINITY ? FloatingPointConverter.f102869a : Double.isNaN(d) ? "NaN" : Double.toString(d);
    }

    public static double validateLexical(String str, ValidationContext validationContext) {
        try {
            return XsTypeConverter.lexDouble(str);
        } catch (NumberFormatException unused) {
            validationContext.invalid("double", new Object[]{str});
            return Double.NaN;
        }
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase
    public int compare_to(XmlObject xmlObject) {
        return compare(this._value, ((XmlObjectBase) xmlObject).getDoubleValue());
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase
    public String compute_text(NamespaceManager namespaceManager) {
        return serialize(this._value);
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase
    public boolean equal_to(XmlObject xmlObject) {
        return compare(this._value, ((XmlObjectBase) xmlObject).getDoubleValue()) == 0;
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase, org.apache.xmlbeans.SimpleValue
    public BigDecimal getBigDecimalValue() {
        check_dated();
        return new BigDecimal(this._value);
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase, org.apache.xmlbeans.SimpleValue
    public double getDoubleValue() {
        check_dated();
        return this._value;
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase, org.apache.xmlbeans.SimpleValue
    public float getFloatValue() {
        check_dated();
        return (float) this._value;
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase, org.apache.xmlbeans.XmlObject
    public SchemaType schemaType() {
        return BuiltinSchemaTypeSystem.ST_DOUBLE;
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase
    public void set_BigDecimal(BigDecimal bigDecimal) {
        set_double(bigDecimal.doubleValue());
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase
    public void set_BigInteger(BigInteger bigInteger) {
        set_double(bigInteger.doubleValue());
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase
    public void set_double(double d) {
        this._value = d;
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase
    public void set_float(float f) {
        set_double(f);
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase
    public void set_long(long j) {
        set_double(j);
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase
    public void set_nil() {
        this._value = 0.0d;
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase
    public void set_text(String str) {
        set_double(validateLexical(str, XmlObjectBase._voorVc));
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase
    public int value_hash_code() {
        long doubleToLongBits = Double.doubleToLongBits(this._value);
        return (int) (((doubleToLongBits >> 32) * 19) + doubleToLongBits);
    }
}
