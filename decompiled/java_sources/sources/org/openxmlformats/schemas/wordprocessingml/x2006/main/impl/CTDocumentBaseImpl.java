package org.openxmlformats.schemas.wordprocessingml.x2006.main.impl;

import androidx.core.app.NotificationCompat;
import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTBackground;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocumentBase;

/* loaded from: classes16.dex */
public class CTDocumentBaseImpl extends XmlComplexContentImpl implements CTDocumentBase {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_WORDPROCESSINGML, NotificationCompat.WearableExtender.f5054t)};
    private static final long serialVersionUID = 1;

    public CTDocumentBaseImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocumentBase
    public CTBackground addNewBackground() {
        CTBackground cTBackground;
        synchronized (monitor()) {
            check_orphaned();
            cTBackground = (CTBackground) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTBackground;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocumentBase
    public CTBackground getBackground() {
        CTBackground cTBackground;
        synchronized (monitor()) {
            check_orphaned();
            cTBackground = (CTBackground) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTBackground == null) {
                cTBackground = null;
            }
        }
        return cTBackground;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocumentBase
    public boolean isSetBackground() {
        boolean z;
        synchronized (monitor()) {
            check_orphaned();
            z = get_store().count_elements(PROPERTY_QNAME[0]) != 0;
        }
        return z;
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocumentBase
    public void setBackground(CTBackground cTBackground) {
        generatedSetterHelperImpl(cTBackground, PROPERTY_QNAME[0], 0, (short) 1);
    }

    @Override // org.openxmlformats.schemas.wordprocessingml.x2006.main.CTDocumentBase
    public void unsetBackground() {
        synchronized (monitor()) {
            check_orphaned();
            get_store().remove_element(PROPERTY_QNAME[0], 0);
        }
    }
}
