package org.openxmlformats.schemas.presentationml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTAnimationElementChoice;
import org.openxmlformats.schemas.drawingml.x2006.main.STDrawingElementId;
import org.openxmlformats.schemas.presentationml.x2006.main.CTEmpty;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLOleChartTargetElement;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLShapeTargetElement;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLSubShapeId;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTLTextTargetElement;

/* loaded from: classes14.dex */
public class CTTLShapeTargetElementImpl extends XmlComplexContentImpl implements CTTLShapeTargetElement {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_PRESENTATIONML, "bg"), new QName(XSSFRelation.NS_PRESENTATIONML, "subSp"), new QName(XSSFRelation.NS_PRESENTATIONML, "oleChartEl"), new QName(XSSFRelation.NS_PRESENTATIONML, "txEl"), new QName(XSSFRelation.NS_PRESENTATIONML, "graphicEl"), new QName("", "spid")};
    private static final long serialVersionUID = 1;

    public CTTLShapeTargetElementImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLShapeTargetElement
    public CTEmpty addNewBg() {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLShapeTargetElement
    public CTAnimationElementChoice addNewGraphicEl() {
        CTAnimationElementChoice cTAnimationElementChoice;
        synchronized (monitor()) {
            check_orphaned();
            cTAnimationElementChoice = (CTAnimationElementChoice) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTAnimationElementChoice;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLShapeTargetElement
    public CTTLOleChartTargetElement addNewOleChartEl() {
        CTTLOleChartTargetElement cTTLOleChartTargetElement;
        synchronized (monitor()) {
            check_orphaned();
            cTTLOleChartTargetElement = (CTTLOleChartTargetElement) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTTLOleChartTargetElement;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLShapeTargetElement
    public CTTLSubShapeId addNewSubSp() {
        CTTLSubShapeId cTTLSubShapeId;
        synchronized (monitor()) {
            check_orphaned();
            cTTLSubShapeId = (CTTLSubShapeId) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTTLSubShapeId;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLShapeTargetElement
    public CTTLTextTargetElement addNewTxEl() {
        CTTLTextTargetElement cTTLTextTargetElement;
        synchronized (monitor()) {
            check_orphaned();
            cTTLTextTargetElement = (CTTLTextTargetElement) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTTLTextTargetElement;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLShapeTargetElement
    public CTEmpty getBg() {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTEmpty == null) {
                cTEmpty = null;
            }
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLShapeTargetElement
    public CTAnimationElementChoice getGraphicEl() {
        CTAnimationElementChoice cTAnimationElementChoice;
        synchronized (monitor()) {
            check_orphaned();
            cTAnimationElementChoice = (CTAnimationElementChoice) get_store().find_element_user(PROPERTY_QNAME[4], 0);
            if (cTAnimationElementChoice == null) {
                cTAnimationElementChoice = null;
            }
        }
        return cTAnimationElementChoice;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLShapeTargetElement
    public CTTLOleChartTargetElement getOleChartEl() {
        CTTLOleChartTargetElement cTTLOleChartTargetElement;
        synchronized (monitor()) {
            check_orphaned();
            cTTLOleChartTargetElement = (CTTLOleChartTargetElement) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTTLOleChartTargetElement == null) {
                cTTLOleChartTargetElement = null;
            }
        }
        return cTTLOleChartTargetElement;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLShapeTargetElement
    public long getSpid() {
        long longValue;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[5]);
            longValue = simpleValue == null ? 0L : simpleValue.getLongValue();
        }
        return longValue;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLShapeTargetElement
    public CTTLSubShapeId getSubSp() {
        CTTLSubShapeId cTTLSubShapeId;
        synchronized (monitor()) {
            check_orphaned();
            cTTLSubShapeId = (CTTLSubShapeId) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTTLSubShapeId == null) {
                cTTLSubShapeId = null;
            }
        }
        return cTTLSubShapeId;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLShapeTargetElement
    public CTTLTextTargetElement getTxEl() {
        CTTLTextTargetElement cTTLTextTargetElement;
        synchronized (monitor()) {
            check_orphaned();
            cTTLTextTargetElement = (CTTLTextTargetElement) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            if (cTTLTextTargetElement == null) {
                cTTLTextTargetElement = null;
            }
        }
        return cTTLTextTargetElement;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLShapeTargetElement
    public boolean isSetBg() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLShapeTargetElement
    public boolean isSetGraphicEl() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[4]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLShapeTargetElement
    public boolean isSetOleChartEl() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLShapeTargetElement
    public boolean isSetSubSp() {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLShapeTargetElement
    public boolean isSetTxEl() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLShapeTargetElement
    public void setBg(CTEmpty cTEmpty) {
        generatedSetterHelperImpl(cTEmpty, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLShapeTargetElement
    public void setGraphicEl(CTAnimationElementChoice cTAnimationElementChoice) {
        generatedSetterHelperImpl(cTAnimationElementChoice, PROPERTY_QNAME[4], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLShapeTargetElement
    public void setOleChartEl(CTTLOleChartTargetElement cTTLOleChartTargetElement) {
        generatedSetterHelperImpl(cTTLOleChartTargetElement, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLShapeTargetElement
    public void setSpid(long j) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            SimpleValue simpleValue = (SimpleValue) typeStore.find_attribute_user(qNameArr[5]);
            if (simpleValue == null) {
                simpleValue = (SimpleValue) get_store().add_attribute_user(qNameArr[5]);
            }
            simpleValue.setLongValue(j);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLShapeTargetElement
    public void setSubSp(CTTLSubShapeId cTTLSubShapeId) {
        generatedSetterHelperImpl(cTTLSubShapeId, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLShapeTargetElement
    public void setTxEl(CTTLTextTargetElement cTTLTextTargetElement) {
        generatedSetterHelperImpl(cTTLTextTargetElement, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLShapeTargetElement
    public void unsetBg() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLShapeTargetElement
    public void unsetGraphicEl() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLShapeTargetElement
    public void unsetOleChartEl() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLShapeTargetElement
    public void unsetSubSp() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLShapeTargetElement
    public void unsetTxEl() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLShapeTargetElement
    public STDrawingElementId xgetSpid() {
        STDrawingElementId sTDrawingElementId;
        synchronized (monitor()) {
            check_orphaned();
            sTDrawingElementId = (STDrawingElementId) get_store().find_attribute_user(PROPERTY_QNAME[5]);
        }
        return sTDrawingElementId;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTLShapeTargetElement
    public void xsetSpid(STDrawingElementId sTDrawingElementId) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STDrawingElementId sTDrawingElementId2 = (STDrawingElementId) typeStore.find_attribute_user(qNameArr[5]);
            if (sTDrawingElementId2 == null) {
                sTDrawingElementId2 = (STDrawingElementId) get_store().add_attribute_user(qNameArr[5]);
            }
            sTDrawingElementId2.set(sTDrawingElementId);
        }
    }
}
