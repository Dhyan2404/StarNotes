package com.microsoft.schemas.vml.impl;

import com.microsoft.schemas.office.office.CTStrokeChild;
import com.microsoft.schemas.vml.CTStroke;
import com.microsoft.schemas.vml.STFillType;
import com.microsoft.schemas.vml.STImageAspect;
import com.microsoft.schemas.vml.STStrokeArrowLength;
import com.microsoft.schemas.vml.STStrokeArrowType;
import com.microsoft.schemas.vml.STStrokeArrowWidth;
import com.microsoft.schemas.vml.STStrokeEndCap;
import com.microsoft.schemas.vml.STStrokeJoinStyle;
import com.microsoft.schemas.vml.STStrokeLineStyle;
import com.onegravity.colorpicker.OpacityBar;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.sunia.HTREnginev2.gon;
import java.math.BigDecimal;
import javax.xml.namespace.QName;
import kotlinx.coroutines.DebugKt;
import org.apache.poi.openxml4j.opc.PackageRelationshipTypes;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlDecimal;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.relationships.STRelationshipId;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STColorType;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse;

/* loaded from: classes7.dex */
public class CTStrokeImpl extends XmlComplexContentImpl implements CTStroke {
    private static final QName[] PROPERTY_QNAME = {new QName("urn:schemas-microsoft-com:office:office", "left"), new QName("urn:schemas-microsoft-com:office:office", OneDriverConstants.TOP), new QName("urn:schemas-microsoft-com:office:office", gon.f71288n0), new QName("urn:schemas-microsoft-com:office:office", "bottom"), new QName("urn:schemas-microsoft-com:office:office", "column"), new QName("", "id"), new QName("", DebugKt.DEBUG_PROPERTY_VALUE_ON), new QName("", "weight"), new QName("", "color"), new QName("", OpacityBar.f39917J), new QName("", "linestyle"), new QName("", "miterlimit"), new QName("", "joinstyle"), new QName("", "endcap"), new QName("", "dashstyle"), new QName("", "filltype"), new QName("", Constant.SRC_TAG), new QName("", "imageaspect"), new QName("", "imagesize"), new QName("", "imagealignshape"), new QName("", "color2"), new QName("", "startarrow"), new QName("", "startarrowwidth"), new QName("", "startarrowlength"), new QName("", "endarrow"), new QName("", "endarrowwidth"), new QName("", "endarrowlength"), new QName("urn:schemas-microsoft-com:office:office", "href"), new QName("urn:schemas-microsoft-com:office:office", "althref"), new QName("urn:schemas-microsoft-com:office:office", "title"), new QName("urn:schemas-microsoft-com:office:office", "forcedash"), new QName(PackageRelationshipTypes.CORE_PROPERTIES_ECMA376_NS, "id"), new QName("", "insetpen"), new QName("urn:schemas-microsoft-com:office:office", "relid")};
    private static final long serialVersionUID = 1;

