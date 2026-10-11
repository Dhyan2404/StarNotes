package org.openxmlformats.schemas.drawingml.x2006.main.impl;

import com.couchbase.lite.internal.core.C4Replicator;
import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.drawingml.x2006.main.BlipDocument;
import org.openxmlformats.schemas.drawingml.x2006.main.CTBlip;

/* loaded from: classes14.dex */
public class BlipDocumentImpl extends XmlComplexContentImpl implements BlipDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_DRAWINGML, C4Replicator.C4_REPLICATOR_SCHEME_2)};
    private static final long serialVersionUID = 1;

    public BlipDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.BlipDocument
    public CTBlip addNewBlip() {
        CTBlip cTBlip;
        synchronized (monitor()) {
            check_orphaned();
            cTBlip = (CTBlip) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTBlip;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.BlipDocument
    public CTBlip getBlip() {
        CTBlip cTBlip;
        synchronized (monitor()) {
            check_orphaned();
            cTBlip = (CTBlip) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTBlip == null) {
                cTBlip = null;
            }
        }
        return cTBlip;
    }

    @Override // org.openxmlformats.schemas.drawingml.x2006.main.BlipDocument
    public void setBlip(CTBlip cTBlip) {
        generatedSetterHelperImpl(cTBlip, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
