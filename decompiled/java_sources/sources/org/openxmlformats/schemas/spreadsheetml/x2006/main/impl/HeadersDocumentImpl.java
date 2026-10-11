package org.openxmlformats.schemas.spreadsheetml.x2006.main.impl;

import com.couchbase.lite.internal.core.C4Replicator;
import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTRevisionHeaders;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.HeadersDocument;

/* loaded from: classes15.dex */
public class HeadersDocumentImpl extends XmlComplexContentImpl implements HeadersDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, C4Replicator.REPLICATOR_OPTION_EXTRA_HEADERS)};
    private static final long serialVersionUID = 1;

    public HeadersDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.HeadersDocument
    public CTRevisionHeaders addNewHeaders() {
        CTRevisionHeaders cTRevisionHeaders;
        synchronized (monitor()) {
            check_orphaned();
            cTRevisionHeaders = (CTRevisionHeaders) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTRevisionHeaders;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.HeadersDocument
    public CTRevisionHeaders getHeaders() {
        CTRevisionHeaders cTRevisionHeaders;
        synchronized (monitor()) {
            check_orphaned();
            cTRevisionHeaders = (CTRevisionHeaders) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTRevisionHeaders == null) {
                cTRevisionHeaders = null;
            }
        }
        return cTRevisionHeaders;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.HeadersDocument
    public void setHeaders(CTRevisionHeaders cTRevisionHeaders) {
        generatedSetterHelperImpl(cTRevisionHeaders, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
