package org.openxmlformats.schemas.presentationml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.presentationml.x2006.main.CTSlideSyncProperties;
import org.openxmlformats.schemas.presentationml.x2006.main.SldSyncPrDocument;

/* loaded from: classes14.dex */
public class SldSyncPrDocumentImpl extends XmlComplexContentImpl implements SldSyncPrDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_PRESENTATIONML, "sldSyncPr")};
    private static final long serialVersionUID = 1;

    public SldSyncPrDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.SldSyncPrDocument
    public CTSlideSyncProperties addNewSldSyncPr() {
        CTSlideSyncProperties cTSlideSyncProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTSlideSyncProperties = (CTSlideSyncProperties) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTSlideSyncProperties;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.SldSyncPrDocument
    public CTSlideSyncProperties getSldSyncPr() {
        CTSlideSyncProperties cTSlideSyncProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTSlideSyncProperties = (CTSlideSyncProperties) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTSlideSyncProperties == null) {
                cTSlideSyncProperties = null;
            }
        }
        return cTSlideSyncProperties;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.SldSyncPrDocument
    public void setSldSyncPr(CTSlideSyncProperties cTSlideSyncProperties) {
        generatedSetterHelperImpl(cTSlideSyncProperties, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
