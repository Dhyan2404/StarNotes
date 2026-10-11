package com.microsoft.schemas.office.office.impl;

import com.microsoft.schemas.office.office.CTStrokeChild;
import com.microsoft.schemas.vml.STExt;
import com.microsoft.schemas.vml.STFillType;
import com.microsoft.schemas.vml.STImageAspect;
import com.microsoft.schemas.vml.STStrokeArrowLength;
import com.microsoft.schemas.vml.STStrokeArrowType;
import com.microsoft.schemas.vml.STStrokeArrowWidth;
import com.microsoft.schemas.vml.STStrokeEndCap;
import com.microsoft.schemas.vml.STStrokeJoinStyle;
import com.microsoft.schemas.vml.STStrokeLineStyle;
import com.onegravity.colorpicker.OpacityBar;
import com.onyx.android.sdk.data.common.cloud.Constant;
import java.math.BigDecimal;
import javax.xml.namespace.QName;
import kotlinx.coroutines.DebugKt;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlDecimal;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STColorType;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse;

/* loaded from: classes7.dex */
public class CTStrokeChildImpl extends XmlComplexContentImpl implements CTStrokeChild {
    private static final QName[] PROPERTY_QNAME = {new QName("urn:schemas-microsoft-com:vml", "ext"), new QName("", DebugKt.DEBUG_PROPERTY_VALUE_ON), new QName("", "weight"), new QName("", "color"), new QName("", "color2"), new QName("", OpacityBar.f39917J), new QName("", "linestyle"), new QName("", "miterlimit"), new QName("", "joinstyle"), new QName("", "endcap"), new QName("", "dashstyle"), new QName("", "insetpen"), new QName("", "filltype"), new QName("", Constant.SRC_TAG), new QName("", "imageaspect"), new QName("", "imagesize"), new QName("", "imagealignshape"), new QName("", "startarrow"), new QName("", "startarrowwidth"), new QName("", "startarrowlength"), new QName("", "endarrow"), new QName("", "endarrowwidth"), new QName("", "endarrowlength"), new QName("urn:schemas-microsoft-com:office:office", "href"), new QName("urn:schemas-microsoft-com:office:office", "althref"), new QName("urn:schemas-microsoft-com:office:office", "title"), new QName("urn:schemas-microsoft-com:office:office", "forcedash")};
    private static final long serialVersionUID = 1;

