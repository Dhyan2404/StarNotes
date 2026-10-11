package org.openxmlformats.schemas.drawingml.x2006.diagram.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.diagram.CTTextProps;
import org.openxmlformats.schemas.drawingml.x2006.main.CTFlatText;
import org.openxmlformats.schemas.drawingml.x2006.main.CTShape3D;

/* loaded from: classes14.dex */
public class CTTextPropsImpl extends XmlComplexContentImpl implements CTTextProps {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_DRAWINGML, "sp3d"), new QName(XSSFRelation.NS_DRAWINGML, "flatTx")};
    private static final long serialVersionUID = 1;

    public CTTextPropsImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTTextProps
    public CTFlatText addNewFlatTx() {
        CTFlatText cTFlatText;
        synchronized (monitor()) {
            check_orphaned();
            cTFlatText = (CTFlatText) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTFlatText;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTTextProps
    public CTShape3D addNewSp3D() {
        CTShape3D cTShape3D;
        synchronized (monitor()) {
            check_orphaned();
            cTShape3D = (CTShape3D) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTShape3D;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTTextProps
    public CTFlatText getFlatTx() {
        CTFlatText cTFlatText;
        synchronized (monitor()) {
            check_orphaned();
            cTFlatText = (CTFlatText) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTFlatText == null) {
                cTFlatText = null;
            }
        }
        return cTFlatText;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTTextProps
    public CTShape3D getSp3D() {
        CTShape3D cTShape3D;
        synchronized (monitor()) {
            check_orphaned();
            cTShape3D = (CTShape3D) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTShape3D == null) {
                cTShape3D = null;
            }
        }
        return cTShape3D;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTTextProps
    public boolean isSetFlatTx() {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTTextProps
    public boolean isSetSp3D() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTTextProps
    public void setFlatTx(CTFlatText cTFlatText) {
        generatedSetterHelperImpl(cTFlatText, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTTextProps
    public void setSp3D(CTShape3D cTShape3D) {
        generatedSetterHelperImpl(cTShape3D, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTTextProps
    public void unsetFlatTx() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.diagram.CTTextProps
    public void unsetSp3D() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }
}
