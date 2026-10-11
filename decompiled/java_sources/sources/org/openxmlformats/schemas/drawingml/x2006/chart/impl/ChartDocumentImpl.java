package org.openxmlformats.schemas.drawingml.x2006.chart.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.chart.CTRelId;
import org.openxmlformats.schemas.drawingml.x2006.chart.ChartDocument;

/* loaded from: classes14.dex */
public class ChartDocumentImpl extends XmlComplexContentImpl implements ChartDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_CHART, "chart")};
    private static final long serialVersionUID = 1;

    public ChartDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.ChartDocument
    public CTRelId addNewChart() {
        CTRelId cTRelId;
        synchronized (monitor()) {
            check_orphaned();
            cTRelId = (CTRelId) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTRelId;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.ChartDocument
    public CTRelId getChart() {
        CTRelId cTRelId;
        synchronized (monitor()) {
            check_orphaned();
            cTRelId = (CTRelId) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTRelId == null) {
                cTRelId = null;
            }
        }
        return cTRelId;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.chart.ChartDocument
    public void setChart(CTRelId cTRelId) {
        generatedSetterHelperImpl(cTRelId, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
