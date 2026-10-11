package com.microsoft.schemas.office.visio.x2012.main.impl;

import androidx.exifinterface.media.ExifInterface;
import com.google.common.net.HttpHeaders;
import com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlInt;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.XmlUnsignedByte;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class HeaderFooterFontTypeImpl extends XmlComplexContentImpl implements HeaderFooterFontType {
    private static final QName[] PROPERTY_QNAME = {new QName("", "Height"), new QName("", HttpHeaders.WIDTH), new QName("", "Escapement"), new QName("", ExifInterface.TAG_ORIENTATION), new QName("", "Weight"), new QName("", "Italic"), new QName("", "Underline"), new QName("", "StrikeOut"), new QName("", "CharSet"), new QName("", "OutPrecision"), new QName("", "ClipPrecision"), new QName("", "Quality"), new QName("", "PitchAndFamily"), new QName("", "FaceName")};
    private static final long serialVersionUID = 1;

    public HeaderFooterFontTypeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public short getCharSet() {
        short shortValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[8]);
            shortValue = simpleValue == null ? (short) 0 : simpleValue.getShortValue();
        }
        return shortValue;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public short getClipPrecision() {
        short shortValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[10]);
            shortValue = simpleValue == null ? (short) 0 : simpleValue.getShortValue();
        }
        return shortValue;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public int getEscapement() {
        int intValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[2]);
            intValue = simpleValue == null ? 0 : simpleValue.getIntValue();
        }
        return intValue;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public String getFaceName() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[13]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public int getHeight() {
        int i;
        synchronized (monitor()) {
            check_orphaned();
            i = 0;
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            if (simpleValue != null) {
                i = simpleValue.getIntValue();
            }
        }
        return i;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public short getItalic() {
        short shortValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[5]);
            shortValue = simpleValue == null ? (short) 0 : simpleValue.getShortValue();
        }
        return shortValue;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public int getOrientation() {
        int intValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[3]);
            intValue = simpleValue == null ? 0 : simpleValue.getIntValue();
        }
        return intValue;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public short getOutPrecision() {
        short shortValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[9]);
            shortValue = simpleValue == null ? (short) 0 : simpleValue.getShortValue();
        }
        return shortValue;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public short getPitchAndFamily() {
        short shortValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[12]);
            shortValue = simpleValue == null ? (short) 0 : simpleValue.getShortValue();
        }
        return shortValue;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public short getQuality() {
        short shortValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[11]);
            shortValue = simpleValue == null ? (short) 0 : simpleValue.getShortValue();
        }
        return shortValue;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public short getStrikeOut() {
        short shortValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[7]);
            shortValue = simpleValue == null ? (short) 0 : simpleValue.getShortValue();
        }
        return shortValue;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public short getUnderline() {
        short shortValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[6]);
            shortValue = simpleValue == null ? (short) 0 : simpleValue.getShortValue();
        }
        return shortValue;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public int getWeight() {
        int intValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[4]);
            intValue = simpleValue == null ? 0 : simpleValue.getIntValue();
        }
        return intValue;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public int getWidth() {
        int intValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            intValue = simpleValue == null ? 0 : simpleValue.getIntValue();
        }
        return intValue;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public boolean isSetCharSet() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[8]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public boolean isSetClipPrecision() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[10]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public boolean isSetEscapement() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[2]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public boolean isSetFaceName() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[13]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public boolean isSetHeight() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public boolean isSetItalic() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[5]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public boolean isSetOrientation() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[3]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public boolean isSetOutPrecision() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[9]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public boolean isSetPitchAndFamily() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[12]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public boolean isSetQuality() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[11]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public boolean isSetStrikeOut() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[7]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public boolean isSetUnderline() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[6]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public boolean isSetWeight() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[4]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public boolean isSetWidth() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = true;
            if (get_store().find_attribute_user(PROPERTY_QNAME[1]) == null) {
                z = false;
            }
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public void setCharSet(short s) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[8]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[8]);
            }
            simpleValue.setShortValue(s);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public void setClipPrecision(short s) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[10]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[10]);
            }
            simpleValue.setShortValue(s);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public void setEscapement(int i) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[2]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[2]);
            }
            simpleValue.setIntValue(i);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public void setFaceName(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[13]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[13]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public void setHeight(int i) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[0]);
            }
            simpleValue.setIntValue(i);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public void setItalic(short s) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[5]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[5]);
            }
            simpleValue.setShortValue(s);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public void setOrientation(int i) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[3]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[3]);
            }
            simpleValue.setIntValue(i);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public void setOutPrecision(short s) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[9]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[9]);
            }
            simpleValue.setShortValue(s);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public void setPitchAndFamily(short s) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[12]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[12]);
            }
            simpleValue.setShortValue(s);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public void setQuality(short s) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[11]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[11]);
            }
            simpleValue.setShortValue(s);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public void setStrikeOut(short s) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[7]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[7]);
            }
            simpleValue.setShortValue(s);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public void setUnderline(short s) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[6]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[6]);
            }
            simpleValue.setShortValue(s);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public void setWeight(int i) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[4]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[4]);
            }
            simpleValue.setIntValue(i);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public void setWidth(int i) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[1]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[1]);
            }
            simpleValue.setIntValue(i);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public void unsetCharSet() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[8]);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public void unsetClipPrecision() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[10]);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public void unsetEscapement() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[2]);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public void unsetFaceName() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[13]);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public void unsetHeight() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public void unsetItalic() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[5]);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public void unsetOrientation() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[3]);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public void unsetOutPrecision() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[9]);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public void unsetPitchAndFamily() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[12]);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public void unsetQuality() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[11]);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public void unsetStrikeOut() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[7]);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public void unsetUnderline() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[6]);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public void unsetWeight() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[4]);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public void unsetWidth() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public XmlUnsignedByte xgetCharSet() {
        XmlUnsignedByte xmlUnsignedByte;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedByte = (XmlUnsignedByte) get_store().find_attribute_user(PROPERTY_QNAME[8]);
        }
        return xmlUnsignedByte;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public XmlUnsignedByte xgetClipPrecision() {
        XmlUnsignedByte xmlUnsignedByte;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedByte = (XmlUnsignedByte) get_store().find_attribute_user(PROPERTY_QNAME[10]);
        }
        return xmlUnsignedByte;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public XmlInt xgetEscapement() {
        XmlInt xmlInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlInt = (XmlInt) get_store().find_attribute_user(PROPERTY_QNAME[2]);
        }
        return xmlInt;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public XmlString xgetFaceName() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[13]);
        }
        return xmlString;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public XmlInt xgetHeight() {
        XmlInt xmlInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlInt = (XmlInt) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return xmlInt;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public XmlUnsignedByte xgetItalic() {
        XmlUnsignedByte xmlUnsignedByte;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedByte = (XmlUnsignedByte) get_store().find_attribute_user(PROPERTY_QNAME[5]);
        }
        return xmlUnsignedByte;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public XmlInt xgetOrientation() {
        XmlInt xmlInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlInt = (XmlInt) get_store().find_attribute_user(PROPERTY_QNAME[3]);
        }
        return xmlInt;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public XmlUnsignedByte xgetOutPrecision() {
        XmlUnsignedByte xmlUnsignedByte;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedByte = (XmlUnsignedByte) get_store().find_attribute_user(PROPERTY_QNAME[9]);
        }
        return xmlUnsignedByte;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public XmlUnsignedByte xgetPitchAndFamily() {
        XmlUnsignedByte xmlUnsignedByte;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedByte = (XmlUnsignedByte) get_store().find_attribute_user(PROPERTY_QNAME[12]);
        }
        return xmlUnsignedByte;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public XmlUnsignedByte xgetQuality() {
        XmlUnsignedByte xmlUnsignedByte;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedByte = (XmlUnsignedByte) get_store().find_attribute_user(PROPERTY_QNAME[11]);
        }
        return xmlUnsignedByte;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public XmlUnsignedByte xgetStrikeOut() {
        XmlUnsignedByte xmlUnsignedByte;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedByte = (XmlUnsignedByte) get_store().find_attribute_user(PROPERTY_QNAME[7]);
        }
        return xmlUnsignedByte;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public XmlUnsignedByte xgetUnderline() {
        XmlUnsignedByte xmlUnsignedByte;
        synchronized (monitor()) {
            check_orphaned();
            xmlUnsignedByte = (XmlUnsignedByte) get_store().find_attribute_user(PROPERTY_QNAME[6]);
        }
        return xmlUnsignedByte;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public XmlInt xgetWeight() {
        XmlInt xmlInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlInt = (XmlInt) get_store().find_attribute_user(PROPERTY_QNAME[4]);
        }
        return xmlInt;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public XmlInt xgetWidth() {
        XmlInt xmlInt;
        synchronized (monitor()) {
            check_orphaned();
            xmlInt = (XmlInt) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return xmlInt;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public void xsetCharSet(XmlUnsignedByte xmlUnsignedByte) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlUnsignedByte xmlUnsignedByte2 = (XmlUnsignedByte) typeStore.find_attribute_user(qNameArr[8]);
            if (xmlUnsignedByte2 == null) {
                xmlUnsignedByte2 = (XmlUnsignedByte) get_store().add_attribute_user(qNameArr[8]);
            }
            xmlUnsignedByte2.set(xmlUnsignedByte);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public void xsetClipPrecision(XmlUnsignedByte xmlUnsignedByte) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlUnsignedByte xmlUnsignedByte2 = (XmlUnsignedByte) typeStore.find_attribute_user(qNameArr[10]);
            if (xmlUnsignedByte2 == null) {
                xmlUnsignedByte2 = (XmlUnsignedByte) get_store().add_attribute_user(qNameArr[10]);
            }
            xmlUnsignedByte2.set(xmlUnsignedByte);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public void xsetEscapement(XmlInt xmlInt) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlInt xmlInt2 = (XmlInt) typeStore.find_attribute_user(qNameArr[2]);
            if (xmlInt2 == null) {
                xmlInt2 = (XmlInt) get_store().add_attribute_user(qNameArr[2]);
            }
            xmlInt2.set(xmlInt);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public void xsetFaceName(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[13]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[13]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public void xsetHeight(XmlInt xmlInt) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlInt xmlInt2 = (XmlInt) typeStore.find_attribute_user(qNameArr[0]);
            if (xmlInt2 == null) {
                xmlInt2 = (XmlInt) get_store().add_attribute_user(qNameArr[0]);
            }
            xmlInt2.set(xmlInt);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public void xsetItalic(XmlUnsignedByte xmlUnsignedByte) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlUnsignedByte xmlUnsignedByte2 = (XmlUnsignedByte) typeStore.find_attribute_user(qNameArr[5]);
            if (xmlUnsignedByte2 == null) {
                xmlUnsignedByte2 = (XmlUnsignedByte) get_store().add_attribute_user(qNameArr[5]);
            }
            xmlUnsignedByte2.set(xmlUnsignedByte);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public void xsetOrientation(XmlInt xmlInt) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlInt xmlInt2 = (XmlInt) typeStore.find_attribute_user(qNameArr[3]);
            if (xmlInt2 == null) {
                xmlInt2 = (XmlInt) get_store().add_attribute_user(qNameArr[3]);
            }
            xmlInt2.set(xmlInt);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public void xsetOutPrecision(XmlUnsignedByte xmlUnsignedByte) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlUnsignedByte xmlUnsignedByte2 = (XmlUnsignedByte) typeStore.find_attribute_user(qNameArr[9]);
            if (xmlUnsignedByte2 == null) {
                xmlUnsignedByte2 = (XmlUnsignedByte) get_store().add_attribute_user(qNameArr[9]);
            }
            xmlUnsignedByte2.set(xmlUnsignedByte);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public void xsetPitchAndFamily(XmlUnsignedByte xmlUnsignedByte) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlUnsignedByte xmlUnsignedByte2 = (XmlUnsignedByte) typeStore.find_attribute_user(qNameArr[12]);
            if (xmlUnsignedByte2 == null) {
                xmlUnsignedByte2 = (XmlUnsignedByte) get_store().add_attribute_user(qNameArr[12]);
            }
            xmlUnsignedByte2.set(xmlUnsignedByte);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public void xsetQuality(XmlUnsignedByte xmlUnsignedByte) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlUnsignedByte xmlUnsignedByte2 = (XmlUnsignedByte) typeStore.find_attribute_user(qNameArr[11]);
            if (xmlUnsignedByte2 == null) {
                xmlUnsignedByte2 = (XmlUnsignedByte) get_store().add_attribute_user(qNameArr[11]);
            }
            xmlUnsignedByte2.set(xmlUnsignedByte);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public void xsetStrikeOut(XmlUnsignedByte xmlUnsignedByte) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlUnsignedByte xmlUnsignedByte2 = (XmlUnsignedByte) typeStore.find_attribute_user(qNameArr[7]);
            if (xmlUnsignedByte2 == null) {
                xmlUnsignedByte2 = (XmlUnsignedByte) get_store().add_attribute_user(qNameArr[7]);
            }
            xmlUnsignedByte2.set(xmlUnsignedByte);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public void xsetUnderline(XmlUnsignedByte xmlUnsignedByte) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlUnsignedByte xmlUnsignedByte2 = (XmlUnsignedByte) typeStore.find_attribute_user(qNameArr[6]);
            if (xmlUnsignedByte2 == null) {
                xmlUnsignedByte2 = (XmlUnsignedByte) get_store().add_attribute_user(qNameArr[6]);
            }
            xmlUnsignedByte2.set(xmlUnsignedByte);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public void xsetWeight(XmlInt xmlInt) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlInt xmlInt2 = (XmlInt) typeStore.find_attribute_user(qNameArr[4]);
            if (xmlInt2 == null) {
                xmlInt2 = (XmlInt) get_store().add_attribute_user(qNameArr[4]);
            }
            xmlInt2.set(xmlInt);
        }
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.HeaderFooterFontType
    public void xsetWidth(XmlInt xmlInt) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlInt xmlInt2 = (XmlInt) typeStore.find_attribute_user(qNameArr[1]);
            if (xmlInt2 == null) {
                xmlInt2 = (XmlInt) get_store().add_attribute_user(qNameArr[1]);
            }
            xmlInt2.set(xmlInt);
        }
    }
}