    public CTStrokeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public CTStrokeChild addNewBottom() {
        CTStrokeChild cTStrokeChild;
        synchronized (monitor()) {
            check_orphaned();
            cTStrokeChild = (CTStrokeChild) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTStrokeChild;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public CTStrokeChild addNewColumn() {
        CTStrokeChild cTStrokeChild;
        synchronized (monitor()) {
            check_orphaned();
            cTStrokeChild = (CTStrokeChild) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTStrokeChild;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public CTStrokeChild addNewLeft() {
        CTStrokeChild cTStrokeChild;
        synchronized (monitor()) {
            check_orphaned();
            cTStrokeChild = (CTStrokeChild) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTStrokeChild;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public CTStrokeChild addNewRight() {
        CTStrokeChild cTStrokeChild;
        synchronized (monitor()) {
            check_orphaned();
            cTStrokeChild = (CTStrokeChild) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTStrokeChild;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public CTStrokeChild addNewTop() {
        CTStrokeChild cTStrokeChild;
        synchronized (monitor()) {
            check_orphaned();
            cTStrokeChild = (CTStrokeChild) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTStrokeChild;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public String getAlthref() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[28]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public CTStrokeChild getBottom() {
        CTStrokeChild cTStrokeChild;
        synchronized (monitor()) {
            check_orphaned();
            cTStrokeChild = (CTStrokeChild) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            if (cTStrokeChild == null) {
                cTStrokeChild = null;
            }
        }
        return cTStrokeChild;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public String getColor() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[8]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public String getColor2() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[20]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public CTStrokeChild getColumn() {
        CTStrokeChild cTStrokeChild;
        synchronized (monitor()) {
            check_orphaned();
            cTStrokeChild = (CTStrokeChild) get_store().find_element_user(PROPERTY_QNAME[4], 0);
            if (cTStrokeChild == null) {
                cTStrokeChild = null;
            }
        }
        return cTStrokeChild;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public String getDashstyle() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[14]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public STStrokeArrowType.Enum getEndarrow() {
        STStrokeArrowType.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[24]);
            r3 = simpleValue == null ? null : (STStrokeArrowType.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public STStrokeArrowLength.Enum getEndarrowlength() {
        STStrokeArrowLength.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[26]);
            r3 = simpleValue == null ? null : (STStrokeArrowLength.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public STStrokeArrowWidth.Enum getEndarrowwidth() {
        STStrokeArrowWidth.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[25]);
            r3 = simpleValue == null ? null : (STStrokeArrowWidth.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public STStrokeEndCap.Enum getEndcap() {
        STStrokeEndCap.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[13]);
            r3 = simpleValue == null ? null : (STStrokeEndCap.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public STFillType.Enum getFilltype() {
        STFillType.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[15]);
            r3 = simpleValue == null ? null : (STFillType.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public STTrueFalse.Enum getForcedash() {
        STTrueFalse.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[30]);
            r3 = simpleValue == null ? null : (STTrueFalse.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public String getHref() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[27]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public String getId() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[5]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public String getId2() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[31]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public STTrueFalse.Enum getImagealignshape() {
        STTrueFalse.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[19]);
            r3 = simpleValue == null ? null : (STTrueFalse.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public STImageAspect.Enum getImageaspect() {
        STImageAspect.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[17]);
            r3 = simpleValue == null ? null : (STImageAspect.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public String getImagesize() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[18]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public STTrueFalse.Enum getInsetpen() {
        STTrueFalse.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[32]);
            r3 = simpleValue == null ? null : (STTrueFalse.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public STStrokeJoinStyle.Enum getJoinstyle() {
        STStrokeJoinStyle.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[12]);
            r3 = simpleValue == null ? null : (STStrokeJoinStyle.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public CTStrokeChild getLeft() {
        CTStrokeChild cTStrokeChild;
        synchronized (monitor()) {
            check_orphaned();
            cTStrokeChild = (CTStrokeChild) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTStrokeChild == null) {
                cTStrokeChild = null;
            }
        }
        return cTStrokeChild;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public STStrokeLineStyle.Enum getLinestyle() {
        STStrokeLineStyle.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[10]);
            r3 = simpleValue == null ? null : (STStrokeLineStyle.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public BigDecimal getMiterlimit() {
        BigDecimal bigDecimalValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[11]);
            bigDecimalValue = simpleValue == null ? null : simpleValue.getBigDecimalValue();
        }
        return bigDecimalValue;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public STTrueFalse.Enum getOn() {
        STTrueFalse.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[6]);
            r3 = simpleValue == null ? null : (STTrueFalse.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public String getOpacity() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[9]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public String getRelid() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[33]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public CTStrokeChild getRight() {
        CTStrokeChild cTStrokeChild;
        synchronized (monitor()) {
            check_orphaned();
            cTStrokeChild = (CTStrokeChild) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTStrokeChild == null) {
                cTStrokeChild = null;
            }
        }
        return cTStrokeChild;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public String getSrc() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[16]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public STStrokeArrowType.Enum getStartarrow() {
        STStrokeArrowType.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[21]);
            r3 = simpleValue == null ? null : (STStrokeArrowType.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public STStrokeArrowLength.Enum getStartarrowlength() {
        STStrokeArrowLength.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[23]);
            r3 = simpleValue == null ? null : (STStrokeArrowLength.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public STStrokeArrowWidth.Enum getStartarrowwidth() {
        STStrokeArrowWidth.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[22]);
            r3 = simpleValue == null ? null : (STStrokeArrowWidth.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public String getTitle() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[29]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public CTStrokeChild getTop() {
        CTStrokeChild cTStrokeChild;
        synchronized (monitor()) {
            check_orphaned();
            cTStrokeChild = (CTStrokeChild) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTStrokeChild == null) {
                cTStrokeChild = null;
            }
        }
        return cTStrokeChild;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public String getWeight() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[7]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public boolean isSetAlthref() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[28]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public boolean isSetBottom() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public boolean isSetColor() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[8]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public boolean isSetColor2() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[20]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public boolean isSetColumn() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[4]) != 0;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public boolean isSetDashstyle() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[14]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public boolean isSetEndarrow() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[24]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public boolean isSetEndarrowlength() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[26]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public boolean isSetEndarrowwidth() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[25]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public boolean isSetEndcap() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[13]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public boolean isSetFilltype() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[15]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public boolean isSetForcedash() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[30]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public boolean isSetHref() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[27]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public boolean isSetId() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[5]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public boolean isSetId2() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[31]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public boolean isSetImagealignshape() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[19]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public boolean isSetImageaspect() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[17]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public boolean isSetImagesize() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[18]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public boolean isSetInsetpen() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[32]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public boolean isSetJoinstyle() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[12]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public boolean isSetLeft() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public boolean isSetLinestyle() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[10]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public boolean isSetMiterlimit() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[11]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public boolean isSetOn() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[6]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public boolean isSetOpacity() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[9]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public boolean isSetRelid() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[33]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public boolean isSetRight() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public boolean isSetSrc() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[16]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public boolean isSetStartarrow() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[21]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public boolean isSetStartarrowlength() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[23]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public boolean isSetStartarrowwidth() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[22]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public boolean isSetTitle() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[29]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public boolean isSetTop() {
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

    @Override // com.microsoft.schemas.vml.CTStroke
    public boolean isSetWeight() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[7]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void setAlthref(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[28]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[28]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void setBottom(CTStrokeChild cTStrokeChild) {
        generatedSetterHelperImpl(cTStrokeChild, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void setColor(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[8]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[8]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void setColor2(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[20]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[20]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void setColumn(CTStrokeChild cTStrokeChild) {
        generatedSetterHelperImpl(cTStrokeChild, PROPERTY_QNAME[4], 0, (short) 1);
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void setDashstyle(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[14]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[14]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void setEndarrow(STStrokeArrowType.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[24]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[24]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void setEndarrowlength(STStrokeArrowLength.Enum r6) {
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

    @Override // com.microsoft.schemas.vml.CTStroke
    public void setEndarrowwidth(STStrokeArrowWidth.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[25]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[25]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void setEndcap(STStrokeEndCap.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[13]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[13]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void setFilltype(STFillType.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[15]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[15]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void setForcedash(STTrueFalse.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[30]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[30]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void setHref(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[27]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[27]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void setId(String str) {
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

    @Override // com.microsoft.schemas.vml.CTStroke
    public void setId2(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[31]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[31]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void setImagealignshape(STTrueFalse.Enum r6) {
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

    @Override // com.microsoft.schemas.vml.CTStroke
    public void setImageaspect(STImageAspect.Enum r6) {
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

    @Override // com.microsoft.schemas.vml.CTStroke
    public void setImagesize(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[18]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[18]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void setInsetpen(STTrueFalse.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[32]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[32]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void setJoinstyle(STStrokeJoinStyle.Enum r6) {
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

    @Override // com.microsoft.schemas.vml.CTStroke
    public void setLeft(CTStrokeChild cTStrokeChild) {
        generatedSetterHelperImpl(cTStrokeChild, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void setLinestyle(STStrokeLineStyle.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[10]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[10]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void setMiterlimit(BigDecimal bigDecimal) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[11]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[11]);
            }
            simpleValue.setBigDecimalValue(bigDecimal);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void setOn(STTrueFalse.Enum r6) {
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

    @Override // com.microsoft.schemas.vml.CTStroke
    public void setOpacity(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[9]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[9]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void setRelid(String str) {
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

    @Override // com.microsoft.schemas.vml.CTStroke
    public void setRight(CTStrokeChild cTStrokeChild) {
        generatedSetterHelperImpl(cTStrokeChild, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void setSrc(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[16]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[16]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void setStartarrow(STStrokeArrowType.Enum r6) {
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

    @Override // com.microsoft.schemas.vml.CTStroke
    public void setStartarrowlength(STStrokeArrowLength.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[23]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[23]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void setStartarrowwidth(STStrokeArrowWidth.Enum r6) {
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

    @Override // com.microsoft.schemas.vml.CTStroke
    public void setTitle(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[29]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[29]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void setTop(CTStrokeChild cTStrokeChild) {
        generatedSetterHelperImpl(cTStrokeChild, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void setWeight(String str) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[7]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[7]);
            }
            simpleValue.setStringValue(str);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void unsetAlthref() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[28]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void unsetBottom() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void unsetColor() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[8]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void unsetColor2() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[20]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void unsetColumn() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], 0);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void unsetDashstyle() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[14]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void unsetEndarrow() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[24]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void unsetEndarrowlength() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[26]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void unsetEndarrowwidth() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[25]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void unsetEndcap() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[13]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void unsetFilltype() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[15]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void unsetForcedash() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[30]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void unsetHref() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[27]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void unsetId() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[5]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void unsetId2() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[31]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void unsetImagealignshape() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[19]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void unsetImageaspect() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[17]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void unsetImagesize() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[18]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void unsetInsetpen() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[32]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void unsetJoinstyle() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[12]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void unsetLeft() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void unsetLinestyle() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[10]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void unsetMiterlimit() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[11]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void unsetOn() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[6]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void unsetOpacity() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[9]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void unsetRelid() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[33]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void unsetRight() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void unsetSrc() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[16]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void unsetStartarrow() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[21]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void unsetStartarrowlength() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[23]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void unsetStartarrowwidth() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[22]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void unsetTitle() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[29]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void unsetTop() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void unsetWeight() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[7]);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public XmlString xgetAlthref() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[28]);
        }
        return xmlString;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public STColorType xgetColor() {
        STColorType sTColorType;
        synchronized (monitor()) {
            check_orphaned();
            sTColorType = (STColorType) get_store().find_attribute_user(PROPERTY_QNAME[8]);
        }
        return sTColorType;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public STColorType xgetColor2() {
        STColorType sTColorType;
        synchronized (monitor()) {
            check_orphaned();
            sTColorType = (STColorType) get_store().find_attribute_user(PROPERTY_QNAME[20]);
        }
        return sTColorType;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public XmlString xgetDashstyle() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[14]);
        }
        return xmlString;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public STStrokeArrowType xgetEndarrow() {
        STStrokeArrowType sTStrokeArrowType;
        synchronized (monitor()) {
            check_orphaned();
            sTStrokeArrowType = (STStrokeArrowType) get_store().find_attribute_user(PROPERTY_QNAME[24]);
        }
        return sTStrokeArrowType;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public STStrokeArrowLength xgetEndarrowlength() {
        STStrokeArrowLength sTStrokeArrowLength;
        synchronized (monitor()) {
            check_orphaned();
            sTStrokeArrowLength = (STStrokeArrowLength) get_store().find_attribute_user(PROPERTY_QNAME[26]);
        }
        return sTStrokeArrowLength;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public STStrokeArrowWidth xgetEndarrowwidth() {
        STStrokeArrowWidth sTStrokeArrowWidth;
        synchronized (monitor()) {
            check_orphaned();
            sTStrokeArrowWidth = (STStrokeArrowWidth) get_store().find_attribute_user(PROPERTY_QNAME[25]);
        }
        return sTStrokeArrowWidth;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public STStrokeEndCap xgetEndcap() {
        STStrokeEndCap sTStrokeEndCap;
        synchronized (monitor()) {
            check_orphaned();
            sTStrokeEndCap = (STStrokeEndCap) get_store().find_attribute_user(PROPERTY_QNAME[13]);
        }
        return sTStrokeEndCap;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public STFillType xgetFilltype() {
        STFillType sTFillType;
        synchronized (monitor()) {
            check_orphaned();
            sTFillType = (STFillType) get_store().find_attribute_user(PROPERTY_QNAME[15]);
        }
        return sTFillType;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public STTrueFalse xgetForcedash() {
        STTrueFalse sTTrueFalse;
        synchronized (monitor()) {
            check_orphaned();
            sTTrueFalse = (STTrueFalse) get_store().find_attribute_user(PROPERTY_QNAME[30]);
        }
        return sTTrueFalse;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public XmlString xgetHref() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[27]);
        }
        return xmlString;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public XmlString xgetId() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[5]);
        }
        return xmlString;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public STRelationshipId xgetId2() {
        STRelationshipId sTRelationshipId;
        synchronized (monitor()) {
            check_orphaned();
            sTRelationshipId = (STRelationshipId) get_store().find_attribute_user(PROPERTY_QNAME[31]);
        }
        return sTRelationshipId;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public STTrueFalse xgetImagealignshape() {
        STTrueFalse sTTrueFalse;
        synchronized (monitor()) {
            check_orphaned();
            sTTrueFalse = (STTrueFalse) get_store().find_attribute_user(PROPERTY_QNAME[19]);
        }
        return sTTrueFalse;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public STImageAspect xgetImageaspect() {
        STImageAspect sTImageAspect;
        synchronized (monitor()) {
            check_orphaned();
            sTImageAspect = (STImageAspect) get_store().find_attribute_user(PROPERTY_QNAME[17]);
        }
        return sTImageAspect;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public XmlString xgetImagesize() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[18]);
        }
        return xmlString;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public STTrueFalse xgetInsetpen() {
        STTrueFalse sTTrueFalse;
        synchronized (monitor()) {
            check_orphaned();
            sTTrueFalse = (STTrueFalse) get_store().find_attribute_user(PROPERTY_QNAME[32]);
        }
        return sTTrueFalse;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public STStrokeJoinStyle xgetJoinstyle() {
        STStrokeJoinStyle sTStrokeJoinStyle;
        synchronized (monitor()) {
            check_orphaned();
            sTStrokeJoinStyle = (STStrokeJoinStyle) get_store().find_attribute_user(PROPERTY_QNAME[12]);
        }
        return sTStrokeJoinStyle;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public STStrokeLineStyle xgetLinestyle() {
        STStrokeLineStyle sTStrokeLineStyle;
        synchronized (monitor()) {
            check_orphaned();
            sTStrokeLineStyle = (STStrokeLineStyle) get_store().find_attribute_user(PROPERTY_QNAME[10]);
        }
        return sTStrokeLineStyle;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public XmlDecimal xgetMiterlimit() {
        XmlDecimal xmlDecimal;
        synchronized (monitor()) {
            check_orphaned();
            xmlDecimal = (XmlDecimal) get_store().find_attribute_user(PROPERTY_QNAME[11]);
        }
        return xmlDecimal;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public STTrueFalse xgetOn() {
        STTrueFalse sTTrueFalse;
        synchronized (monitor()) {
            check_orphaned();
            sTTrueFalse = (STTrueFalse) get_store().find_attribute_user(PROPERTY_QNAME[6]);
        }
        return sTTrueFalse;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public XmlString xgetOpacity() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[9]);
        }
        return xmlString;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public STRelationshipId xgetRelid() {
        STRelationshipId sTRelationshipId;
        synchronized (monitor()) {
            check_orphaned();
            sTRelationshipId = (STRelationshipId) get_store().find_attribute_user(PROPERTY_QNAME[33]);
        }
        return sTRelationshipId;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public XmlString xgetSrc() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[16]);
        }
        return xmlString;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public STStrokeArrowType xgetStartarrow() {
        STStrokeArrowType sTStrokeArrowType;
        synchronized (monitor()) {
            check_orphaned();
            sTStrokeArrowType = (STStrokeArrowType) get_store().find_attribute_user(PROPERTY_QNAME[21]);
        }
        return sTStrokeArrowType;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public STStrokeArrowLength xgetStartarrowlength() {
        STStrokeArrowLength sTStrokeArrowLength;
        synchronized (monitor()) {
            check_orphaned();
            sTStrokeArrowLength = (STStrokeArrowLength) get_store().find_attribute_user(PROPERTY_QNAME[23]);
        }
        return sTStrokeArrowLength;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public STStrokeArrowWidth xgetStartarrowwidth() {
        STStrokeArrowWidth sTStrokeArrowWidth;
        synchronized (monitor()) {
            check_orphaned();
            sTStrokeArrowWidth = (STStrokeArrowWidth) get_store().find_attribute_user(PROPERTY_QNAME[22]);
        }
        return sTStrokeArrowWidth;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public XmlString xgetTitle() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[29]);
        }
        return xmlString;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public XmlString xgetWeight() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[7]);
        }
        return xmlString;
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void xsetAlthref(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[28]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[28]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void xsetColor(STColorType sTColorType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STColorType sTColorType2 = (STColorType) typeStore.find_attribute_user(qNameArr[8]);
            if (sTColorType2 == null) {
                sTColorType2 = (STColorType) get_store().add_attribute_user(qNameArr[8]);
            }
            sTColorType2.set(sTColorType);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void xsetColor2(STColorType sTColorType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STColorType sTColorType2 = (STColorType) typeStore.find_attribute_user(qNameArr[20]);
            if (sTColorType2 == null) {
                sTColorType2 = (STColorType) get_store().add_attribute_user(qNameArr[20]);
            }
            sTColorType2.set(sTColorType);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void xsetDashstyle(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[14]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[14]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void xsetEndarrow(STStrokeArrowType sTStrokeArrowType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STStrokeArrowType sTStrokeArrowType2 = (STStrokeArrowType) typeStore.find_attribute_user(qNameArr[24]);
            if (sTStrokeArrowType2 == null) {
                sTStrokeArrowType2 = (STStrokeArrowType) get_store().add_attribute_user(qNameArr[24]);
            }
            sTStrokeArrowType2.set(sTStrokeArrowType);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void xsetEndarrowlength(STStrokeArrowLength sTStrokeArrowLength) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STStrokeArrowLength sTStrokeArrowLength2 = (STStrokeArrowLength) typeStore.find_attribute_user(qNameArr[26]);
            if (sTStrokeArrowLength2 == null) {
                sTStrokeArrowLength2 = (STStrokeArrowLength) get_store().add_attribute_user(qNameArr[26]);
            }
            sTStrokeArrowLength2.set(sTStrokeArrowLength);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void xsetEndarrowwidth(STStrokeArrowWidth sTStrokeArrowWidth) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STStrokeArrowWidth sTStrokeArrowWidth2 = (STStrokeArrowWidth) typeStore.find_attribute_user(qNameArr[25]);
            if (sTStrokeArrowWidth2 == null) {
                sTStrokeArrowWidth2 = (STStrokeArrowWidth) get_store().add_attribute_user(qNameArr[25]);
            }
            sTStrokeArrowWidth2.set(sTStrokeArrowWidth);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void xsetEndcap(STStrokeEndCap sTStrokeEndCap) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STStrokeEndCap sTStrokeEndCap2 = (STStrokeEndCap) typeStore.find_attribute_user(qNameArr[13]);
            if (sTStrokeEndCap2 == null) {
                sTStrokeEndCap2 = (STStrokeEndCap) get_store().add_attribute_user(qNameArr[13]);
            }
            sTStrokeEndCap2.set(sTStrokeEndCap);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void xsetFilltype(STFillType sTFillType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STFillType sTFillType2 = (STFillType) typeStore.find_attribute_user(qNameArr[15]);
            if (sTFillType2 == null) {
                sTFillType2 = (STFillType) get_store().add_attribute_user(qNameArr[15]);
            }
            sTFillType2.set(sTFillType);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void xsetForcedash(STTrueFalse sTTrueFalse) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STTrueFalse sTTrueFalse2 = (STTrueFalse) typeStore.find_attribute_user(qNameArr[30]);
            if (sTTrueFalse2 == null) {
                sTTrueFalse2 = (STTrueFalse) get_store().add_attribute_user(qNameArr[30]);
            }
            sTTrueFalse2.set(sTTrueFalse);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void xsetHref(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[27]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[27]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void xsetId(XmlString xmlString) {
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

    @Override // com.microsoft.schemas.vml.CTStroke
    public void xsetId2(STRelationshipId sTRelationshipId) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STRelationshipId sTRelationshipId2 = (STRelationshipId) typeStore.find_attribute_user(qNameArr[31]);
            if (sTRelationshipId2 == null) {
                sTRelationshipId2 = (STRelationshipId) get_store().add_attribute_user(qNameArr[31]);
            }
            sTRelationshipId2.set(sTRelationshipId);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void xsetImagealignshape(STTrueFalse sTTrueFalse) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STTrueFalse sTTrueFalse2 = (STTrueFalse) typeStore.find_attribute_user(qNameArr[19]);
            if (sTTrueFalse2 == null) {
                sTTrueFalse2 = (STTrueFalse) get_store().add_attribute_user(qNameArr[19]);
            }
            sTTrueFalse2.set(sTTrueFalse);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void xsetImageaspect(STImageAspect sTImageAspect) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STImageAspect sTImageAspect2 = (STImageAspect) typeStore.find_attribute_user(qNameArr[17]);
            if (sTImageAspect2 == null) {
                sTImageAspect2 = (STImageAspect) get_store().add_attribute_user(qNameArr[17]);
            }
            sTImageAspect2.set(sTImageAspect);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void xsetImagesize(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[18]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[18]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void xsetInsetpen(STTrueFalse sTTrueFalse) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STTrueFalse sTTrueFalse2 = (STTrueFalse) typeStore.find_attribute_user(qNameArr[32]);
            if (sTTrueFalse2 == null) {
                sTTrueFalse2 = (STTrueFalse) get_store().add_attribute_user(qNameArr[32]);
            }
            sTTrueFalse2.set(sTTrueFalse);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void xsetJoinstyle(STStrokeJoinStyle sTStrokeJoinStyle) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STStrokeJoinStyle sTStrokeJoinStyle2 = (STStrokeJoinStyle) typeStore.find_attribute_user(qNameArr[12]);
            if (sTStrokeJoinStyle2 == null) {
                sTStrokeJoinStyle2 = (STStrokeJoinStyle) get_store().add_attribute_user(qNameArr[12]);
            }
            sTStrokeJoinStyle2.set(sTStrokeJoinStyle);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void xsetLinestyle(STStrokeLineStyle sTStrokeLineStyle) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STStrokeLineStyle sTStrokeLineStyle2 = (STStrokeLineStyle) typeStore.find_attribute_user(qNameArr[10]);
            if (sTStrokeLineStyle2 == null) {
                sTStrokeLineStyle2 = (STStrokeLineStyle) get_store().add_attribute_user(qNameArr[10]);
            }
            sTStrokeLineStyle2.set(sTStrokeLineStyle);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void xsetMiterlimit(XmlDecimal xmlDecimal) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlDecimal xmlDecimal2 = (XmlDecimal) typeStore.find_attribute_user(qNameArr[11]);
            if (xmlDecimal2 == null) {
                xmlDecimal2 = (XmlDecimal) get_store().add_attribute_user(qNameArr[11]);
            }
            xmlDecimal2.set(xmlDecimal);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void xsetOn(STTrueFalse sTTrueFalse) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STTrueFalse sTTrueFalse2 = (STTrueFalse) typeStore.find_attribute_user(qNameArr[6]);
            if (sTTrueFalse2 == null) {
                sTTrueFalse2 = (STTrueFalse) get_store().add_attribute_user(qNameArr[6]);
            }
            sTTrueFalse2.set(sTTrueFalse);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void xsetOpacity(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[9]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[9]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void xsetRelid(STRelationshipId sTRelationshipId) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STRelationshipId sTRelationshipId2 = (STRelationshipId) typeStore.find_attribute_user(qNameArr[33]);
            if (sTRelationshipId2 == null) {
                sTRelationshipId2 = (STRelationshipId) get_store().add_attribute_user(qNameArr[33]);
            }
            sTRelationshipId2.set(sTRelationshipId);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void xsetSrc(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[16]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[16]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void xsetStartarrow(STStrokeArrowType sTStrokeArrowType) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STStrokeArrowType sTStrokeArrowType2 = (STStrokeArrowType) typeStore.find_attribute_user(qNameArr[21]);
            if (sTStrokeArrowType2 == null) {
                sTStrokeArrowType2 = (STStrokeArrowType) get_store().add_attribute_user(qNameArr[21]);
            }
            sTStrokeArrowType2.set(sTStrokeArrowType);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void xsetStartarrowlength(STStrokeArrowLength sTStrokeArrowLength) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STStrokeArrowLength sTStrokeArrowLength2 = (STStrokeArrowLength) typeStore.find_attribute_user(qNameArr[23]);
            if (sTStrokeArrowLength2 == null) {
                sTStrokeArrowLength2 = (STStrokeArrowLength) get_store().add_attribute_user(qNameArr[23]);
            }
            sTStrokeArrowLength2.set(sTStrokeArrowLength);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void xsetStartarrowwidth(STStrokeArrowWidth sTStrokeArrowWidth) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STStrokeArrowWidth sTStrokeArrowWidth2 = (STStrokeArrowWidth) typeStore.find_attribute_user(qNameArr[22]);
            if (sTStrokeArrowWidth2 == null) {
                sTStrokeArrowWidth2 = (STStrokeArrowWidth) get_store().add_attribute_user(qNameArr[22]);
            }
            sTStrokeArrowWidth2.set(sTStrokeArrowWidth);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void xsetTitle(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[29]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[29]);
            }
            xmlString2.set(xmlString);
        }
    }

    @Override // com.microsoft.schemas.vml.CTStroke
    public void xsetWeight(XmlString xmlString) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlString xmlString2 = (XmlString) typeStore.find_attribute_user(qNameArr[7]);
            if (xmlString2 == null) {
                xmlString2 = (XmlString) get_store().add_attribute_user(qNameArr[7]);
            }
            xmlString2.set(xmlString);
        }
    }
}
