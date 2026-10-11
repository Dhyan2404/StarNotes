package org.openxmlformats.schemas.presentationml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.presentationml.x2006.main.CTEmpty;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTransitionSoundAction;
import org.openxmlformats.schemas.presentationml.x2006.main.CTTransitionStartSoundAction;

/* loaded from: classes14.dex */
public class CTTransitionSoundActionImpl extends XmlComplexContentImpl implements CTTransitionSoundAction {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_PRESENTATIONML, "stSnd"), new QName(XSSFRelation.NS_PRESENTATIONML, "endSnd")};
    private static final long serialVersionUID = 1;

    public CTTransitionSoundActionImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTransitionSoundAction
    public CTEmpty addNewEndSnd() {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().add_element_user(PROPERTY_QNAME[1]);
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTransitionSoundAction
    public CTTransitionStartSoundAction addNewStSnd() {
        CTTransitionStartSoundAction cTTransitionStartSoundAction;
        synchronized (monitor()) {
            check_orphaned();
            cTTransitionStartSoundAction = (CTTransitionStartSoundAction) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTTransitionStartSoundAction;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTransitionSoundAction
    public CTEmpty getEndSnd() {
        CTEmpty cTEmpty;
        synchronized (monitor()) {
            check_orphaned();
            cTEmpty = (CTEmpty) get_store().find_element_user(PROPERTY_QNAME[1], 0);
            if (cTEmpty == null) {
                cTEmpty = null;
            }
        }
        return cTEmpty;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTransitionSoundAction
    public CTTransitionStartSoundAction getStSnd() {
        CTTransitionStartSoundAction cTTransitionStartSoundAction;
        synchronized (monitor()) {
            check_orphaned();
            cTTransitionStartSoundAction = (CTTransitionStartSoundAction) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTTransitionStartSoundAction == null) {
                cTTransitionStartSoundAction = null;
            }
        }
        return cTTransitionStartSoundAction;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTransitionSoundAction
    public boolean isSetEndSnd() {
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

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTransitionSoundAction
    public boolean isSetStSnd() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTransitionSoundAction
    public void setEndSnd(CTEmpty cTEmpty) {
        generatedSetterHelperImpl(cTEmpty, PROPERTY_QNAME[1], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTransitionSoundAction
    public void setStSnd(CTTransitionStartSoundAction cTTransitionStartSoundAction) {
        generatedSetterHelperImpl(cTTransitionStartSoundAction, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTransitionSoundAction
    public void unsetEndSnd() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[1], 0);
        }
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.CTTransitionSoundAction
    public void unsetStSnd() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }
}
