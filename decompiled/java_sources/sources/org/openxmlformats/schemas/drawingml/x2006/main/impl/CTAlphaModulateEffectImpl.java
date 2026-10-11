package org.openxmlformats.schemas.drawingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.CTAlphaModulateEffect;
import org.openxmlformats.schemas.drawingml.x2006.main.CTEffectContainer;

/* loaded from: classes14.dex */
public class CTAlphaModulateEffectImpl extends XmlComplexContentImpl implements CTAlphaModulateEffect {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_DRAWINGML, "cont")};
    private static final long serialVersionUID = 1;

    public CTAlphaModulateEffectImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAlphaModulateEffect
    public CTEffectContainer addNewCont() {
        CTEffectContainer cTEffectContainer;
        synchronized (monitor()) {
            check_orphaned();
            cTEffectContainer = (CTEffectContainer) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTEffectContainer;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAlphaModulateEffect
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

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.CTAlphaModulateEffect
    public void setCont(CTEffectContainer cTEffectContainer) {
        generatedSetterHelperImpl(cTEffectContainer, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
