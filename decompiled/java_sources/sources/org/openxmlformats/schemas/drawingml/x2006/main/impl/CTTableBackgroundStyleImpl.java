package org.openxmlformats.schemas.drawingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTEffectProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTFillProperties;
import org.openxmlformats.schemas.drawingml.x2006.main.CTStyleMatrixReference;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTableBackgroundStyle;

/* loaded from: classes14.dex */
public class CTTableBackgroundStyleImpl extends XmlComplexContentImpl implements CTTableBackgroundStyle {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_DRAWINGML, "fill"), new QName(XSSFRelation.NS_DRAWINGML, "fillRef"), new QName(XSSFRelation.NS_DRAWINGML, "effect"), new QName(XSSFRelation.NS_DRAWINGML, "effectRef")};
    private static final long serialVersionUID = 1;

    public CTTableBackgroundStyleImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTableBackgroundStyle
    public CTEffectProperties addNewEffect() {
        CTEffectProperties cTEffectProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTEffectProperties = (CTEffectProperties) get_store().add_element_user(PROPERTY_QNAME[2]);
        }
        return cTEffectProperties;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTableBackgroundStyle
    public CTStyleMatrixReference addNewEffectRef() {
        CTStyleMatrixReference cTStyleMatrixReference;
        synchronized (monitor()) {
            check_orphaned();
            cTStyleMatrixReference = (CTStyleMatrixReference) get_store().add_element_user(PROPERTY_QNAME[3]);
        }
        return cTStyleMatrixReference;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTableBackgroundStyle
    public CTFillProperties addNewFill() {
        CTFillProperties cTFillProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTFillProperties = (CTFillProperties) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTFillProperties;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTableBackgroundStyle
    public CTStyleMatrixReference addNewFillRef() {
        CTStyleMatrixReference cTStyleMatrixReference;
        synchronized (monitor()) {
            check_orphaned();
            cTStyleMatrixReference = (CTStyleMatrixReference) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTStyleMatrixReference;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTableBackgroundStyle
    public CTEffectProperties getEffect() {
        CTEffectProperties cTEffectProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTEffectProperties = (CTEffectProperties) get_store().find_element_user(PROPERTY_QNAME[2], 0);
            if (cTEffectProperties == null) {
                cTEffectProperties = null;
            }
        }
        return cTEffectProperties;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTableBackgroundStyle
    public CTStyleMatrixReference getEffectRef() {
        CTStyleMatrixReference cTStyleMatrixReference;
        synchronized (monitor()) {
            check_orphaned();
            cTStyleMatrixReference = (CTStyleMatrixReference) get_store().find_element_user(PROPERTY_QNAME[3], 0);
            if (cTStyleMatrixReference == null) {
                cTStyleMatrixReference = null;
            }
        }
        return cTStyleMatrixReference;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTableBackgroundStyle
    public CTFillProperties getFill() {
        CTFillProperties cTFillProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTFillProperties = (CTFillProperties) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTFillProperties == null) {
                cTFillProperties = null;
            }
        }
        return cTFillProperties;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTableBackgroundStyle
    public CTStyleMatrixReference getFillRef() {
        CTStyleMatrixReference cTStyleMatrixReference;
        synchronized (monitor()) {
            check_orphaned();
            cTStyleMatrixReference = (CTStyleMatrixReference) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTStyleMatrixReference == null) {
                cTStyleMatrixReference = null;
            }
        }
        return cTStyleMatrixReference;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTableBackgroundStyle
    public boolean isSetEffect() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[2]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTableBackgroundStyle
    public boolean isSetEffectRef() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[3]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTableBackgroundStyle
    public boolean isSetFill() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTableBackgroundStyle
    public boolean isSetFillRef() {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTableBackgroundStyle
    public void setEffect(CTEffectProperties cTEffectProperties) {
        generatedSetterHelperImpl(cTEffectProperties, PROPERTY_QNAME[2], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTableBackgroundStyle
    public void setEffectRef(CTStyleMatrixReference cTStyleMatrixReference) {
        generatedSetterHelperImpl(cTStyleMatrixReference, PROPERTY_QNAME[3], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTableBackgroundStyle
    public void setFill(CTFillProperties cTFillProperties) {
        generatedSetterHelperImpl(cTFillProperties, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTableBackgroundStyle
    public void setFillRef(CTStyleMatrixReference cTStyleMatrixReference) {
        generatedSetterHelperImpl(cTStyleMatrixReference, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTableBackgroundStyle
    public void unsetEffect() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[2], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTableBackgroundStyle
    public void unsetEffectRef() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[3], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTableBackgroundStyle
    public void unsetFill() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTTableBackgroundStyle
    public void unsetFillRef() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }
}
