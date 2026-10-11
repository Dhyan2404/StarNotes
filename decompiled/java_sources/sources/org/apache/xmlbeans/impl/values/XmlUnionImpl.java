package org.apache.xmlbeans.impl.values;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.GDate;
import org.apache.xmlbeans.GDateSpecification;
import org.apache.xmlbeans.GDuration;
import org.apache.xmlbeans.GDurationSpecification;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlAnySimpleType;
import org.apache.xmlbeans.XmlErrorCodes;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlTokenSource;
import org.apache.xmlbeans.impl.common.QNameHelper;
import org.apache.xmlbeans.impl.common.ValidationContext;
import org.apache.xmlbeans.impl.schema.SchemaTypeImpl;

/* loaded from: classes13.dex */
public class XmlUnionImpl extends XmlObjectBase implements XmlAnySimpleType {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final int JAVA_BYTEARRAY = 50;
    private static final int JAVA_CALENDAR = 49;
    private static final int JAVA_DATE = 48;
    private static final int JAVA_LIST = 51;
    private static final int JAVA_NUMBER = 47;
    private final SchemaType _schemaType;
    private String _textvalue = "";
    private XmlAnySimpleType _value;

    public XmlUnionImpl(SchemaType schemaType, boolean z) {
        this._schemaType = schemaType;
        initComplexType(z, false);
    }

    private static boolean check(XmlObject xmlObject, SchemaType schemaType) {
        XmlAnySimpleType[] enumerationValues = schemaType.getEnumerationValues();
        if (enumerationValues == null) {
            return true;
        }
        for (XmlAnySimpleType xmlAnySimpleType : enumerationValues) {
            if (xmlAnySimpleType.valueEquals(xmlObject)) {
                return true;
            }
        }
        return false;
    }

