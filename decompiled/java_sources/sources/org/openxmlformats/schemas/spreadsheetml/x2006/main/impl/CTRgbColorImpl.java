package org.openxmlformats.schemas.spreadsheetml.x2006.main.impl;

import com.google.android.exoplayer2.util.ColorParser;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRgbColor;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STUnsignedIntHex;

/* loaded from: classes15.dex */
public class CTRgbColorImpl extends XmlComplexContentImpl implements CTRgbColor {
    private static final QName[] PROPERTY_QNAME = {new QName("", ColorParser.f28273a)};
    private static final long serialVersionUID = 1;

    public CTRgbColorImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRgbColor
    public byte[] getRgb() {
        byte[] byteArrayValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            byteArrayValue = simpleValue == null ? null : simpleValue.getByteArrayValue();
        }
        return byteArrayValue;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRgbColor
    public boolean isSetRgb() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRgbColor
    public void setRgb(byte[] bArr) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[0]);
            }
            simpleValue.setByteArrayValue(bArr);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRgbColor
    public void unsetRgb() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRgbColor
    public STUnsignedIntHex xgetRgb() {
        STUnsignedIntHex sTUnsignedIntHex;
        synchronized (monitor()) {
            check_orphaned();
            sTUnsignedIntHex = (STUnsignedIntHex) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTUnsignedIntHex;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRgbColor
    public void xsetRgb(STUnsignedIntHex sTUnsignedIntHex) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STUnsignedIntHex sTUnsignedIntHex2 = (STUnsignedIntHex) typeStore.find_attribute_user(qNameArr[0]);
            if (sTUnsignedIntHex2 == null) {
                sTUnsignedIntHex2 = (STUnsignedIntHex) get_store().add_attribute_user(qNameArr[0]);
            }
            sTUnsignedIntHex2.set(sTUnsignedIntHex);
        }
    }
}
