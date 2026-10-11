package org.openxmlformats.schemas.presentationml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.presentationml.x2006.main.CTPresentationProperties;
import org.openxmlformats.schemas.presentationml.x2006.main.PresentationPrDocument;

/* loaded from: classes14.dex */
public class PresentationPrDocumentImpl extends XmlComplexContentImpl implements PresentationPrDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_PRESENTATIONML, "presentationPr")};
    private static final long serialVersionUID = 1;

    public PresentationPrDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.PresentationPrDocument
    public CTPresentationProperties addNewPresentationPr() {
        CTPresentationProperties cTPresentationProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTPresentationProperties = (CTPresentationProperties) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTPresentationProperties;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.PresentationPrDocument
    public CTPresentationProperties getPresentationPr() {
        CTPresentationProperties cTPresentationProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTPresentationProperties = (CTPresentationProperties) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTPresentationProperties == null) {
                cTPresentationProperties = null;
            }
        }
        return cTPresentationProperties;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.PresentationPrDocument
    public void setPresentationPr(CTPresentationProperties cTPresentationProperties) {
        generatedSetterHelperImpl(cTPresentationProperties, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
