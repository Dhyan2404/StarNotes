package org.openxmlformats.schemas.drawingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTAnimationChartElement;
import org.openxmlformats.schemas.drawingml.x2006.main.CTAnimationDgmElement;
import org.openxmlformats.schemas.drawingml.x2006.main.CTAnimationElementChoice;

/* loaded from: classes14.dex */
public class CTAnimationElementChoiceImpl extends XmlComplexContentImpl implements CTAnimationElementChoice {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_DRAWINGML, "dgm"), new QName(XSSFRelation.NS_DRAWINGML, "chart")};
    private static final long serialVersionUID = 1;

    public CTAnimationElementChoiceImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAnimationElementChoice
    public CTAnimationChartElement addNewChart() {
        CTAnimationChartElement cTAnimationChartElement;
        synchronized (monitor()) {
            check_orphaned();
            cTAnimationChartElement = (CTAnimationChartElement) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTAnimationChartElement;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAnimationElementChoice
    public CTAnimationDgmElement addNewDgm() {
        CTAnimationDgmElement cTAnimationDgmElement;
        synchronized (monitor()) {
            check_orphaned();
            cTAnimationDgmElement = (CTAnimationDgmElement) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTAnimationDgmElement;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAnimationElementChoice
    public CTAnimationChartElement getChart() {
        CTAnimationChartElement cTAnimationChartElement;
        synchronized (monitor()) {
            check_orphaned();
            cTAnimationChartElement = (CTAnimationChartElement) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTAnimationChartElement == null) {
                cTAnimationChartElement = null;
            }
        }
        return cTAnimationChartElement;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAnimationElementChoice
    public CTAnimationDgmElement getDgm() {
        CTAnimationDgmElement cTAnimationDgmElement;
        synchronized (monitor()) {
            check_orphaned();
            cTAnimationDgmElement = (CTAnimationDgmElement) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTAnimationDgmElement == null) {
                cTAnimationDgmElement = null;
            }
        }
        return cTAnimationDgmElement;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAnimationElementChoice
    public boolean isSetChart() {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAnimationElementChoice
    public boolean isSetDgm() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAnimationElementChoice
    public void setChart(CTAnimationChartElement cTAnimationChartElement) {
        generatedSetterHelperImpl(cTAnimationChartElement, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAnimationElementChoice
    public void setDgm(CTAnimationDgmElement cTAnimationDgmElement) {
        generatedSetterHelperImpl(cTAnimationDgmElement, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAnimationElementChoice
    public void unsetChart() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAnimationElementChoice
    public void unsetDgm() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }
}
