package org.openxmlformats.schemas.drawingml.x2006.chart.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTBoolean;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTPictureFormat;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTPictureOptions;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTPictureStackUnit;

/* loaded from: classes14.dex */
public class CTPictureOptionsImpl extends XmlComplexContentImpl implements CTPictureOptions {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_CHART, "applyToFront"), new QName(XSSFRelation.NS_CHART, "applyToSides"), new QName(XSSFRelation.NS_CHART, "applyToEnd"), new QName(XSSFRelation.NS_CHART, "pictureFormat"), new QName(XSSFRelation.NS_CHART, "pictureStackUnit")};
    private static final long serialVersionUID = 1;

    public CTPictureOptionsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPictureOptions
    public CTBoolean addNewApplyToEnd() {
        CTBoolean cTBoolean;
        synchronized (monitor()) {
            check_orphaned();
            cTBoolean = (CTBoolean) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTBoolean;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPictureOptions
    public CTBoolean addNewApplyToFront() {
        CTBoolean cTBoolean;
        synchronized (monitor()) {
            check_orphaned();
            cTBoolean = (CTBoolean) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTBoolean;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPictureOptions
    public CTBoolean addNewApplyToSides() {
        CTBoolean cTBoolean;
        synchronized (monitor()) {
            check_orphaned();
            cTBoolean = (CTBoolean) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTBoolean;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPictureOptions
    public CTPictureFormat addNewPictureFormat() {
        CTPictureFormat cTPictureFormat;
        synchronized (monitor()) {
            check_orphaned();
            cTPictureFormat = (CTPictureFormat) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTPictureFormat;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPictureOptions
    public CTPictureStackUnit addNewPictureStackUnit() {
        CTPictureStackUnit cTPictureStackUnit;
        synchronized (monitor()) {
            check_orphaned();
            cTPictureStackUnit = (CTPictureStackUnit) get_store().add_element_user(PROPERTY_QNAME[4]);
        }
        return cTPictureStackUnit;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPictureOptions
    public CTBoolean getApplyToEnd() {
        CTBoolean cTBoolean;
        synchronized (monitor()) {
            check_orphaned();
            cTBoolean = (CTBoolean) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTBoolean == null) {
                cTBoolean = null;
            }
        }
        return cTBoolean;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPictureOptions
    public CTBoolean getApplyToFront() {
        CTBoolean cTBoolean;
        synchronized (monitor()) {
            check_orphaned();
            cTBoolean = (CTBoolean) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTBoolean == null) {
                cTBoolean = null;
            }
        }
        return cTBoolean;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPictureOptions
    public CTBoolean getApplyToSides() {
        CTBoolean cTBoolean;
        synchronized (monitor()) {
            check_orphaned();
            cTBoolean = (CTBoolean) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTBoolean == null) {
                cTBoolean = null;
            }
        }
        return cTBoolean;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPictureOptions
    public CTPictureFormat getPictureFormat() {
        CTPictureFormat cTPictureFormat;
        synchronized (monitor()) {
            check_orphaned();
            cTPictureFormat = (CTPictureFormat) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            if (cTPictureFormat == null) {
                cTPictureFormat = null;
            }
        }
        return cTPictureFormat;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPictureOptions
    public CTPictureStackUnit getPictureStackUnit() {
        CTPictureStackUnit cTPictureStackUnit;
        synchronized (monitor()) {
            check_orphaned();
            cTPictureStackUnit = (CTPictureStackUnit) get_store().find_element_user(PROPERTY_QNAME[4], 0);
            if (cTPictureStackUnit == null) {
                cTPictureStackUnit = null;
            }
        }
        return cTPictureStackUnit;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPictureOptions
    public boolean isSetApplyToEnd() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPictureOptions
    public boolean isSetApplyToFront() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPictureOptions
    public boolean isSetApplyToSides() {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPictureOptions
    public boolean isSetPictureFormat() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPictureOptions
    public boolean isSetPictureStackUnit() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[4]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPictureOptions
    public void setApplyToEnd(CTBoolean cTBoolean) {
        generatedSetterHelperImpl(cTBoolean, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPictureOptions
    public void setApplyToFront(CTBoolean cTBoolean) {
        generatedSetterHelperImpl(cTBoolean, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPictureOptions
    public void setApplyToSides(CTBoolean cTBoolean) {
        generatedSetterHelperImpl(cTBoolean, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPictureOptions
    public void setPictureFormat(CTPictureFormat cTPictureFormat) {
        generatedSetterHelperImpl(cTPictureFormat, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPictureOptions
    public void setPictureStackUnit(CTPictureStackUnit cTPictureStackUnit) {
        generatedSetterHelperImpl(cTPictureStackUnit, PROPERTY_QNAME[4], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPictureOptions
    public void unsetApplyToEnd() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPictureOptions
    public void unsetApplyToFront() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPictureOptions
    public void unsetApplyToSides() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPictureOptions
    public void unsetPictureFormat() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.CTPictureOptions
    public void unsetPictureStackUnit() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[4], 0);
        }
    }
}
