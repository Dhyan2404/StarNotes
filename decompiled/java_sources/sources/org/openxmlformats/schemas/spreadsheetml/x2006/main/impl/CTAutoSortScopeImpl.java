package org.openxmlformats.schemas.spreadsheetml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTAutoSortScope;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTPivotArea;

/* loaded from: classes15.dex */
public class CTAutoSortScopeImpl extends XmlComplexContentImpl implements CTAutoSortScope {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "pivotArea")};
    private static final long serialVersionUID = 1;

    public CTAutoSortScopeImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTAutoSortScope
    public CTPivotArea addNewPivotArea() {
        CTPivotArea cTPivotArea;
        synchronized (monitor()) {
            check_orphaned();
            cTPivotArea = (CTPivotArea) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTPivotArea;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTAutoSortScope
    public CTPivotArea getPivotArea() {
        CTPivotArea cTPivotArea;
        synchronized (monitor()) {
            check_orphaned();
            cTPivotArea = (CTPivotArea) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTPivotArea == null) {
                cTPivotArea = null;
            }
        }
        return cTPivotArea;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.CTAutoSortScope
    public void setPivotArea(CTPivotArea cTPivotArea) {
        generatedSetterHelperImpl(cTPivotArea, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
