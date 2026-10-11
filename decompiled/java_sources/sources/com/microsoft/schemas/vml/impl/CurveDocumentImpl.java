package com.microsoft.schemas.vml.impl;

import com.microsoft.schemas.vml.CTCurve;
import com.microsoft.schemas.vml.CurveDocument;
import com.onyx.android.sdk.note.common.data.shape.UniversalShapeTypeConst;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class CurveDocumentImpl extends XmlComplexContentImpl implements CurveDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("urn:schemas-microsoft-com:vml", UniversalShapeTypeConst.CURVE)};
    private static final long serialVersionUID = 1;

    public CurveDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.vml.CurveDocument
    public CTCurve addNewCurve() {
        CTCurve cTCurve;
        synchronized (monitor()) {
            check_orphaned();
            cTCurve = (CTCurve) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTCurve;
    }

    @Override // com.microsoft.schemas.vml.CurveDocument
    public CTCurve getCurve() {
        CTCurve cTCurve;
        synchronized (monitor()) {
            check_orphaned();
            cTCurve = (CTCurve) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTCurve == null) {
                cTCurve = null;
            }
        }
        return cTCurve;
    }

    @Override // com.microsoft.schemas.vml.CurveDocument
    public void setCurve(CTCurve cTCurve) {
        generatedSetterHelperImpl(cTCurve, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
