package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTWebSettings;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.WebSettingsDocument;

/* loaded from: classes16.dex */
public class WebSettingsDocumentImpl extends XmlComplexContentImpl implements WebSettingsDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, "webSettings")};
    private static final long serialVersionUID = 1;

    public WebSettingsDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.WebSettingsDocument
    public CTWebSettings addNewWebSettings() {
        CTWebSettings cTWebSettings;
        synchronized (monitor()) {
            check_orphaned();
            cTWebSettings = (CTWebSettings) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTWebSettings;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.WebSettingsDocument
    public CTWebSettings getWebSettings() {
        CTWebSettings cTWebSettings;
        synchronized (monitor()) {
            check_orphaned();
            cTWebSettings = (CTWebSettings) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTWebSettings == null) {
                cTWebSettings = null;
            }
        }
        return cTWebSettings;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.WebSettingsDocument
    public void setWebSettings(CTWebSettings cTWebSettings) {
        generatedSetterHelperImpl(cTWebSettings, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
