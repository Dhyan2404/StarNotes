package org.openxmlformats.schemas.officeDocument.x2006.customProperties.impl;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Calendar;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlBase64Binary;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlByte;
import org.apache.xmlbeans.XmlDateTime;
import org.apache.xmlbeans.XmlDecimal;
import org.apache.xmlbeans.XmlDouble;
import org.apache.xmlbeans.XmlFloat;
import org.apache.xmlbeans.XmlInt;
import org.apache.xmlbeans.XmlLong;
import org.apache.xmlbeans.XmlShort;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.XmlUnsignedByte;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.XmlUnsignedLong;
import org.apache.xmlbeans.XmlUnsignedShort;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty;
import org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTArray;
import org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTEmpty;
import org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTNull;
import org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVector;
import org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.CTVstream;
import org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.STCy;
import org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes.STError;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STGuid;
import xcrash.TombstoneParser;

/* loaded from: classes14.dex */
public class CTPropertyImpl extends XmlComplexContentImpl implements CTProperty {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "vector"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "array"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "blob"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "oblob"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", Constants.ELEMNAME_EMPTY_STRING), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "null"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "i1"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "i2"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "i4"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "i8"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "int"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "ui1"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "ui2"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "ui4"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "ui8"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "uint"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "r4"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "r8"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "decimal"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "lpstr"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "lpwstr"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "bstr"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "date"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "filetime"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "bool"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "cy"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "error"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "stream"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "ostream"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "storage"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "ostorage"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "vstream"), new QName("http://schemas.openxmlformats.org/officeDocument/2006/docPropsVTypes", "clsid"), new QName("", "fmtid"), new QName("", TombstoneParser.keyProcessId), new QName("", "name"), new QName("", "linkTarget")};
    private static final long serialVersionUID = 1;

