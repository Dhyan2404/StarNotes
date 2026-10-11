package com.microsoft.schemas.vml.impl;

import com.microsoft.schemas.vml.CTPolyLine;
import com.microsoft.schemas.vml.PolylineDocument;
import com.onyx.android.sdk.note.common.data.shape.UniversalShapeTypeConst;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class PolylineDocumentImpl extends XmlComplexContentImpl implements PolylineDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("urn:schemas-microsoft-com:vml", UniversalShapeTypeConst.POLYLINE)};
    private static final long serialVersionUID = 1;

    public PolylineDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.vml.PolylineDocument
    public CTPolyLine addNewPolyline() {
        CTPolyLine cTPolyLine;
        synchronized (monitor()) {
            check_orphaned();
            cTPolyLine = (CTPolyLine) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTPolyLine;
    }

    @Override // com.microsoft.schemas.vml.PolylineDocument
    public CTPolyLine getPolyline() {
        CTPolyLine cTPolyLine;
        synchronized (monitor()) {
            check_orphaned();
            cTPolyLine = (CTPolyLine) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTPolyLine == null) {
                cTPolyLine = null;
            }
        }
        return cTPolyLine;
    }

    @Override // com.microsoft.schemas.vml.PolylineDocument
    public void setPolyline(CTPolyLine cTPolyLine) {
        generatedSetterHelperImpl(cTPolyLine, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
