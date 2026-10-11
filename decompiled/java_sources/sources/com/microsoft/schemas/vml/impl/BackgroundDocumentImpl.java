package com.microsoft.schemas.vml.impl;

import androidx.core.app.NotificationCompat;
import com.microsoft.schemas.vml.BackgroundDocument;
import com.microsoft.schemas.vml.CTBackground;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class BackgroundDocumentImpl extends XmlComplexContentImpl implements BackgroundDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("urn:schemas-microsoft-com:vml", NotificationCompat.WearableExtender.f5054t)};
    private static final long serialVersionUID = 1;

    public BackgroundDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.vml.BackgroundDocument
    public CTBackground addNewBackground() {
        CTBackground cTBackground;
        synchronized (monitor()) {
            check_orphaned();
            cTBackground = (CTBackground) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTBackground;
    }

    @Override // com.microsoft.schemas.vml.BackgroundDocument
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

    @Override // com.microsoft.schemas.vml.BackgroundDocument
    public void setBackground(CTBackground cTBackground) {
        generatedSetterHelperImpl(cTBackground, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
