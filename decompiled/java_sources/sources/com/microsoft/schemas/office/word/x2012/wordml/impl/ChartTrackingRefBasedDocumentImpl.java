package com.microsoft.schemas.office.word.x2012.wordml.impl;

import com.microsoft.schemas.office.word.x2012.wordml.ChartTrackingRefBasedDocument;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTOnOff;

/* loaded from: classes7.dex */
public class ChartTrackingRefBasedDocumentImpl extends XmlComplexContentImpl implements ChartTrackingRefBasedDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.microsoft.com/office/word/2012/wordml", "chartTrackingRefBased")};
    private static final long serialVersionUID = 1;

    public ChartTrackingRefBasedDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.ChartTrackingRefBasedDocument
    public CTOnOff addNewChartTrackingRefBased() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTOnOff;
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.ChartTrackingRefBasedDocument
    public CTOnOff getChartTrackingRefBased() {
        CTOnOff cTOnOff;
        synchronized (monitor()) {
            check_orphaned();
            cTOnOff = (CTOnOff) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTOnOff == null) {
                cTOnOff = null;
            }
        }
        return cTOnOff;
    }

    @Override // com.microsoft.schemas.office.word.x2012.wordml.ChartTrackingRefBasedDocument
    public void setChartTrackingRefBased(CTOnOff cTOnOff) {
        generatedSetterHelperImpl(cTOnOff, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
