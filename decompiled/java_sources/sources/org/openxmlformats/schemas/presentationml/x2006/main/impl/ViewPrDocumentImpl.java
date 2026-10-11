package org.openxmlformats.schemas.presentationml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.presentationml.x2006.main.CTViewProperties;
import org.openxmlformats.schemas.presentationml.x2006.main.ViewPrDocument;

/* loaded from: classes14.dex */
public class ViewPrDocumentImpl extends XmlComplexContentImpl implements ViewPrDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_PRESENTATIONML, "viewPr")};
    private static final long serialVersionUID = 1;

    public ViewPrDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.ViewPrDocument
    public CTViewProperties addNewViewPr() {
        CTViewProperties cTViewProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTViewProperties = (CTViewProperties) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTViewProperties;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.ViewPrDocument
    public CTViewProperties getViewPr() {
        CTViewProperties cTViewProperties;
        synchronized (monitor()) {
            check_orphaned();
            cTViewProperties = (CTViewProperties) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTViewProperties == null) {
                cTViewProperties = null;
            }
        }
        return cTViewProperties;
    }

    @Override // org.openxmlformats.schemas.presentationml.x2006.main.ViewPrDocument
    public void setViewPr(CTViewProperties cTViewProperties) {
        generatedSetterHelperImpl(cTViewProperties, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
