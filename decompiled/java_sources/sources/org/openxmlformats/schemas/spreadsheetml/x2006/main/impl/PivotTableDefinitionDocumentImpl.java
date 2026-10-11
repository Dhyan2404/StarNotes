package org.openxmlformats.schemas.spreadsheetml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotTableDefinition;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.PivotTableDefinitionDocument;

/* loaded from: classes15.dex */
public class PivotTableDefinitionDocumentImpl extends XmlComplexContentImpl implements PivotTableDefinitionDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "pivotTableDefinition")};
    private static final long serialVersionUID = 1;

    public PivotTableDefinitionDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.PivotTableDefinitionDocument
    public CTPivotTableDefinition addNewPivotTableDefinition() {
        CTPivotTableDefinition cTPivotTableDefinition;
        synchronized (monitor()) {
            check_orphaned();
            cTPivotTableDefinition = (CTPivotTableDefinition) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTPivotTableDefinition;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.PivotTableDefinitionDocument
    public CTPivotTableDefinition getPivotTableDefinition() {
        CTPivotTableDefinition cTPivotTableDefinition;
        synchronized (monitor()) {
            check_orphaned();
            cTPivotTableDefinition = (CTPivotTableDefinition) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTPivotTableDefinition == null) {
                cTPivotTableDefinition = null;
            }
        }
        return cTPivotTableDefinition;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.PivotTableDefinitionDocument
    public void setPivotTableDefinition(CTPivotTableDefinition cTPivotTableDefinition) {
        generatedSetterHelperImpl(cTPivotTableDefinition, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
