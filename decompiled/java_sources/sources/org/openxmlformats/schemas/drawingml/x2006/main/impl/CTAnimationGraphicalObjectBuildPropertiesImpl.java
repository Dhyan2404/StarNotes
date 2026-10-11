package org.openxmlformats.schemas.drawingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTAnimationChartBuildProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTAnimationDgmBuildProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTAnimationGraphicalObjectBuildProperties;

/* loaded from: classes14.dex */
public class CTAnimationGraphicalObjectBuildPropertiesImpl extends XmlComplexContentImpl implements CTAnimationGraphicalObjectBuildProperties {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_DRAWINGML, "bldDgm"), new QName(XSSFRelation.NS_DRAWINGML, "bldChart")};
    private static final long serialVersionUID = 1;

    public CTAnimationGraphicalObjectBuildPropertiesImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAnimationGraphicalObjectBuildProperties
    public CTAnimationChartBuildProperties addNewBldChart() {
        CTAnimationChartBuildProperties cTAnimationChartBuildProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTAnimationChartBuildProperties = (CTAnimationChartBuildProperties) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTAnimationChartBuildProperties;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAnimationGraphicalObjectBuildProperties
    public CTAnimationDgmBuildProperties addNewBldDgm() {
        CTAnimationDgmBuildProperties cTAnimationDgmBuildProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTAnimationDgmBuildProperties = (CTAnimationDgmBuildProperties) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTAnimationDgmBuildProperties;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAnimationGraphicalObjectBuildProperties
    public CTAnimationChartBuildProperties getBldChart() {
        CTAnimationChartBuildProperties cTAnimationChartBuildProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTAnimationChartBuildProperties = (CTAnimationChartBuildProperties) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTAnimationChartBuildProperties == null) {
                cTAnimationChartBuildProperties = null;
            }
        }
        return cTAnimationChartBuildProperties;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAnimationGraphicalObjectBuildProperties
    public CTAnimationDgmBuildProperties getBldDgm() {
        CTAnimationDgmBuildProperties cTAnimationDgmBuildProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTAnimationDgmBuildProperties = (CTAnimationDgmBuildProperties) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTAnimationDgmBuildProperties == null) {
                cTAnimationDgmBuildProperties = null;
            }
        }
        return cTAnimationDgmBuildProperties;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAnimationGraphicalObjectBuildProperties
    public boolean isSetBldChart() {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAnimationGraphicalObjectBuildProperties
    public boolean isSetBldDgm() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAnimationGraphicalObjectBuildProperties
    public void setBldChart(CTAnimationChartBuildProperties cTAnimationChartBuildProperties) {
        generatedSetterHelperImpl(cTAnimationChartBuildProperties, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAnimationGraphicalObjectBuildProperties
    public void setBldDgm(CTAnimationDgmBuildProperties cTAnimationDgmBuildProperties) {
        generatedSetterHelperImpl(cTAnimationDgmBuildProperties, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAnimationGraphicalObjectBuildProperties
    public void unsetBldChart() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAnimationGraphicalObjectBuildProperties
    public void unsetBldDgm() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }
}
