package com.microsoft.schemas.office.office.impl;

import com.microsoft.schemas.office.office.CTStrokeChild;
import com.microsoft.schemas.office.office.TopDocument;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class TopDocumentImpl extends XmlComplexContentImpl implements TopDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("urn:schemas-microsoft-com:office:office", OneDriverConstants.TOP)};
    private static final long serialVersionUID = 1;

    public TopDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.office.TopDocument
    public CTStrokeChild addNewTop() {
        CTStrokeChild cTStrokeChild;
        synchronized (monitor()) {
            check_orphaned();
            cTStrokeChild = (CTStrokeChild) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTStrokeChild;
    }

    @Override // com.microsoft.schemas.office.office.TopDocument
    public CTStrokeChild getTop() {
        CTStrokeChild cTStrokeChild;
        synchronized (monitor()) {
            check_orphaned();
            cTStrokeChild = (CTStrokeChild) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTStrokeChild == null) {
                cTStrokeChild = null;
            }
        }
        return cTStrokeChild;
    }

    @Override // com.microsoft.schemas.office.office.TopDocument
    public void setTop(CTStrokeChild cTStrokeChild) {
        generatedSetterHelperImpl(cTStrokeChild, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
