package org.openxmlformats.schemas.spreadsheetml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotCacheRecords;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.PivotCacheRecordsDocument;

/* loaded from: classes15.dex */
public class PivotCacheRecordsDocumentImpl extends XmlComplexContentImpl implements PivotCacheRecordsDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "pivotCacheRecords")};
    private static final long serialVersionUID = 1;

    public PivotCacheRecordsDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.PivotCacheRecordsDocument
    public CTPivotCacheRecords addNewPivotCacheRecords() {
        CTPivotCacheRecords cTPivotCacheRecords;
        synchronized (monitor()) {
            check_orphaned();
            cTPivotCacheRecords = (CTPivotCacheRecords) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTPivotCacheRecords;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.PivotCacheRecordsDocument
    public CTPivotCacheRecords getPivotCacheRecords() {
        CTPivotCacheRecords cTPivotCacheRecords;
        synchronized (monitor()) {
            check_orphaned();
            cTPivotCacheRecords = (CTPivotCacheRecords) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTPivotCacheRecords == null) {
                cTPivotCacheRecords = null;
            }
        }
        return cTPivotCacheRecords;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.PivotCacheRecordsDocument
    public void setPivotCacheRecords(CTPivotCacheRecords cTPivotCacheRecords) {
        generatedSetterHelperImpl(cTPivotCacheRecords, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
