package org.openxmlformats.schemas.spreadsheetml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotCacheDefinition;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.PivotCacheDefinitionDocument;

/* loaded from: classes15.dex */
public class PivotCacheDefinitionDocumentImpl extends XmlComplexContentImpl implements PivotCacheDefinitionDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "pivotCacheDefinition")};
    private static final long serialVersionUID = 1;

    public PivotCacheDefinitionDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.PivotCacheDefinitionDocument
    public CTPivotCacheDefinition addNewPivotCacheDefinition() {
        CTPivotCacheDefinition cTPivotCacheDefinition;
        synchronized (monitor()) {
            check_orphaned();
            cTPivotCacheDefinition = (CTPivotCacheDefinition) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTPivotCacheDefinition;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.PivotCacheDefinitionDocument
    public CTPivotCacheDefinition getPivotCacheDefinition() {
        CTPivotCacheDefinition cTPivotCacheDefinition;
        synchronized (monitor()) {
            check_orphaned();
            cTPivotCacheDefinition = (CTPivotCacheDefinition) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTPivotCacheDefinition == null) {
                cTPivotCacheDefinition = null;
            }
        }
        return cTPivotCacheDefinition;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.PivotCacheDefinitionDocument
    public void setPivotCacheDefinition(CTPivotCacheDefinition cTPivotCacheDefinition) {
        generatedSetterHelperImpl(cTPivotCacheDefinition, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