    public CTStrokeChildImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public String getAlthref() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[24]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public String getColor() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[3]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public String getColor2() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[4]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public String getDashstyle() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[10]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public STStrokeArrowType.Enum getEndarrow() {
        STStrokeArrowType.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[20]);
            r3 = simpleValue == null ? null : (STStrokeArrowType.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public STStrokeArrowLength.Enum getEndarrowlength() {
        STStrokeArrowLength.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[22]);
            r3 = simpleValue == null ? null : (STStrokeArrowLength.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public STStrokeArrowWidth.Enum getEndarrowwidth() {
        STStrokeArrowWidth.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[21]);
            r3 = simpleValue == null ? null : (STStrokeArrowWidth.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public STStrokeEndCap.Enum getEndcap() {
        STStrokeEndCap.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[9]);
            r3 = simpleValue == null ? null : (STStrokeEndCap.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public STExt.Enum getExt() {
        STExt.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[0]);
            r3 = simpleValue == null ? null : (STExt.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public STFillType.Enum getFilltype() {
        STFillType.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[12]);
            r3 = simpleValue == null ? null : (STFillType.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public STTrueFalse.Enum getForcedash() {
        STTrueFalse.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[26]);
            r3 = simpleValue == null ? null : (STTrueFalse.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public String getHref() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[23]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public STTrueFalse.Enum getImagealignshape() {
        STTrueFalse.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[16]);
            r3 = simpleValue == null ? null : (STTrueFalse.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public STImageAspect.Enum getImageaspect() {
        STImageAspect.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[14]);
            r3 = simpleValue == null ? null : (STImageAspect.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public String getImagesize() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[15]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public STTrueFalse.Enum getInsetpen() {
        STTrueFalse.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[11]);
            r3 = simpleValue == null ? null : (STTrueFalse.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public STStrokeJoinStyle.Enum getJoinstyle() {
        STStrokeJoinStyle.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[8]);
            r3 = simpleValue == null ? null : (STStrokeJoinStyle.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public STStrokeLineStyle.Enum getLinestyle() {
        STStrokeLineStyle.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[6]);
            r3 = simpleValue == null ? null : (STStrokeLineStyle.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public BigDecimal getMiterlimit() {
        BigDecimal bigDecimalValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[7]);
            bigDecimalValue = simpleValue == null ? null : simpleValue.getBigDecimalValue();
        }
        return bigDecimalValue;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public STTrueFalse.Enum getOn() {
        STTrueFalse.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            r3 = simpleValue == null ? null : (STTrueFalse.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public String getOpacity() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[5]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public String getSrc() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[13]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public STStrokeArrowType.Enum getStartarrow() {
        STStrokeArrowType.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[17]);
            r3 = simpleValue == null ? null : (STStrokeArrowType.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public STStrokeArrowLength.Enum getStartarrowlength() {
        STStrokeArrowLength.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[19]);
            r3 = simpleValue == null ? null : (STStrokeArrowLength.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public STStrokeArrowWidth.Enum getStartarrowwidth() {
        STStrokeArrowWidth.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[18]);
            r3 = simpleValue == null ? null : (STStrokeArrowWidth.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public String getTitle() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[25]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public String getWeight() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[2]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public boolean isSetAlthref() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[24]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public boolean isSetColor() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[3]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public boolean isSetColor2() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[4]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public boolean isSetDashstyle() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[10]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public boolean isSetEndarrow() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[20]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public boolean isSetEndarrowlength() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[22]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public boolean isSetEndarrowwidth() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[21]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public boolean isSetEndcap() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[9]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public boolean isSetExt() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[0]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public boolean isSetFilltype() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[12]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public boolean isSetForcedash() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[26]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public boolean isSetHref() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[23]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public boolean isSetImagealignshape() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[16]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public boolean isSetImageaspect() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[14]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public boolean isSetImagesize() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[15]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public boolean isSetInsetpen() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[11]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public boolean isSetJoinstyle() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[8]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public boolean isSetLinestyle() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[6]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public boolean isSetMiterlimit() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[7]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public boolean isSetOn() {
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

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public boolean isSetOpacity() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[5]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public boolean isSetSrc() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[13]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public boolean isSetStartarrow() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[17]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public boolean isSetStartarrowlength() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[19]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public boolean isSetStartarrowwidth() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[18]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public boolean isSetTitle() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[25]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public boolean isSetWeight() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[2]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void setAlthref(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[24]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[24]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void setColor(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[3]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[3]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void setColor2(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[4]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[4]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void setDashstyle(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[10]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[10]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void setEndarrow(STStrokeArrowType.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[20]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[20]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void setEndarrowlength(STStrokeArrowLength.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[22]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[22]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void setEndarrowwidth(STStrokeArrowWidth.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[21]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[21]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void setEndcap(STStrokeEndCap.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[9]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[9]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void setExt(STExt.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[0]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[0]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void setFilltype(STFillType.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[12]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[12]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void setForcedash(STTrueFalse.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[26]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[26]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void setHref(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[23]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[23]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void setImagealignshape(STTrueFalse.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[16]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[16]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void setImageaspect(STImageAspect.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[14]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[14]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void setImagesize(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[15]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[15]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void setInsetpen(STTrueFalse.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[11]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[11]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void setJoinstyle(STStrokeJoinStyle.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[8]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[8]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void setLinestyle(STStrokeLineStyle.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[6]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[6]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void setMiterlimit(BigDecimal bigDecimal) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[7]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[7]);
            }
            simpleValue.setBigDecimalValue(bigDecimal);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void setOn(STTrueFalse.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[1]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[1]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void setOpacity(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[5]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[5]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void setSrc(String str) {
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

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void setStartarrow(STStrokeArrowType.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[17]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[17]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void setStartarrowlength(STStrokeArrowLength.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[19]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[19]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void setStartarrowwidth(STStrokeArrowWidth.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[18]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[18]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void setTitle(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[25]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[25]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void setWeight(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[2]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[2]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void unsetAlthref() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[24]);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void unsetColor() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[3]);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void unsetColor2() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[4]);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void unsetDashstyle() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[10]);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void unsetEndarrow() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[20]);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void unsetEndarrowlength() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[22]);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void unsetEndarrowwidth() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[21]);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void unsetEndcap() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[9]);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void unsetExt() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[0]);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void unsetFilltype() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[12]);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void unsetForcedash() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[26]);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void unsetHref() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[23]);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void unsetImagealignshape() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[16]);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void unsetImageaspect() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[14]);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void unsetImagesize() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[15]);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void unsetInsetpen() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[11]);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void unsetJoinstyle() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[8]);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void unsetLinestyle() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[6]);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void unsetMiterlimit() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[7]);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void unsetOn() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void unsetOpacity() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[5]);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void unsetSrc() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[13]);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void unsetStartarrow() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[17]);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void unsetStartarrowlength() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[19]);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void unsetStartarrowwidth() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[18]);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void unsetTitle() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[25]);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void unsetWeight() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[2]);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public XmlString xgetAlthref() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[24]);
        }
        return xmlString;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public STColorType xgetColor() {
        STColorType sTColorType;
        synchronized (monitor()) {
            check_orphaned();
            sTColorType = (STColorType) get_store().find_attribute_user(PROPERTY_QNAME[3]);
        }
        return sTColorType;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public STColorType xgetColor2() {
        STColorType sTColorType;
        synchronized (monitor()) {
            check_orphaned();
            sTColorType = (STColorType) get_store().find_attribute_user(PROPERTY_QNAME[4]);
        }
        return sTColorType;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public XmlString xgetDashstyle() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[10]);
        }
        return xmlString;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public STStrokeArrowType xgetEndarrow() {
        STStrokeArrowType sTStrokeArrowType;
        synchronized (monitor()) {
            check_orphaned();
            sTStrokeArrowType = (STStrokeArrowType) get_store().find_attribute_user(PROPERTY_QNAME[20]);
        }
        return sTStrokeArrowType;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public STStrokeArrowLength xgetEndarrowlength() {
        STStrokeArrowLength sTStrokeArrowLength;
        synchronized (monitor()) {
            check_orphaned();
            sTStrokeArrowLength = (STStrokeArrowLength) get_store().find_attribute_user(PROPERTY_QNAME[22]);
        }
        return sTStrokeArrowLength;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public STStrokeArrowWidth xgetEndarrowwidth() {
        STStrokeArrowWidth sTStrokeArrowWidth;
        synchronized (monitor()) {
            check_orphaned();
            sTStrokeArrowWidth = (STStrokeArrowWidth) get_store().find_attribute_user(PROPERTY_QNAME[21]);
        }
        return sTStrokeArrowWidth;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public STStrokeEndCap xgetEndcap() {
        STStrokeEndCap sTStrokeEndCap;
        synchronized (monitor()) {
            check_orphaned();
            sTStrokeEndCap = (STStrokeEndCap) get_store().find_attribute_user(PROPERTY_QNAME[9]);
        }
        return sTStrokeEndCap;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public STExt xgetExt() {
        STExt sTExt;
        synchronized (monitor()) {
            check_orphaned();
            sTExt = (STExt) get_store().find_attribute_user(PROPERTY_QNAME[0]);
        }
        return sTExt;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public STFillType xgetFilltype() {
        STFillType sTFillType;
        synchronized (monitor()) {
            check_orphaned();
            sTFillType = (STFillType) get_store().find_attribute_user(PROPERTY_QNAME[12]);
        }
        return sTFillType;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public STTrueFalse xgetForcedash() {
        STTrueFalse sTTrueFalse;
        synchronized (monitor()) {
            check_orphaned();
            sTTrueFalse = (STTrueFalse) get_store().find_attribute_user(PROPERTY_QNAME[26]);
        }
        return sTTrueFalse;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public XmlString xgetHref() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[23]);
        }
        return xmlString;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public STTrueFalse xgetImagealignshape() {
        STTrueFalse sTTrueFalse;
        synchronized (monitor()) {
            check_orphaned();
            sTTrueFalse = (STTrueFalse) get_store().find_attribute_user(PROPERTY_QNAME[16]);
        }
        return sTTrueFalse;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public STImageAspect xgetImageaspect() {
        STImageAspect sTImageAspect;
        synchronized (monitor()) {
            check_orphaned();
            sTImageAspect = (STImageAspect) get_store().find_attribute_user(PROPERTY_QNAME[14]);
        }
        return sTImageAspect;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public XmlString xgetImagesize() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[15]);
        }
        return xmlString;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public STTrueFalse xgetInsetpen() {
        STTrueFalse sTTrueFalse;
        synchronized (monitor()) {
            check_orphaned();
            sTTrueFalse = (STTrueFalse) get_store().find_attribute_user(PROPERTY_QNAME[11]);
        }
        return sTTrueFalse;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public STStrokeJoinStyle xgetJoinstyle() {
        STStrokeJoinStyle sTStrokeJoinStyle;
        synchronized (monitor()) {
            check_orphaned();
            sTStrokeJoinStyle = (STStrokeJoinStyle) get_store().find_attribute_user(PROPERTY_QNAME[8]);
        }
        return sTStrokeJoinStyle;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public STStrokeLineStyle xgetLinestyle() {
        STStrokeLineStyle sTStrokeLineStyle;
        synchronized (monitor()) {
            check_orphaned();
            sTStrokeLineStyle = (STStrokeLineStyle) get_store().find_attribute_user(PROPERTY_QNAME[6]);
        }
        return sTStrokeLineStyle;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public XmlDecimal xgetMiterlimit() {
        XmlDecimal xmlDecimal;
        synchronized (monitor()) {
            check_orphaned();
            xmlDecimal = (XmlDecimal) get_store().find_attribute_user(PROPERTY_QNAME[7]);
        }
        return xmlDecimal;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public STTrueFalse xgetOn() {
        STTrueFalse sTTrueFalse;
        synchronized (monitor()) {
            check_orphaned();
            sTTrueFalse = (STTrueFalse) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return sTTrueFalse;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public XmlString xgetOpacity() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[5]);
        }
        return xmlString;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public XmlString xgetSrc() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[13]);
        }
        return xmlString;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public STStrokeArrowType xgetStartarrow() {
        STStrokeArrowType sTStrokeArrowType;
        synchronized (monitor()) {
            check_orphaned();
            sTStrokeArrowType = (STStrokeArrowType) get_store().find_attribute_user(PROPERTY_QNAME[17]);
        }
        return sTStrokeArrowType;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public STStrokeArrowLength xgetStartarrowlength() {
        STStrokeArrowLength sTStrokeArrowLength;
        synchronized (monitor()) {
            check_orphaned();
            sTStrokeArrowLength = (STStrokeArrowLength) get_store().find_attribute_user(PROPERTY_QNAME[19]);
        }
        return sTStrokeArrowLength;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public STStrokeArrowWidth xgetStartarrowwidth() {
        STStrokeArrowWidth sTStrokeArrowWidth;
        synchronized (monitor()) {
            check_orphaned();
            sTStrokeArrowWidth = (STStrokeArrowWidth) get_store().find_attribute_user(PROPERTY_QNAME[18]);
        }
        return sTStrokeArrowWidth;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public XmlString xgetTitle() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[25]);
        }
        return xmlString;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public XmlString xgetWeight() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[2]);
        }
        return xmlString;
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void xsetAlthref(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[24]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[24]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void xsetColor(STColorType sTColorType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STColorType sTColorType2 = (STColorType) typeStore.find_attribute_user(qNameArr[3]);
            if (sTColorType2 == null) {
                sTColorType2 = (STColorType) get_store().add_attribute_user(qNameArr[3]);
            }
            sTColorType2.set(sTColorType);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void xsetColor2(STColorType sTColorType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STColorType sTColorType2 = (STColorType) typeStore.find_attribute_user(qNameArr[4]);
            if (sTColorType2 == null) {
                sTColorType2 = (STColorType) get_store().add_attribute_user(qNameArr[4]);
            }
            sTColorType2.set(sTColorType);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void xsetDashstyle(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[10]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[10]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void xsetEndarrow(STStrokeArrowType sTStrokeArrowType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STStrokeArrowType sTStrokeArrowType2 = (STStrokeArrowType) typeStore.find_attribute_user(qNameArr[20]);
            if (sTStrokeArrowType2 == null) {
                sTStrokeArrowType2 = (STStrokeArrowType) get_store().add_attribute_user(qNameArr[20]);
            }
            sTStrokeArrowType2.set(sTStrokeArrowType);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void xsetEndarrowlength(STStrokeArrowLength sTStrokeArrowLength) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STStrokeArrowLength sTStrokeArrowLength2 = (STStrokeArrowLength) typeStore.find_attribute_user(qNameArr[22]);
            if (sTStrokeArrowLength2 == null) {
                sTStrokeArrowLength2 = (STStrokeArrowLength) get_store().add_attribute_user(qNameArr[22]);
            }
            sTStrokeArrowLength2.set(sTStrokeArrowLength);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void xsetEndarrowwidth(STStrokeArrowWidth sTStrokeArrowWidth) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STStrokeArrowWidth sTStrokeArrowWidth2 = (STStrokeArrowWidth) typeStore.find_attribute_user(qNameArr[21]);
            if (sTStrokeArrowWidth2 == null) {
                sTStrokeArrowWidth2 = (STStrokeArrowWidth) get_store().add_attribute_user(qNameArr[21]);
            }
            sTStrokeArrowWidth2.set(sTStrokeArrowWidth);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void xsetEndcap(STStrokeEndCap sTStrokeEndCap) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STStrokeEndCap sTStrokeEndCap2 = (STStrokeEndCap) typeStore.find_attribute_user(qNameArr[9]);
            if (sTStrokeEndCap2 == null) {
                sTStrokeEndCap2 = (STStrokeEndCap) get_store().add_attribute_user(qNameArr[9]);
            }
            sTStrokeEndCap2.set(sTStrokeEndCap);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void xsetExt(STExt sTExt) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STExt sTExt2 = (STExt) typeStore.find_attribute_user(qNameArr[0]);
            if (sTExt2 == null) {
                sTExt2 = (STExt) get_store().add_attribute_user(qNameArr[0]);
            }
            sTExt2.set(sTExt);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void xsetFilltype(STFillType sTFillType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STFillType sTFillType2 = (STFillType) typeStore.find_attribute_user(qNameArr[12]);
            if (sTFillType2 == null) {
                sTFillType2 = (STFillType) get_store().add_attribute_user(qNameArr[12]);
            }
            sTFillType2.set(sTFillType);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void xsetForcedash(STTrueFalse sTTrueFalse) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STTrueFalse sTTrueFalse2 = (STTrueFalse) typeStore.find_attribute_user(qNameArr[26]);
            if (sTTrueFalse2 == null) {
                sTTrueFalse2 = (STTrueFalse) get_store().add_attribute_user(qNameArr[26]);
            }
            sTTrueFalse2.set(sTTrueFalse);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void xsetHref(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[23]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[23]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void xsetImagealignshape(STTrueFalse sTTrueFalse) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STTrueFalse sTTrueFalse2 = (STTrueFalse) typeStore.find_attribute_user(qNameArr[16]);
            if (sTTrueFalse2 == null) {
                sTTrueFalse2 = (STTrueFalse) get_store().add_attribute_user(qNameArr[16]);
            }
            sTTrueFalse2.set(sTTrueFalse);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void xsetImageaspect(STImageAspect sTImageAspect) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STImageAspect sTImageAspect2 = (STImageAspect) typeStore.find_attribute_user(qNameArr[14]);
            if (sTImageAspect2 == null) {
                sTImageAspect2 = (STImageAspect) get_store().add_attribute_user(qNameArr[14]);
            }
            sTImageAspect2.set(sTImageAspect);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void xsetImagesize(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[15]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[15]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void xsetInsetpen(STTrueFalse sTTrueFalse) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STTrueFalse sTTrueFalse2 = (STTrueFalse) typeStore.find_attribute_user(qNameArr[11]);
            if (sTTrueFalse2 == null) {
                sTTrueFalse2 = (STTrueFalse) get_store().add_attribute_user(qNameArr[11]);
            }
            sTTrueFalse2.set(sTTrueFalse);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void xsetJoinstyle(STStrokeJoinStyle sTStrokeJoinStyle) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STStrokeJoinStyle sTStrokeJoinStyle2 = (STStrokeJoinStyle) typeStore.find_attribute_user(qNameArr[8]);
            if (sTStrokeJoinStyle2 == null) {
                sTStrokeJoinStyle2 = (STStrokeJoinStyle) get_store().add_attribute_user(qNameArr[8]);
            }
            sTStrokeJoinStyle2.set(sTStrokeJoinStyle);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void xsetLinestyle(STStrokeLineStyle sTStrokeLineStyle) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STStrokeLineStyle sTStrokeLineStyle2 = (STStrokeLineStyle) typeStore.find_attribute_user(qNameArr[6]);
            if (sTStrokeLineStyle2 == null) {
                sTStrokeLineStyle2 = (STStrokeLineStyle) get_store().add_attribute_user(qNameArr[6]);
            }
            sTStrokeLineStyle2.set(sTStrokeLineStyle);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void xsetMiterlimit(XmlDecimal xmlDecimal) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlDecimal xmlDecimal2 = (XmlDecimal) typeStore.find_attribute_user(qNameArr[7]);
            if (xmlDecimal2 == null) {
                xmlDecimal2 = (XmlDecimal) get_store().add_attribute_user(qNameArr[7]);
            }
            xmlDecimal2.set(xmlDecimal);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void xsetOn(STTrueFalse sTTrueFalse) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STTrueFalse sTTrueFalse2 = (STTrueFalse) typeStore.find_attribute_user(qNameArr[1]);
            if (sTTrueFalse2 == null) {
                sTTrueFalse2 = (STTrueFalse) get_store().add_attribute_user(qNameArr[1]);
            }
            sTTrueFalse2.set(sTTrueFalse);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void xsetOpacity(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[5]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[5]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void xsetSrc(XmlString xmlString) {
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

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void xsetStartarrow(STStrokeArrowType sTStrokeArrowType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STStrokeArrowType sTStrokeArrowType2 = (STStrokeArrowType) typeStore.find_attribute_user(qNameArr[17]);
            if (sTStrokeArrowType2 == null) {
                sTStrokeArrowType2 = (STStrokeArrowType) get_store().add_attribute_user(qNameArr[17]);
            }
            sTStrokeArrowType2.set(sTStrokeArrowType);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void xsetStartarrowlength(STStrokeArrowLength sTStrokeArrowLength) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STStrokeArrowLength sTStrokeArrowLength2 = (STStrokeArrowLength) typeStore.find_attribute_user(qNameArr[19]);
            if (sTStrokeArrowLength2 == null) {
                sTStrokeArrowLength2 = (STStrokeArrowLength) get_store().add_attribute_user(qNameArr[19]);
            }
            sTStrokeArrowLength2.set(sTStrokeArrowLength);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void xsetStartarrowwidth(STStrokeArrowWidth sTStrokeArrowWidth) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STStrokeArrowWidth sTStrokeArrowWidth2 = (STStrokeArrowWidth) typeStore.find_attribute_user(qNameArr[18]);
            if (sTStrokeArrowWidth2 == null) {
                sTStrokeArrowWidth2 = (STStrokeArrowWidth) get_store().add_attribute_user(qNameArr[18]);
            }
            sTStrokeArrowWidth2.set(sTStrokeArrowWidth);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void xsetTitle(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[25]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[25]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTStrokeChild
    public void xsetWeight(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[2]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[2]);
            }
            xmlString2.set(xmlString);
        }
    }
}
