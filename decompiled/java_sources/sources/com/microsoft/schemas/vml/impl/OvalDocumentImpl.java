package com.microsoft.schemas.vml.impl;

import com.microsoft.schemas.vml.CTOval;
import com.microsoft.schemas.vml.OvalDocument;
import com.onyx.android.sdk.note.common.data.shape.UniversalShapeTypeConst;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class OvalDocumentImpl extends XmlComplexContentImpl implements OvalDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("urn:schemas-microsoft-com:vml", UniversalShapeTypeConst.OVAL)};
    private static final long serialVersionUID = 1;

    public OvalDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.vml.OvalDocument
    public CTOval addNewOval() {
        CTOval cTOval;
        synchronized (monitor()) {
            check_orphaned();
            cTOval = (CTOval) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTOval;
    }

    @Override // com.microsoft.schemas.vml.OvalDocument
    public CTOval getOval() {
        CTOval cTOval;
        synchronized (monitor()) {
            check_orphaned();
            cTOval = (CTOval) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTOval == null) {
                cTOval = null;
            }
        }
        return cTOval;
    }

    @Override // com.microsoft.schemas.vml.OvalDocument
    public void setOval(CTOval cTOval) {
        generatedSetterHelperImpl(cTOval, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