    public CTPropertyImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public CTArray addNewArray() {
        CTArray cTArray;
        synchronized (monitor()) {
            check_orphaned();
            cTArray = (CTArray) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTArray;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public CTEmpty addNewEmpty() {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public CTNull addNewNull() {
        CTNull cTNull;
        synchronized (monitor()) {
            check_orphaned();
            cTNull = (CTNull) get_store().add_element_user(PROPERTY_QNAME[5]);
        }
        return cTNull;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public CTVector addNewVector() {
        CTVector cTVector;
        synchronized (monitor()) {
            check_orphaned();
            cTVector = (CTVector) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTVector;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public CTVstream addNewVstream() {
        CTVstream cTVstream;
        synchronized (monitor()) {
            check_orphaned();
            cTVstream = (CTVstream) get_store().add_element_user(PROPERTY_QNAME[31]);
        }
        return cTVstream;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public CTArray getArray() {
        CTArray cTArray;
        synchronized (monitor()) {
            check_orphaned();
            cTArray = (CTArray) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTArray == null) {
                cTArray = null;
            }
        }
        return cTArray;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public byte[] getBlob() {
        byte[] byteArrayValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            byteArrayValue = simpleValue == null ? null : simpleValue.getByteArrayValue();
        }
        return byteArrayValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public boolean getBool() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = false;
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[24], 0);
            if (simpleValue != null) {
                z = simpleValue.getBooleanValue();
            }
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public String getBstr() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[21], 0);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public String getClsid() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[32], 0);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public String getCy() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[25], 0);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public Calendar getDate() {
        Calendar calendarValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[22], 0);
            calendarValue = simpleValue == null ? null : simpleValue.getCalendarValue();
        }
        return calendarValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public BigDecimal getDecimal() {
        BigDecimal bigDecimalValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[18], 0);
            bigDecimalValue = simpleValue == null ? null : simpleValue.getBigDecimalValue();
        }
        return bigDecimalValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public CTEmpty getEmpty() {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().find_element_user(PROPERTY_QNAME[4], 0);
            if (cTEmpty == null) {
                cTEmpty = null;
            }
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public String getError() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[26], 0);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public Calendar getFiletime() {
        Calendar calendarValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[23], 0);
            calendarValue = simpleValue == null ? null : simpleValue.getCalendarValue();
        }
        return calendarValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public String getFmtid() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[33]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public byte getI1() {
        byte b;
        synchronized (monitor()) {
            check_orphaned();
            b = 0;
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[6], 0);
            if (simpleValue != null) {
                b = simpleValue.getByteValue();
            }
        }
        return b;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public short getI2() {
        short s;
        synchronized (monitor()) {
            check_orphaned();
            s = 0;
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[7], 0);
            if (simpleValue != null) {
                s = simpleValue.getShortValue();
            }
        }
        return s;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public int getI4() {
        int i;
        synchronized (monitor()) {
            check_orphaned();
            i = 0;
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[8], 0);
            if (simpleValue != null) {
                i = simpleValue.getIntValue();
            }
        }
        return i;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public long getI8() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[9], 0);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public int getInt() {
        int i;
        synchronized (monitor()) {
            check_orphaned();
            i = 0;
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[10], 0);
            if (simpleValue != null) {
                i = simpleValue.getIntValue();
            }
        }
        return i;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public String getLinkTarget() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[36]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public String getLpstr() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[19], 0);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public String getLpwstr() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[20], 0);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public String getName() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[35]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public CTNull getNull() {
        CTNull cTNull;
        synchronized (monitor()) {
            check_orphaned();
            cTNull = (CTNull) get_store().find_element_user(PROPERTY_QNAME[5], 0);
            if (cTNull == null) {
                cTNull = null;
            }
        }
        return cTNull;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public byte[] getOblob() {
        byte[] byteArrayValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            byteArrayValue = simpleValue == null ? null : simpleValue.getByteArrayValue();
        }
        return byteArrayValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public byte[] getOstorage() {
        byte[] byteArrayValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[30], 0);
            byteArrayValue = simpleValue == null ? null : simpleValue.getByteArrayValue();
        }
        return byteArrayValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public byte[] getOstream() {
        byte[] byteArrayValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[28], 0);
            byteArrayValue = simpleValue == null ? null : simpleValue.getByteArrayValue();
        }
        return byteArrayValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public int getPid() {
        int intValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[34]);
            intValue = simpleValue == null ? 0 : simpleValue.getIntValue();
        }
        return intValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public float getR4() {
        float floatValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[16], 0);
            floatValue = simpleValue == null ? 0.0f : simpleValue.getFloatValue();
        }
        return floatValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public double getR8() {
        double doubleValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[17], 0);
            doubleValue = simpleValue == null ? 0.0d : simpleValue.getDoubleValue();
        }
        return doubleValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public byte[] getStorage() {
        byte[] byteArrayValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[29], 0);
            byteArrayValue = simpleValue == null ? null : simpleValue.getByteArrayValue();
        }
        return byteArrayValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public byte[] getStream() {
        byte[] byteArrayValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[27], 0);
            byteArrayValue = simpleValue == null ? null : simpleValue.getByteArrayValue();
        }
        return byteArrayValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public short getUi1() {
        short s;
        synchronized (monitor()) {
            check_orphaned();
            s = 0;
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[11], 0);
            if (simpleValue != null) {
                s = simpleValue.getShortValue();
            }
        }
        return s;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public int getUi2() {
        int i;
        synchronized (monitor()) {
            check_orphaned();
            i = 0;
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[12], 0);
            if (simpleValue != null) {
                i = simpleValue.getIntValue();
            }
        }
        return i;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public long getUi4() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[13], 0);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public BigInteger getUi8() {
        BigInteger bigIntegerValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[14], 0);
            bigIntegerValue = simpleValue == null ? null : simpleValue.getBigIntegerValue();
        }
        return bigIntegerValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public long getUint() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_element_user(PROPERTY_QNAME[15], 0);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public CTVector getVector() {
        CTVector cTVector;
        synchronized (monitor()) {
            check_orphaned();
            cTVector = (CTVector) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTVector == null) {
                cTVector = null;
            }
        }
        return cTVector;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public CTVstream getVstream() {
        CTVstream cTVstream;
        synchronized (monitor()) {
            check_orphaned();
            cTVstream = (CTVstream) get_store().find_element_user(PROPERTY_QNAME[31], 0);
            if (cTVstream == null) {
                cTVstream = null;
            }
        }
        return cTVstream;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public boolean isSetArray() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = true;
            if (get_store().count_elements(PROPERTY_QNAME[1]) == 0) {
                z = false;
            }
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public boolean isSetBlob() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public boolean isSetBool() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[24]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public boolean isSetBstr() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[21]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public boolean isSetClsid() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[32]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public boolean isSetCy() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[25]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public boolean isSetDate() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[22]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public boolean isSetDecimal() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[18]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public boolean isSetEmpty() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[4]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public boolean isSetError() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[26]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public boolean isSetFiletime() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[23]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public boolean isSetI1() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[6]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public boolean isSetI2() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[7]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public boolean isSetI4() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[8]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public boolean isSetI8() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[9]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public boolean isSetInt() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[10]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public boolean isSetLinkTarget() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[36]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public boolean isSetLpstr() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[19]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public boolean isSetLpwstr() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[20]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public boolean isSetName() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[35]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public boolean isSetNull() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[5]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public boolean isSetOblob() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public boolean isSetOstorage() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[30]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public boolean isSetOstream() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[28]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public boolean isSetR4() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[16]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public boolean isSetR8() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[17]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public boolean isSetStorage() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[29]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public boolean isSetStream() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[27]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public boolean isSetUi1() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[11]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public boolean isSetUi2() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[12]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public boolean isSetUi4() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[13]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public boolean isSetUi8() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[14]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public boolean isSetUint() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[15]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public boolean isSetVector() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public boolean isSetVstream() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[31]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void setArray(CTArray cTArray) {
        generatedSetterHelperImpl(cTArray, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void setBlob(byte[] bArr) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_element_user(qNameArr[2], 0);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_element_user(qNameArr[2]);
            }
            simpleValue.setByteArrayValue(bArr);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void setBool(boolean z) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_element_user(qNameArr[24], 0);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_element_user(qNameArr[24]);
            }
            simpleValue.setBooleanValue(z);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void setBstr(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_element_user(qNameArr[21], 0);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_element_user(qNameArr[21]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void setClsid(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_element_user(qNameArr[32], 0);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_element_user(qNameArr[32]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void setCy(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_element_user(qNameArr[25], 0);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_element_user(qNameArr[25]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void setDate(Calendar calendar) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_element_user(qNameArr[22], 0);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_element_user(qNameArr[22]);
            }
            simpleValue.setCalendarValue(calendar);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void setDecimal(BigDecimal bigDecimal) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_element_user(qNameArr[18], 0);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_element_user(qNameArr[18]);
            }
            simpleValue.setBigDecimalValue(bigDecimal);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void setEmpty(CTEmpty cTEmpty) {
        generatedSetterHelperImpl(cTEmpty, PROPERTY_QNAME[4], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void setError(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_element_user(qNameArr[26], 0);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_element_user(qNameArr[26]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void setFiletime(Calendar calendar) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_element_user(qNameArr[23], 0);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_element_user(qNameArr[23]);
            }
            simpleValue.setCalendarValue(calendar);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void setFmtid(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[33]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[33]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void setI1(byte b) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_element_user(qNameArr[6], 0);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_element_user(qNameArr[6]);
            }
            simpleValue.setByteValue(b);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void setI2(short s) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_element_user(qNameArr[7], 0);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_element_user(qNameArr[7]);
            }
            simpleValue.setShortValue(s);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void setI4(int i) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_element_user(qNameArr[8], 0);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_element_user(qNameArr[8]);
            }
            simpleValue.setIntValue(i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void setI8(long j) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_element_user(qNameArr[9], 0);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_element_user(qNameArr[9]);
            }
            simpleValue.setLongValue(j);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void setInt(int i) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_element_user(qNameArr[10], 0);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_element_user(qNameArr[10]);
            }
            simpleValue.setIntValue(i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void setLinkTarget(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[36]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[36]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void setLpstr(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_element_user(qNameArr[19], 0);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_element_user(qNameArr[19]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void setLpwstr(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_element_user(qNameArr[20], 0);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_element_user(qNameArr[20]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void setName(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[35]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[35]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void setNull(CTNull cTNull) {
        generatedSetterHelperImpl(cTNull, PROPERTY_QNAME[5], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void setOblob(byte[] bArr) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_element_user(qNameArr[3], 0);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_element_user(qNameArr[3]);
            }
            simpleValue.setByteArrayValue(bArr);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void setOstorage(byte[] bArr) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_element_user(qNameArr[30], 0);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_element_user(qNameArr[30]);
            }
            simpleValue.setByteArrayValue(bArr);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void setOstream(byte[] bArr) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_element_user(qNameArr[28], 0);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_element_user(qNameArr[28]);
            }
            simpleValue.setByteArrayValue(bArr);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void setPid(int i) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[34]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[34]);
            }
            simpleValue.setIntValue(i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void setR4(float f) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_element_user(qNameArr[16], 0);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_element_user(qNameArr[16]);
            }
            simpleValue.setFloatValue(f);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void setR8(double d) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_element_user(qNameArr[17], 0);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_element_user(qNameArr[17]);
            }
            simpleValue.setDoubleValue(d);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void setStorage(byte[] bArr) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_element_user(qNameArr[29], 0);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_element_user(qNameArr[29]);
            }
            simpleValue.setByteArrayValue(bArr);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void setStream(byte[] bArr) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_element_user(qNameArr[27], 0);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_element_user(qNameArr[27]);
            }
            simpleValue.setByteArrayValue(bArr);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void setUi1(short s) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_element_user(qNameArr[11], 0);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_element_user(qNameArr[11]);
            }
            simpleValue.setShortValue(s);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void setUi2(int i) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_element_user(qNameArr[12], 0);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_element_user(qNameArr[12]);
            }
            simpleValue.setIntValue(i);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void setUi4(long j) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_element_user(qNameArr[13], 0);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_element_user(qNameArr[13]);
            }
            simpleValue.setLongValue(j);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void setUi8(BigInteger bigInteger) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_element_user(qNameArr[14], 0);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_element_user(qNameArr[14]);
            }
            simpleValue.setBigIntegerValue(bigInteger);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void setUint(long j) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_element_user(qNameArr[15], 0);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_element_user(qNameArr[15]);
            }
            simpleValue.setLongValue(j);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void setVector(CTVector cTVector) {
        generatedSetterHelperImpl(cTVector, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void setVstream(CTVstream cTVstream) {
        generatedSetterHelperImpl(cTVstream, PROPERTY_QNAME[31], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void unsetArray() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void unsetBlob() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void unsetBool() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[24], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void unsetBstr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[21], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void unsetClsid() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[32], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void unsetCy() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[25], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void unsetDate() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[22], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void unsetDecimal() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[18], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void unsetEmpty() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void unsetError() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[26], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void unsetFiletime() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[23], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void unsetI1() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[6], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void unsetI2() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[7], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void unsetI4() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[8], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void unsetI8() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[9], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void unsetInt() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[10], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void unsetLinkTarget() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[36]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void unsetLpstr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[19], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void unsetLpwstr() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[20], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void unsetName() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[35]);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void unsetNull() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[5], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void unsetOblob() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void unsetOstorage() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[30], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void unsetOstream() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[28], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void unsetR4() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[16], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void unsetR8() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[17], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void unsetStorage() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[29], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void unsetStream() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[27], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void unsetUi1() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[11], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void unsetUi2() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[12], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void unsetUi4() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[13], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void unsetUi8() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[14], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void unsetUint() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[15], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void unsetVector() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void unsetVstream() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[31], 0);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public XmlBase64Binary xgetBlob() {
        XmlBase64Binary xmlBase64Binary;
        synchronized (monitor()) {
            check_orphaned();
            xmlBase64Binary = (XmlBase64Binary) get_store().find_element_user(PROPERTY_QNAME[2], 0);
        }
        return xmlBase64Binary;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public XmlBoolean xgetBool() {
        XmlBoolean xmlBoolean;
        synchronized (monitor()) {
            check_orphaned();
            xmlBoolean = (XmlBoolean) get_store().find_element_user(PROPERTY_QNAME[24], 0);
        }
        return xmlBoolean;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public XmlString xgetBstr() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_element_user(PROPERTY_QNAME[21], 0);
        }
        return xmlString;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public STGuid xgetClsid() {
        STGuid sTGuid;
        synchronized (monitor()) {
            check_orphaned();
            sTGuid = (STGuid) get_store().find_element_user(PROPERTY_QNAME[32], 0);
        }
        return sTGuid;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public STCy xgetCy() {
        STCy sTCy;
        synchronized (monitor()) {
            check_orphaned();
            sTCy = (STCy) get_store().find_element_user(PROPERTY_QNAME[25], 0);
        }
        return sTCy;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public XmlDateTime xgetDate() {
        XmlDateTime xmlDateTime;
        synchronized (monitor()) {
            check_orphaned();
            xmlDateTime = (XmlDateTime) get_store().find_element_user(PROPERTY_QNAME[22], 0);
        }
        return xmlDateTime;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public XmlDecimal xgetDecimal() {
        XmlDecimal xmlDecimal;
        synchronized (monitor()) {
            check_orphaned();
            xmlDecimal = (XmlDecimal) get_store().find_element_user(PROPERTY_QNAME[18], 0);
        }
        return xmlDecimal;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public STError xgetError() {
        STError sTError;
        synchronized (monitor()) {
            check_orphaned();
            sTError = (STError) get_store().find_element_user(PROPERTY_QNAME[26], 0);
        }
        return sTError;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public XmlDateTime xgetFiletime() {
        XmlDateTime xmlDateTime;
        synchronized (monitor()) {
            check_orphaned();
            xmlDateTime = (XmlDateTime) get_store().find_element_user(PROPERTY_QNAME[23], 0);
        }
        return xmlDateTime;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public STGuid xgetFmtid() {
        STGuid sTGuid;
        synchronized (monitor()) {
            check_orphaned();
            sTGuid = (STGuid) get_store().find_attribute_user(PROPERTY_QNAME[33]);
        }
        return sTGuid;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public XmlByte xgetI1() {
        XmlByte xmlByte;
        synchronized (monitor()) {
            check_orphaned();
            xmlByte = (XmlByte) get_store().find_element_user(PROPERTY_QNAME[6], 0);
        }
        return xmlByte;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public XmlShort xgetI2() {
        XmlShort xmlShort;
        synchronized (monitor()) {
            check_orphaned();
            xmlShort = (XmlShort) get_store().find_element_user(PROPERTY_QNAME[7], 0);
        }
        return xmlShort;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public XmlInt xgetI4() {
        XmlInt xmlInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlInt = (XmlInt) get_store().find_element_user(PROPERTY_QNAME[8], 0);
        }
        return xmlInt;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public XmlLong xgetI8() {
        XmlLong xmlLong;
        synchronized (monitor()) {
            check_orphaned();
            xmlLong = (XmlLong) get_store().find_element_user(PROPERTY_QNAME[9], 0);
        }
        return xmlLong;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public XmlInt xgetInt() {
        XmlInt xmlInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlInt = (XmlInt) get_store().find_element_user(PROPERTY_QNAME[10], 0);
        }
        return xmlInt;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public XmlString xgetLinkTarget() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[36]);
        }
        return xmlString;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public XmlString xgetLpstr() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_element_user(PROPERTY_QNAME[19], 0);
        }
        return xmlString;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public XmlString xgetLpwstr() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_element_user(PROPERTY_QNAME[20], 0);
        }
        return xmlString;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public XmlString xgetName() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[35]);
        }
        return xmlString;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public XmlBase64Binary xgetOblob() {
        XmlBase64Binary xmlBase64Binary;
        synchronized (monitor()) {
            check_orphaned();
            xmlBase64Binary = (XmlBase64Binary) get_store().find_element_user(PROPERTY_QNAME[3], 0);
        }
        return xmlBase64Binary;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public XmlBase64Binary xgetOstorage() {
        XmlBase64Binary xmlBase64Binary;
        synchronized (monitor()) {
            check_orphaned();
            xmlBase64Binary = (XmlBase64Binary) get_store().find_element_user(PROPERTY_QNAME[30], 0);
        }
        return xmlBase64Binary;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public XmlBase64Binary xgetOstream() {
        XmlBase64Binary xmlBase64Binary;
        synchronized (monitor()) {
            check_orphaned();
            xmlBase64Binary = (XmlBase64Binary) get_store().find_element_user(PROPERTY_QNAME[28], 0);
        }
        return xmlBase64Binary;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public XmlInt xgetPid() {
        XmlInt xmlInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlInt = (XmlInt) get_store().find_attribute_user(PROPERTY_QNAME[34]);
        }
        return xmlInt;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public XmlFloat xgetR4() {
        XmlFloat xmlFloat;
        synchronized (monitor()) {
            check_orphaned();
            xmlFloat = (XmlFloat) get_store().find_element_user(PROPERTY_QNAME[16], 0);
        }
        return xmlFloat;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public XmlDouble xgetR8() {
        XmlDouble xmlDouble;
        synchronized (monitor()) {
            check_orphaned();
            xmlDouble = (XmlDouble) get_store().find_element_user(PROPERTY_QNAME[17], 0);
        }
        return xmlDouble;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public XmlBase64Binary xgetStorage() {
        XmlBase64Binary xmlBase64Binary;
        synchronized (monitor()) {
            check_orphaned();
            xmlBase64Binary = (XmlBase64Binary) get_store().find_element_user(PROPERTY_QNAME[29], 0);
        }
        return xmlBase64Binary;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public XmlBase64Binary xgetStream() {
        XmlBase64Binary xmlBase64Binary;
        synchronized (monitor()) {
            check_orphaned();
            xmlBase64Binary = (XmlBase64Binary) get_store().find_element_user(PROPERTY_QNAME[27], 0);
        }
        return xmlBase64Binary;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public XmlUnsignedByte xgetUi1() {
        XmlUnsignedByte xmlUnsignedByte;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedByte = (XmlUnsignedByte) get_store().find_element_user(PROPERTY_QNAME[11], 0);
        }
        return xmlUnsignedByte;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public XmlUnsignedShort xgetUi2() {
        XmlUnsignedShort xmlUnsignedShort;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedShort = (XmlUnsignedShort) get_store().find_element_user(PROPERTY_QNAME[12], 0);
        }
        return xmlUnsignedShort;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public XmlUnsignedInt xgetUi4() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_element_user(PROPERTY_QNAME[13], 0);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public XmlUnsignedLong xgetUi8() {
        XmlUnsignedLong xmlUnsignedLong;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedLong = (XmlUnsignedLong) get_store().find_element_user(PROPERTY_QNAME[14], 0);
        }
        return xmlUnsignedLong;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public XmlUnsignedInt xgetUint() {
        XmlUnsignedInt xmlUnsignedInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedInt = (XmlUnsignedInt) get_store().find_element_user(PROPERTY_QNAME[15], 0);
        }
        return xmlUnsignedInt;
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void xsetBlob(XmlBase64Binary xmlBase64Binary) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlBase64Binary xmlBase64Binary2 = (XmlBase64Binary) typeStore.find_element_user(qNameArr[2], 0);
            if (xmlBase64Binary2 == null) {
                xmlBase64Binary2 = (XmlBase64Binary) get_store().add_element_user(qNameArr[2]);
            }
            xmlBase64Binary2.set(xmlBase64Binary);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void xsetBool(XmlBoolean xmlBoolean) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlBoolean xmlBoolean2 = (XmlBoolean) typeStore.find_element_user(qNameArr[24], 0);
            if (xmlBoolean2 == null) {
                xmlBoolean2 = (XmlBoolean) get_store().add_element_user(qNameArr[24]);
            }
            xmlBoolean2.set(xmlBoolean);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void xsetBstr(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_element_user(qNameArr[21], 0);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_element_user(qNameArr[21]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void xsetClsid(STGuid sTGuid) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STGuid sTGuid2 = (STGuid) typeStore.find_element_user(qNameArr[32], 0);
            if (sTGuid2 == null) {
                sTGuid2 = (STGuid) get_store().add_element_user(qNameArr[32]);
            }
            sTGuid2.set(sTGuid);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void xsetCy(STCy sTCy) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STCy sTCy2 = (STCy) typeStore.find_element_user(qNameArr[25], 0);
            if (sTCy2 == null) {
                sTCy2 = (STCy) get_store().add_element_user(qNameArr[25]);
            }
            sTCy2.set(sTCy);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void xsetDate(XmlDateTime xmlDateTime) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlDateTime xmlDateTime2 = (XmlDateTime) typeStore.find_element_user(qNameArr[22], 0);
            if (xmlDateTime2 == null) {
                xmlDateTime2 = (XmlDateTime) get_store().add_element_user(qNameArr[22]);
            }
            xmlDateTime2.set(xmlDateTime);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void xsetDecimal(XmlDecimal xmlDecimal) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlDecimal xmlDecimal2 = (XmlDecimal) typeStore.find_element_user(qNameArr[18], 0);
            if (xmlDecimal2 == null) {
                xmlDecimal2 = (XmlDecimal) get_store().add_element_user(qNameArr[18]);
            }
            xmlDecimal2.set(xmlDecimal);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void xsetError(STError sTError) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STError sTError2 = (STError) typeStore.find_element_user(qNameArr[26], 0);
            if (sTError2 == null) {
                sTError2 = (STError) get_store().add_element_user(qNameArr[26]);
            }
            sTError2.set(sTError);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void xsetFiletime(XmlDateTime xmlDateTime) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlDateTime xmlDateTime2 = (XmlDateTime) typeStore.find_element_user(qNameArr[23], 0);
            if (xmlDateTime2 == null) {
                xmlDateTime2 = (XmlDateTime) get_store().add_element_user(qNameArr[23]);
            }
            xmlDateTime2.set(xmlDateTime);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void xsetFmtid(STGuid sTGuid) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STGuid sTGuid2 = (STGuid) typeStore.find_attribute_user(qNameArr[33]);
            if (sTGuid2 == null) {
                sTGuid2 = (STGuid) get_store().add_attribute_user(qNameArr[33]);
            }
            sTGuid2.set(sTGuid);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void xsetI1(XmlByte xmlByte) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlByte xmlByte2 = (XmlByte) typeStore.find_element_user(qNameArr[6], 0);
            if (xmlByte2 == null) {
                xmlByte2 = (XmlByte) get_store().add_element_user(qNameArr[6]);
            }
            xmlByte2.set(xmlByte);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void xsetI2(XmlShort xmlShort) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlShort xmlShort2 = (XmlShort) typeStore.find_element_user(qNameArr[7], 0);
            if (xmlShort2 == null) {
                xmlShort2 = (XmlShort) get_store().add_element_user(qNameArr[7]);
            }
            xmlShort2.set(xmlShort);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void xsetI4(XmlInt xmlInt) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlInt xmlInt2 = (XmlInt) typeStore.find_element_user(qNameArr[8], 0);
            if (xmlInt2 == null) {
                xmlInt2 = (XmlInt) get_store().add_element_user(qNameArr[8]);
            }
            xmlInt2.set(xmlInt);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void xsetI8(XmlLong xmlLong) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlLong xmlLong2 = (XmlLong) typeStore.find_element_user(qNameArr[9], 0);
            if (xmlLong2 == null) {
                xmlLong2 = (XmlLong) get_store().add_element_user(qNameArr[9]);
            }
            xmlLong2.set(xmlLong);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void xsetInt(XmlInt xmlInt) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlInt xmlInt2 = (XmlInt) typeStore.find_element_user(qNameArr[10], 0);
            if (xmlInt2 == null) {
                xmlInt2 = (XmlInt) get_store().add_element_user(qNameArr[10]);
            }
            xmlInt2.set(xmlInt);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void xsetLinkTarget(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[36]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[36]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void xsetLpstr(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_element_user(qNameArr[19], 0);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_element_user(qNameArr[19]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void xsetLpwstr(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_element_user(qNameArr[20], 0);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_element_user(qNameArr[20]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void xsetName(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[35]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[35]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void xsetOblob(XmlBase64Binary xmlBase64Binary) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlBase64Binary xmlBase64Binary2 = (XmlBase64Binary) typeStore.find_element_user(qNameArr[3], 0);
            if (xmlBase64Binary2 == null) {
                xmlBase64Binary2 = (XmlBase64Binary) get_store().add_element_user(qNameArr[3]);
            }
            xmlBase64Binary2.set(xmlBase64Binary);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void xsetOstorage(XmlBase64Binary xmlBase64Binary) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlBase64Binary xmlBase64Binary2 = (XmlBase64Binary) typeStore.find_element_user(qNameArr[30], 0);
            if (xmlBase64Binary2 == null) {
                xmlBase64Binary2 = (XmlBase64Binary) get_store().add_element_user(qNameArr[30]);
            }
            xmlBase64Binary2.set(xmlBase64Binary);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void xsetOstream(XmlBase64Binary xmlBase64Binary) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlBase64Binary xmlBase64Binary2 = (XmlBase64Binary) typeStore.find_element_user(qNameArr[28], 0);
            if (xmlBase64Binary2 == null) {
                xmlBase64Binary2 = (XmlBase64Binary) get_store().add_element_user(qNameArr[28]);
            }
            xmlBase64Binary2.set(xmlBase64Binary);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void xsetPid(XmlInt xmlInt) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlInt xmlInt2 = (XmlInt) typeStore.find_attribute_user(qNameArr[34]);
            if (xmlInt2 == null) {
                xmlInt2 = (XmlInt) get_store().add_attribute_user(qNameArr[34]);
            }
            xmlInt2.set(xmlInt);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void xsetR4(XmlFloat xmlFloat) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlFloat xmlFloat2 = (XmlFloat) typeStore.find_element_user(qNameArr[16], 0);
            if (xmlFloat2 == null) {
                xmlFloat2 = (XmlFloat) get_store().add_element_user(qNameArr[16]);
            }
            xmlFloat2.set(xmlFloat);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void xsetR8(XmlDouble xmlDouble) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlDouble xmlDouble2 = (XmlDouble) typeStore.find_element_user(qNameArr[17], 0);
            if (xmlDouble2 == null) {
                xmlDouble2 = (XmlDouble) get_store().add_element_user(qNameArr[17]);
            }
            xmlDouble2.set(xmlDouble);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void xsetStorage(XmlBase64Binary xmlBase64Binary) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlBase64Binary xmlBase64Binary2 = (XmlBase64Binary) typeStore.find_element_user(qNameArr[29], 0);
            if (xmlBase64Binary2 == null) {
                xmlBase64Binary2 = (XmlBase64Binary) get_store().add_element_user(qNameArr[29]);
            }
            xmlBase64Binary2.set(xmlBase64Binary);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void xsetStream(XmlBase64Binary xmlBase64Binary) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlBase64Binary xmlBase64Binary2 = (XmlBase64Binary) typeStore.find_element_user(qNameArr[27], 0);
            if (xmlBase64Binary2 == null) {
                xmlBase64Binary2 = (XmlBase64Binary) get_store().add_element_user(qNameArr[27]);
            }
            xmlBase64Binary2.set(xmlBase64Binary);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void xsetUi1(XmlUnsignedByte xmlUnsignedByte) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlUnsignedByte xmlUnsignedByte2 = (XmlUnsignedByte) typeStore.find_element_user(qNameArr[11], 0);
            if (xmlUnsignedByte2 == null) {
                xmlUnsignedByte2 = (XmlUnsignedByte) get_store().add_element_user(qNameArr[11]);
            }
            xmlUnsignedByte2.set(xmlUnsignedByte);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void xsetUi2(XmlUnsignedShort xmlUnsignedShort) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlUnsignedShort xmlUnsignedShort2 = (XmlUnsignedShort) typeStore.find_element_user(qNameArr[12], 0);
            if (xmlUnsignedShort2 == null) {
                xmlUnsignedShort2 = (XmlUnsignedShort) get_store().add_element_user(qNameArr[12]);
            }
            xmlUnsignedShort2.set(xmlUnsignedShort);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void xsetUi4(XmlUnsignedInt xmlUnsignedInt) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlUnsignedInt xmlUnsignedInt2 = (XmlUnsignedInt) typeStore.find_element_user(qNameArr[13], 0);
            if (xmlUnsignedInt2 == null) {
                xmlUnsignedInt2 = (XmlUnsignedInt) get_store().add_element_user(qNameArr[13]);
            }
            xmlUnsignedInt2.set(xmlUnsignedInt);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void xsetUi8(XmlUnsignedLong xmlUnsignedLong) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlUnsignedLong xmlUnsignedLong2 = (XmlUnsignedLong) typeStore.find_element_user(qNameArr[14], 0);
            if (xmlUnsignedLong2 == null) {
                xmlUnsignedLong2 = (XmlUnsignedLong) get_store().add_element_user(qNameArr[14]);
            }
            xmlUnsignedLong2.set(xmlUnsignedLong);
        }
    }

    @Override // org.openxmlformats.schemas.officeDocument.x2006.customProperties.CTProperty
    public void xsetUint(XmlUnsignedInt xmlUnsignedInt) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlUnsignedInt xmlUnsignedInt2 = (XmlUnsignedInt) typeStore.find_element_user(qNameArr[15], 0);
            if (xmlUnsignedInt2 == null) {
                xmlUnsignedInt2 = (XmlUnsignedInt) get_store().add_element_user(qNameArr[15]);
            }
            xmlUnsignedInt2.set(xmlUnsignedInt);
        }
    }
}