    private static boolean logical_overlap(SchemaType schemaType, int i) {
        if (i <= 46) {
            return schemaType.getSimpleVariety() == 1 && schemaType.getPrimitiveType().getBuiltinTypeCode() == i;
        }
        switch (i) {
            case 47:
                if (schemaType.getSimpleVariety() != 1) {
                    return false;
                }
                int builtinTypeCode = schemaType.getPrimitiveType().getBuiltinTypeCode();
                if (builtinTypeCode != 18 && builtinTypeCode != 20 && builtinTypeCode != 21) {
                    switch (builtinTypeCode) {
                        case 9:
                        case 10:
                        case 11:
                            break;
                        default:
                            return false;
                    }
                }
                return true;
            case 48:
                if (schemaType.getSimpleVariety() != 1) {
                    return false;
                }
                int builtinTypeCode2 = schemaType.getPrimitiveType().getBuiltinTypeCode();
                return builtinTypeCode2 == 14 || builtinTypeCode2 == 16;
            case 49:
                if (schemaType.getSimpleVariety() != 1) {
                    return false;
                }
                switch (schemaType.getPrimitiveType().getBuiltinTypeCode()) {
                    case 14:
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                        return true;
                    default:
                        return false;
                }
            case 50:
                if (schemaType.getSimpleVariety() != 1) {
                    return false;
                }
                int builtinTypeCode3 = schemaType.getPrimitiveType().getBuiltinTypeCode();
                return builtinTypeCode3 == 4 || builtinTypeCode3 == 5;
            case 51:
                return schemaType.getSimpleVariety() == 3;
            default:
                return false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0037, code lost:
    
        r8._value = r9;
        r8._textvalue = r9.getStringValue();
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0044, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x004a, code lost:
    
        if (r1 == false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x004c, code lost:
    
        org.apache.xmlbeans.impl.values.NamespaceContext.pop();
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0064, code lost:
    
        throw new org.apache.xmlbeans.impl.values.XmlValueOutOfRangeException(org.apache.xmlbeans.XmlErrorCodes.DATATYPE_VALID$UNION, new java.lang.Object[]{r10.toString(), org.apache.xmlbeans.impl.common.QNameHelper.readable(r8._schemaType)});
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void set_primitive(int r9, java.lang.Object r10) {
        /*
            r8 = this;
            org.apache.xmlbeans.SchemaType r0 = r8._schemaType
            org.apache.xmlbeans.SchemaType[] r0 = r0.getUnionConstituentTypes()
            boolean r1 = r8.has_store()
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L1c
            org.apache.xmlbeans.impl.values.NamespaceContext r1 = new org.apache.xmlbeans.impl.values.NamespaceContext
            org.apache.xmlbeans.impl.values.TypeStore r4 = r8.get_store()
            r1.<init>(r4)
            org.apache.xmlbeans.impl.values.NamespaceContext.push(r1)
            r1 = r2
            goto L1d
        L1c:
            r1 = r3
        L1d:
            if (r2 != 0) goto L25
            boolean r4 = r8._validateOnSet()     // Catch: java.lang.Throwable -> L67
            if (r4 != 0) goto L4a
        L25:
            int r4 = r0.length     // Catch: java.lang.Throwable -> L67
            r5 = r3
        L27:
            if (r5 >= r4) goto L48
            r6 = r0[r5]     // Catch: java.lang.Throwable -> L67
            boolean r7 = logical_overlap(r6, r9)     // Catch: java.lang.Throwable -> L67
            if (r7 == 0) goto L45
            org.apache.xmlbeans.impl.schema.SchemaTypeImpl r6 = (org.apache.xmlbeans.impl.schema.SchemaTypeImpl) r6     // Catch: java.lang.Throwable -> L45 java.lang.Throwable -> L67
            org.apache.xmlbeans.XmlAnySimpleType r9 = r6.newValue(r10, r2)     // Catch: java.lang.Throwable -> L45 java.lang.Throwable -> L67
            r8._value = r9     // Catch: java.lang.Throwable -> L67
            java.lang.String r9 = r9.getStringValue()     // Catch: java.lang.Throwable -> L67
            r8._textvalue = r9     // Catch: java.lang.Throwable -> L67
            if (r1 == 0) goto L44
            org.apache.xmlbeans.impl.values.NamespaceContext.pop()
        L44:
            return
        L45:
            int r5 = r5 + 1
            goto L27
        L48:
            if (r2 != 0) goto L65
        L4a:
            if (r1 == 0) goto L4f
            org.apache.xmlbeans.impl.values.NamespaceContext.pop()
        L4f:
            org.apache.xmlbeans.impl.values.XmlValueOutOfRangeException r9 = new org.apache.xmlbeans.impl.values.XmlValueOutOfRangeException
            java.lang.String r10 = r10.toString()
            org.apache.xmlbeans.SchemaType r8 = r8._schemaType
            java.lang.String r8 = org.apache.xmlbeans.impl.common.QNameHelper.readable(r8)
            java.lang.Object[] r8 = new java.lang.Object[]{r10, r8}
            java.lang.String r10 = "cvc-datatype-valid.1.2.3"
            r9.<init>(r10, r8)
            throw r9
        L65:
            r2 = r3
            goto L1d
        L67:
            r8 = move-exception
            if (r1 == 0) goto L6d
            org.apache.xmlbeans.impl.values.NamespaceContext.pop()
        L6d:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xmlbeans.impl.values.XmlUnionImpl.set_primitive(int, java.lang.Object):void");
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase
    public String compute_text(NamespaceManager namespaceManager) {
        return this._textvalue;
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase
    public boolean equal_to(XmlObject xmlObject) {
        return this._value.valueEquals(xmlObject);
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase, org.apache.xmlbeans.SimpleValue
    public BigDecimal getBigDecimalValue() {
        check_dated();
        XmlAnySimpleType xmlAnySimpleType = this._value;
        if (xmlAnySimpleType == null) {
            return null;
        }
        return ((SimpleValue) xmlAnySimpleType).getBigDecimalValue();
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase, org.apache.xmlbeans.SimpleValue
    public BigInteger getBigIntegerValue() {
        check_dated();
        XmlAnySimpleType xmlAnySimpleType = this._value;
        if (xmlAnySimpleType == null) {
            return null;
        }
        return ((SimpleValue) xmlAnySimpleType).getBigIntegerValue();
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase, org.apache.xmlbeans.SimpleValue
    public boolean getBooleanValue() {
        check_dated();
        XmlAnySimpleType xmlAnySimpleType = this._value;
        return xmlAnySimpleType != null && ((SimpleValue) xmlAnySimpleType).getBooleanValue();
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase, org.apache.xmlbeans.SimpleValue
    public byte[] getByteArrayValue() {
        check_dated();
        XmlAnySimpleType xmlAnySimpleType = this._value;
        if (xmlAnySimpleType == null) {
            return null;
        }
        return ((SimpleValue) xmlAnySimpleType).getByteArrayValue();
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase, org.apache.xmlbeans.SimpleValue
    public byte getByteValue() {
        check_dated();
        XmlAnySimpleType xmlAnySimpleType = this._value;
        if (xmlAnySimpleType == null) {
            return (byte) 0;
        }
        return ((SimpleValue) xmlAnySimpleType).getByteValue();
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase, org.apache.xmlbeans.SimpleValue
    public Calendar getCalendarValue() {
        check_dated();
        XmlAnySimpleType xmlAnySimpleType = this._value;
        if (xmlAnySimpleType == null) {
            return null;
        }
        return ((SimpleValue) xmlAnySimpleType).getCalendarValue();
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase, org.apache.xmlbeans.SimpleValue
    public Date getDateValue() {
        check_dated();
        XmlAnySimpleType xmlAnySimpleType = this._value;
        if (xmlAnySimpleType == null) {
            return null;
        }
        return ((SimpleValue) xmlAnySimpleType).getDateValue();
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase, org.apache.xmlbeans.SimpleValue
    public double getDoubleValue() {
        check_dated();
        XmlAnySimpleType xmlAnySimpleType = this._value;
        if (xmlAnySimpleType == null) {
            return 0.0d;
        }
        return ((SimpleValue) xmlAnySimpleType).getDoubleValue();
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase, org.apache.xmlbeans.SimpleValue
    public StringEnumAbstractBase getEnumValue() {
        check_dated();
        XmlAnySimpleType xmlAnySimpleType = this._value;
        if (xmlAnySimpleType == null) {
            return null;
        }
        return ((SimpleValue) xmlAnySimpleType).getEnumValue();
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase, org.apache.xmlbeans.SimpleValue
    public float getFloatValue() {
        check_dated();
        XmlAnySimpleType xmlAnySimpleType = this._value;
        if (xmlAnySimpleType == null) {
            return 0.0f;
        }
        return ((SimpleValue) xmlAnySimpleType).getFloatValue();
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase, org.apache.xmlbeans.SimpleValue
    public GDate getGDateValue() {
        check_dated();
        XmlAnySimpleType xmlAnySimpleType = this._value;
        if (xmlAnySimpleType == null) {
            return null;
        }
        return ((SimpleValue) xmlAnySimpleType).getGDateValue();
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase, org.apache.xmlbeans.SimpleValue
    public GDuration getGDurationValue() {
        check_dated();
        XmlAnySimpleType xmlAnySimpleType = this._value;
        if (xmlAnySimpleType == null) {
            return null;
        }
        return ((SimpleValue) xmlAnySimpleType).getGDurationValue();
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase, org.apache.xmlbeans.SimpleValue
    public int getIntValue() {
        check_dated();
        XmlAnySimpleType xmlAnySimpleType = this._value;
        if (xmlAnySimpleType == null) {
            return 0;
        }
        return ((SimpleValue) xmlAnySimpleType).getIntValue();
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase, org.apache.xmlbeans.SimpleValue
    public List<?> getListValue() {
        check_dated();
        XmlAnySimpleType xmlAnySimpleType = this._value;
        if (xmlAnySimpleType == null) {
            return null;
        }
        return ((SimpleValue) xmlAnySimpleType).getListValue();
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase, org.apache.xmlbeans.SimpleValue
    public long getLongValue() {
        check_dated();
        XmlAnySimpleType xmlAnySimpleType = this._value;
        if (xmlAnySimpleType == null) {
            return 0L;
        }
        return ((SimpleValue) xmlAnySimpleType).getLongValue();
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase, org.apache.xmlbeans.SimpleValue
    public QName getQNameValue() {
        check_dated();
        XmlAnySimpleType xmlAnySimpleType = this._value;
        if (xmlAnySimpleType == null) {
            return null;
        }
        return ((SimpleValue) xmlAnySimpleType).getQNameValue();
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase, org.apache.xmlbeans.SimpleValue
    public short getShortValue() {
        check_dated();
        XmlAnySimpleType xmlAnySimpleType = this._value;
        if (xmlAnySimpleType == null) {
            return (short) 0;
        }
        return ((SimpleValue) xmlAnySimpleType).getShortValue();
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase, org.apache.xmlbeans.SimpleValue
    public String getStringValue() {
        check_dated();
        XmlAnySimpleType xmlAnySimpleType = this._value;
        if (xmlAnySimpleType == null) {
            return null;
        }
        return xmlAnySimpleType.getStringValue();
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase
    public int get_wscanon_rule() {
        return 1;
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase, org.apache.xmlbeans.SimpleValue
    public SchemaType instanceType() {
        check_dated();
        XmlAnySimpleType xmlAnySimpleType = this._value;
        if (xmlAnySimpleType == null) {
            return null;
        }
        return ((SimpleValue) xmlAnySimpleType).instanceType();
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase
    public boolean is_defaultable_ws(String str) {
        try {
            XmlAnySimpleType xmlAnySimpleType = this._value;
            set_text(str);
            this._value = xmlAnySimpleType;
            return false;
        } catch (XmlValueOutOfRangeException unused) {
            return true;
        }
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase, org.apache.xmlbeans.XmlObject
    public SchemaType schemaType() {
        return this._schemaType;
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase
    public void set_BigDecimal(BigDecimal bigDecimal) {
        set_primitive(47, bigDecimal);
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase
    public void set_BigInteger(BigInteger bigInteger) {
        set_primitive(47, bigInteger);
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase
    public void set_ByteArray(byte[] bArr) {
        set_primitive(50, bArr);
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase
    public void set_Calendar(Calendar calendar) {
        set_primitive(49, calendar);
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase
    public void set_Date(Date date) {
        set_primitive(48, date);
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase
    public void set_GDate(GDateSpecification gDateSpecification) {
        int builtinTypeCode = gDateSpecification.getBuiltinTypeCode();
        if (builtinTypeCode <= 0) {
            throw new XmlValueOutOfRangeException();
        }
        set_primitive(builtinTypeCode, gDateSpecification);
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase
    public void set_GDuration(GDurationSpecification gDurationSpecification) {
        set_primitive(13, gDurationSpecification);
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase
    public void set_QName(QName qName) {
        set_primitive(7, qName);
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase
    public void set_b64(byte[] bArr) {
        set_primitive(50, bArr);
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase
    public void set_boolean(boolean z) {
        set_primitive(3, Boolean.valueOf(z));
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase
    public void set_byte(byte b) {
        set_primitive(47, Byte.valueOf(b));
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase
    public void set_double(double d) {
        set_primitive(47, Double.valueOf(d));
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase
    public void set_enum(StringEnumAbstractBase stringEnumAbstractBase) {
        set_primitive(12, stringEnumAbstractBase);
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase
    public void set_float(float f) {
        set_primitive(47, Float.valueOf(f));
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase
    public void set_hex(byte[] bArr) {
        set_primitive(50, bArr);
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase
    public void set_int(int i) {
        set_primitive(47, Integer.valueOf(i));
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase
    public void set_list(List<?> list) {
        set_primitive(51, list);
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase
    public void set_long(long j) {
        set_primitive(47, Long.valueOf(j));
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase
    public void set_nil() {
        this._value = null;
        this._textvalue = null;
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase
    public void set_short(short s) {
        set_primitive(47, Short.valueOf(s));
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase
    public void set_text(String str) {
        boolean z;
        XmlAnySimpleType newValue;
        if (!this._schemaType.matchPatternFacet(str) && _validateOnSet()) {
            throw new XmlValueOutOfRangeException(XmlErrorCodes.DATATYPE_VALID$PATTERN_VALID, new Object[]{"string", str, QNameHelper.readable(this._schemaType)});
        }
        String str2 = this._textvalue;
        this._textvalue = str;
        SchemaType[] unionConstituentTypes = this._schemaType.getUnionConstituentTypes();
        boolean z2 = true;
        if (has_store()) {
            NamespaceContext.push(new NamespaceContext(get_store()));
            z = true;
        } else {
            z = false;
        }
        while (true) {
            if (!z2) {
                try {
                    if (_validateOnSet()) {
                        break;
                    }
                } finally {
                    if (z) {
                        NamespaceContext.pop();
                    }
                }
            }
            for (SchemaType schemaType : unionConstituentTypes) {
                try {
                    newValue = ((SchemaTypeImpl) schemaType).newValue(str, z2);
                } catch (XmlValueOutOfRangeException unused) {
                } catch (Exception e) {
                    throw new RuntimeException("Troublesome union exception caused by unexpected " + e, e);
                }
                if (check(newValue, this._schemaType)) {
                    this._value = newValue;
                    if (z) {
                        return;
                    } else {
                        return;
                    }
                }
            }
            if (!z2) {
                break;
            } else {
                z2 = false;
            }
        }
        if (z) {
            NamespaceContext.pop();
        }
        this._textvalue = str2;
        throw new XmlValueOutOfRangeException(XmlErrorCodes.DATATYPE_VALID$UNION, new Object[]{str, QNameHelper.readable(this._schemaType)});
    }

    public void set_xmldate(XmlObject xmlObject) {
        set_primitive(16, xmlObject);
    }

    public void set_xmldatetime(XmlObject xmlObject) {
        set_primitive(14, xmlObject);
    }

    public void set_xmldecimal(XmlObject xmlObject) {
        set_primitive(11, xmlObject);
    }

    public void set_xmldouble(XmlObject xmlObject) {
        set_primitive(10, xmlObject);
    }

    public void set_xmlduration(XmlObject xmlObject) {
        set_primitive(13, xmlObject);
    }

    public void set_xmlfloat(XmlObject xmlObject) {
        set_primitive(9, xmlObject);
    }

    public void set_xmlgday(XmlObject xmlObject) {
        set_primitive(20, xmlObject);
    }

    public void set_xmlgmonth(XmlObject xmlObject) {
        set_primitive(21, xmlObject);
    }

    public void set_xmlgmonthday(XmlObject xmlObject) {
        set_primitive(19, xmlObject);
    }

    public void set_xmlgyear(XmlObject xmlObject) {
        set_primitive(18, xmlObject);
    }

    public void set_xmlgyearmonth(XmlObject xmlObject) {
        set_primitive(17, xmlObject);
    }

    public void set_xmltime(XmlObject xmlObject) {
        set_primitive(15, xmlObject);
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase
    public void validate_simpleval(String str, ValidationContext validationContext) {
        try {
            check_dated();
            XmlTokenSource xmlTokenSource = this._value;
            if (xmlTokenSource != null) {
                ((XmlObjectBase) xmlTokenSource).validate_simpleval(str, validationContext);
                return;
            }
            validationContext.invalid("union", new Object[]{CloudStorageConstants.SINGLE_QUOTES + str + "' does not match any of the member types for " + QNameHelper.readable(schemaType())});
        } catch (Exception unused) {
            validationContext.invalid("union", new Object[]{CloudStorageConstants.SINGLE_QUOTES + str + "' does not match any of the member types for " + QNameHelper.readable(schemaType())});
        }
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase
    public int value_hash_code() {
        return this._value.hashCode();
    }

    @Override // org.apache.xmlbeans.impl.values.XmlObjectBase, org.apache.xmlbeans.SimpleValue
    public List<? extends XmlAnySimpleType> xgetListValue() {
        check_dated();
        XmlAnySimpleType xmlAnySimpleType = this._value;
        if (xmlAnySimpleType == null) {
            return null;
        }
        return ((SimpleValue) xmlAnySimpleType).xgetListValue();
    }
}
