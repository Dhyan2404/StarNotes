package org.openxmlformats.schemas.spreadsheetml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTMetadata;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.MetadataDocument;

/* loaded from: classes15.dex */
public class MetadataDocumentImpl extends XmlComplexContentImpl implements MetadataDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "metadata")};
    private static final long serialVersionUID = 1;

    public MetadataDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.MetadataDocument
    public CTMetadata addNewMetadata() {
        CTMetadata cTMetadata;
        synchronized (monitor()) {
            check_orphaned();
            cTMetadata = (CTMetadata) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTMetadata;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.MetadataDocument
    public CTMetadata getMetadata() {
        CTMetadata cTMetadata;
        synchronized (monitor()) {
            check_orphaned();
            cTMetadata = (CTMetadata) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTMetadata == null) {
                cTMetadata = null;
            }
        }
        return cTMetadata;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.MetadataDocument
    public void setMetadata(CTMetadata cTMetadata) {
        generatedSetterHelperImpl(cTMetadata, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
