package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTSettings;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.SettingsDocument;

/* loaded from: classes16.dex */
public class SettingsDocumentImpl extends XmlComplexContentImpl implements SettingsDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "settings")};
    private static final long serialVersionUID = 1;

    public SettingsDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.SettingsDocument
    public CTSettings addNewSettings() {
        CTSettings cTSettings;
        synchronized (monitor()) {
            check_orphaned();
            cTSettings = (CTSettings) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTSettings;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.SettingsDocument
    public CTSettings getSettings() {
        CTSettings cTSettings;
        synchronized (monitor()) {
            check_orphaned();
            cTSettings = (CTSettings) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTSettings == null) {
                cTSettings = null;
            }
        }
        return cTSettings;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.SettingsDocument
    public void setSettings(CTSettings cTSettings) {
        generatedSetterHelperImpl(cTSettings, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
