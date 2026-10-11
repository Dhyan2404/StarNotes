package com.microsoft.schemas.office.office.impl;

import com.microsoft.schemas.office.office.CTDiagram;
import com.microsoft.schemas.office.office.CTRelationTable;
import com.microsoft.schemas.vml.STExt;
import java.math.BigInteger;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.XmlInteger;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTrueFalse;

/* loaded from: classes7.dex */
public class CTDiagramImpl extends XmlComplexContentImpl implements CTDiagram {
    private static final QName[] PROPERTY_QNAME = {new QName("urn:schemas-microsoft-com:office:office", "relationtable"), new QName("urn:schemas-microsoft-com:vml", "ext"), new QName("", "dgmstyle"), new QName("", "autoformat"), new QName("", "reverse"), new QName("", "autolayout"), new QName("", "dgmscalex"), new QName("", "dgmscaley"), new QName("", "dgmfontsize"), new QName("", "constrainbounds"), new QName("", "dgmbasetextscale")};
    private static final long serialVersionUID = 1;

    public CTDiagramImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.office.CTDiagram
    public CTRelationTable addNewRelationtable() {
        CTRelationTable cTRelationTable;
        synchronized (monitor()) {
            check_orphaned();
            cTRelationTable = (CTRelationTable) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTRelationTable;
    }

    @Override // com.microsoft.schemas.office.office.CTDiagram
    public STTrueFalse.Enum getAutoformat() {
        STTrueFalse.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[3]);
            r3 = simpleValue == null ? null : (STTrueFalse.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.office.office.CTDiagram
    public STTrueFalse.Enum getAutolayout() {
        STTrueFalse.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[5]);
            r3 = simpleValue == null ? null : (STTrueFalse.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.office.office.CTDiagram
    public String getConstrainbounds() {
        String stringValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[9]);
            stringValue = simpleValue == null ? null : simpleValue.getStringValue();
        }
        return stringValue;
    }

    @Override // com.microsoft.schemas.office.office.CTDiagram
    public BigInteger getDgmbasetextscale() {
        BigInteger bigIntegerValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[10]);
            bigIntegerValue = simpleValue == null ? null : simpleValue.getBigIntegerValue();
        }
        return bigIntegerValue;
    }

    @Override // com.microsoft.schemas.office.office.CTDiagram
    public BigInteger getDgmfontsize() {
        BigInteger bigIntegerValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[8]);
            bigIntegerValue = simpleValue == null ? null : simpleValue.getBigIntegerValue();
        }
        return bigIntegerValue;
    }

    @Override // com.microsoft.schemas.office.office.CTDiagram
    public BigInteger getDgmscalex() {
        BigInteger bigIntegerValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[6]);
            bigIntegerValue = simpleValue == null ? null : simpleValue.getBigIntegerValue();
        }
        return bigIntegerValue;
    }

    @Override // com.microsoft.schemas.office.office.CTDiagram
    public BigInteger getDgmscaley() {
        BigInteger bigIntegerValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[7]);
            bigIntegerValue = simpleValue == null ? null : simpleValue.getBigIntegerValue();
        }
        return bigIntegerValue;
    }

    @Override // com.microsoft.schemas.office.office.CTDiagram
    public BigInteger getDgmstyle() {
        BigInteger bigIntegerValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[2]);
            bigIntegerValue = simpleValue == null ? null : simpleValue.getBigIntegerValue();
        }
        return bigIntegerValue;
    }

    @Override // com.microsoft.schemas.office.office.CTDiagram
    public STExt.Enum getExt() {
        STExt.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            r3 = simpleValue == null ? null : (STExt.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.office.office.CTDiagram
    public CTRelationTable getRelationtable() {
        CTRelationTable cTRelationTable;
        synchronized (monitor()) {
            check_orphaned();
            cTRelationTable = (CTRelationTable) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTRelationTable == null) {
                cTRelationTable = null;
            }
        }
        return cTRelationTable;
    }

    @Override // com.microsoft.schemas.office.office.CTDiagram
    public STTrueFalse.Enum getReverse() {
        STTrueFalse.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[4]);
            r3 = simpleValue == null ? null : (STTrueFalse.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // com.microsoft.schemas.office.office.CTDiagram
    public boolean isSetAutoformat() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[3]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.CTDiagram
    public boolean isSetAutolayout() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[5]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.CTDiagram
    public boolean isSetConstrainbounds() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[9]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.CTDiagram
    public boolean isSetDgmbasetextscale() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[10]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.CTDiagram
    public boolean isSetDgmfontsize() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[8]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.CTDiagram
    public boolean isSetDgmscalex() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[6]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.CTDiagram
    public boolean isSetDgmscaley() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[7]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.CTDiagram
    public boolean isSetDgmstyle() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[2]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.CTDiagram
    public boolean isSetExt() {
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

    @Override // com.microsoft.schemas.office.office.CTDiagram
    public boolean isSetRelationtable() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.CTDiagram
    public boolean isSetReverse() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().find_attribute_user(PROPERTY_QNAME[4]) != null;
        }
        return z;
    }

    @Override // com.microsoft.schemas.office.office.CTDiagram
    public void setAutoformat(STTrueFalse.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[3]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[3]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTDiagram
    public void setAutolayout(STTrueFalse.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[5]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[5]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTDiagram
    public void setConstrainbounds(String str) {
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

    @Override // com.microsoft.schemas.office.office.CTDiagram
    public void setDgmbasetextscale(BigInteger bigInteger) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[10]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[10]);
            }
            simpleValue.setBigIntegerValue(bigInteger);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTDiagram
    public void setDgmfontsize(BigInteger bigInteger) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[8]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[8]);
            }
            simpleValue.setBigIntegerValue(bigInteger);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTDiagram
    public void setDgmscalex(BigInteger bigInteger) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[6]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[6]);
            }
            simpleValue.setBigIntegerValue(bigInteger);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTDiagram
    public void setDgmscaley(BigInteger bigInteger) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[7]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[7]);
            }
            simpleValue.setBigIntegerValue(bigInteger);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTDiagram
    public void setDgmstyle(BigInteger bigInteger) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[2]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[2]);
            }
            simpleValue.setBigIntegerValue(bigInteger);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTDiagram
    public void setExt(STExt.Enum r6) {
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

    @Override // com.microsoft.schemas.office.office.CTDiagram
    public void setRelationtable(CTRelationTable cTRelationTable) {
        generatedSetterHelperImpl(cTRelationTable, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // com.microsoft.schemas.office.office.CTDiagram
    public void setReverse(STTrueFalse.Enum r6) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[4]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[4]);
            }
            simpleValue.setEnumValue(r6);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTDiagram
    public void unsetAutoformat() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[3]);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTDiagram
    public void unsetAutolayout() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[5]);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTDiagram
    public void unsetConstrainbounds() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[9]);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTDiagram
    public void unsetDgmbasetextscale() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[10]);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTDiagram
    public void unsetDgmfontsize() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[8]);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTDiagram
    public void unsetDgmscalex() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[6]);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTDiagram
    public void unsetDgmscaley() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[7]);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTDiagram
    public void unsetDgmstyle() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[2]);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTDiagram
    public void unsetExt() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[1]);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTDiagram
    public void unsetRelationtable() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTDiagram
    public void unsetReverse() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_attribute(PROPERTY_QNAME[4]);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTDiagram
    public STTrueFalse xgetAutoformat() {
        STTrueFalse sTTrueFalse;
        synchronized (monitor()) {
            check_orphaned();
            sTTrueFalse = (STTrueFalse) get_store().find_attribute_user(PROPERTY_QNAME[3]);
        }
        return sTTrueFalse;
    }

    @Override // com.microsoft.schemas.office.office.CTDiagram
    public STTrueFalse xgetAutolayout() {
        STTrueFalse sTTrueFalse;
        synchronized (monitor()) {
            check_orphaned();
            sTTrueFalse = (STTrueFalse) get_store().find_attribute_user(PROPERTY_QNAME[5]);
        }
        return sTTrueFalse;
    }

    @Override // com.microsoft.schemas.office.office.CTDiagram
    public XmlString xgetConstrainbounds() {
        XmlString xmlString;
        synchronized (monitor()) {
            check_orphaned();
            xmlString = (XmlString) get_store().find_attribute_user(PROPERTY_QNAME[9]);
        }
        return xmlString;
    }

    @Override // com.microsoft.schemas.office.office.CTDiagram
    public XmlInteger xgetDgmbasetextscale() {
        XmlInteger xmlInteger;
        synchronized (monitor()) {
            check_orphaned();
            xmlInteger = (XmlInteger) get_store().find_attribute_user(PROPERTY_QNAME[10]);
        }
        return xmlInteger;
    }

    @Override // com.microsoft.schemas.office.office.CTDiagram
    public XmlInteger xgetDgmfontsize() {
        XmlInteger xmlInteger;
        synchronized (monitor()) {
            check_orphaned();
            xmlInteger = (XmlInteger) get_store().find_attribute_user(PROPERTY_QNAME[8]);
        }
        return xmlInteger;
    }

    @Override // com.microsoft.schemas.office.office.CTDiagram
    public XmlInteger xgetDgmscalex() {
        XmlInteger xmlInteger;
        synchronized (monitor()) {
            check_orphaned();
            xmlInteger = (XmlInteger) get_store().find_attribute_user(PROPERTY_QNAME[6]);
        }
        return xmlInteger;
    }

    @Override // com.microsoft.schemas.office.office.CTDiagram
    public XmlInteger xgetDgmscaley() {
        XmlInteger xmlInteger;
        synchronized (monitor()) {
            check_orphaned();
            xmlInteger = (XmlInteger) get_store().find_attribute_user(PROPERTY_QNAME[7]);
        }
        return xmlInteger;
    }

    @Override // com.microsoft.schemas.office.office.CTDiagram
    public XmlInteger xgetDgmstyle() {
        XmlInteger xmlInteger;
        synchronized (monitor()) {
            check_orphaned();
            xmlInteger = (XmlInteger) get_store().find_attribute_user(PROPERTY_QNAME[2]);
        }
        return xmlInteger;
    }

    @Override // com.microsoft.schemas.office.office.CTDiagram
    public STExt xgetExt() {
        STExt sTExt;
        synchronized (monitor()) {
            check_orphaned();
            sTExt = (STExt) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return sTExt;
    }

    @Override // com.microsoft.schemas.office.office.CTDiagram
    public STTrueFalse xgetReverse() {
        STTrueFalse sTTrueFalse;
        synchronized (monitor()) {
            check_orphaned();
            sTTrueFalse = (STTrueFalse) get_store().find_attribute_user(PROPERTY_QNAME[4]);
        }
        return sTTrueFalse;
    }

    @Override // com.microsoft.schemas.office.office.CTDiagram
    public void xsetAutoformat(STTrueFalse sTTrueFalse) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STTrueFalse sTTrueFalse2 = (STTrueFalse) typeStore.find_attribute_user(qNameArr[3]);
            if (sTTrueFalse2 == null) {
                sTTrueFalse2 = (STTrueFalse) get_store().add_attribute_user(qNameArr[3]);
            }
            sTTrueFalse2.set(sTTrueFalse);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTDiagram
    public void xsetAutolayout(STTrueFalse sTTrueFalse) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STTrueFalse sTTrueFalse2 = (STTrueFalse) typeStore.find_attribute_user(qNameArr[5]);
            if (sTTrueFalse2 == null) {
                sTTrueFalse2 = (STTrueFalse) get_store().add_attribute_user(qNameArr[5]);
            }
            sTTrueFalse2.set(sTTrueFalse);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTDiagram
    public void xsetConstrainbounds(XmlString xmlString) {
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

    @Override // com.microsoft.schemas.office.office.CTDiagram
    public void xsetDgmbasetextscale(XmlInteger xmlInteger) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlInteger xmlInteger2 = (XmlInteger) typeStore.find_attribute_user(qNameArr[10]);
            if (xmlInteger2 == null) {
                xmlInteger2 = (XmlInteger) get_store().add_attribute_user(qNameArr[10]);
            }
            xmlInteger2.set(xmlInteger);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTDiagram
    public void xsetDgmfontsize(XmlInteger xmlInteger) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlInteger xmlInteger2 = (XmlInteger) typeStore.find_attribute_user(qNameArr[8]);
            if (xmlInteger2 == null) {
                xmlInteger2 = (XmlInteger) get_store().add_attribute_user(qNameArr[8]);
            }
            xmlInteger2.set(xmlInteger);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTDiagram
    public void xsetDgmscalex(XmlInteger xmlInteger) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlInteger xmlInteger2 = (XmlInteger) typeStore.find_attribute_user(qNameArr[6]);
            if (xmlInteger2 == null) {
                xmlInteger2 = (XmlInteger) get_store().add_attribute_user(qNameArr[6]);
            }
            xmlInteger2.set(xmlInteger);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTDiagram
    public void xsetDgmscaley(XmlInteger xmlInteger) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlInteger xmlInteger2 = (XmlInteger) typeStore.find_attribute_user(qNameArr[7]);
            if (xmlInteger2 == null) {
                xmlInteger2 = (XmlInteger) get_store().add_attribute_user(qNameArr[7]);
            }
            xmlInteger2.set(xmlInteger);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTDiagram
    public void xsetDgmstyle(XmlInteger xmlInteger) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            XmlInteger xmlInteger2 = (XmlInteger) typeStore.find_attribute_user(qNameArr[2]);
            if (xmlInteger2 == null) {
                xmlInteger2 = (XmlInteger) get_store().add_attribute_user(qNameArr[2]);
            }
            xmlInteger2.set(xmlInteger);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTDiagram
    public void xsetExt(STExt sTExt) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STExt sTExt2 = (STExt) typeStore.find_attribute_user(qNameArr[1]);
            if (sTExt2 == null) {
                sTExt2 = (STExt) get_store().add_attribute_user(qNameArr[1]);
            }
            sTExt2.set(sTExt);
        }
    }

    @Override // com.microsoft.schemas.office.office.CTDiagram
    public void xsetReverse(STTrueFalse sTTrueFalse) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STTrueFalse sTTrueFalse2 = (STTrueFalse) typeStore.find_attribute_user(qNameArr[4]);
            if (sTTrueFalse2 == null) {
                sTTrueFalse2 = (STTrueFalse) get_store().add_attribute_user(qNameArr[4]);
            }
            sTTrueFalse2.set(sTTrueFalse);
        }
    }
}
