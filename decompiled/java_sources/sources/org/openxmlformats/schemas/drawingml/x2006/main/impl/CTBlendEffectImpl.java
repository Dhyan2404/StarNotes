package org.openxmlformats.schemas.drawingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SimpleValue;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTBlendEffect;
import org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer;
import org.openxmlformats.schemas.drawingml.x2006.main.STBlendMode;

/* loaded from: classes14.dex */
public class CTBlendEffectImpl extends XmlComplexContentImpl implements CTBlendEffect {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_DRAWINGML, "cont"), new QName("", "blend")};
    private static final long serialVersionUID = 1;

    public CTBlendEffectImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlendEffect
    public CTEffectContainer addNewCont() {
        CTEffectContainer cTEffectContainer;
        synchronized (monitor()) {
            check_orphaned();
            cTEffectContainer = (CTEffectContainer) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTEffectContainer;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlendEffect
    public STBlendMode.Enum getBlend() {
        STBlendMode.Enum r3;
        synchronized (monitor()) {
            check_orphaned();
            SimpleValue simpleValue = (SimpleValue) get_store().find_attribute_user(PROPERTY_QNAME[1]);
            r3 = simpleValue == null ? null : (STBlendMode.Enum) simpleValue.getEnumValue();
        }
        return r3;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlendEffect
    public CTEffectContainer getCont() {
        CTEffectContainer cTEffectContainer;
        synchronized (monitor()) {
            check_orphaned();
            cTEffectContainer = (CTEffectContainer) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTEffectContainer == null) {
                cTEffectContainer = null;
            }
        }
        return cTEffectContainer;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlendEffect
    public void setBlend(STBlendMode.Enum r6) {
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlendEffect
    public void setCont(CTEffectContainer cTEffectContainer) {
        generatedSetterHelperImpl(cTEffectContainer, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlendEffect
    public STBlendMode xgetBlend() {
        STBlendMode sTBlendMode;
        synchronized (monitor()) {
            check_orphaned();
            sTBlendMode = (STBlendMode) get_store().find_attribute_user(PROPERTY_QNAME[1]);
        }
        return sTBlendMode;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTBlendEffect
    public void xsetBlend(STBlendMode sTBlendMode) {
        synchronized (monitor()) {
            check_orphaned();
            TypeStore typeStore = get_store();
            QName[] qNameArr = PROPERTY_QNAME;
            STBlendMode sTBlendMode2 = (STBlendMode) typeStore.find_attribute_user(qNameArr[1]);
            if (sTBlendMode2 == null) {
                sTBlendMode2 = (STBlendMode) get_store().add_attribute_user(qNameArr[1]);
            }
            sTBlendMode2.set(sTBlendMode);
        }
    }
}
