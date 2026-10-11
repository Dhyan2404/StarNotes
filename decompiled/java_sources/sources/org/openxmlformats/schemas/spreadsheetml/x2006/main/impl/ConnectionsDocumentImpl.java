package org.openxmlformats.schemas.spreadsheetml.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.poi.xssf.usermodel.XSSFRelation;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTConnections;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.ConnectionsDocument;

/* loaded from: classes15.dex */
public class ConnectionsDocumentImpl extends XmlComplexContentImpl implements ConnectionsDocument {
    private static final QName[] PROPERTY_QNAME = {new QName(XSSFRelation.NS_SPREADSHEETML, "connections")};
    private static final long serialVersionUID = 1;

    public ConnectionsDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.ConnectionsDocument
    public CTConnections addNewConnections() {
        CTConnections cTConnections;
        synchronized (monitor()) {
            check_orphaned();
            cTConnections = (CTConnections) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTConnections;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.ConnectionsDocument
    public CTConnections getConnections() {
        CTConnections cTConnections;
        synchronized (monitor()) {
            check_orphaned();
            cTConnections = (CTConnections) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTConnections == null) {
                cTConnections = null;
            }
        }
        return cTConnections;
    }

    @Override // org.openxmlformats.schemas.spreadsheetml.x2006.main.ConnectionsDocument
    public void setConnections(CTConnections cTConnections) {
        generatedSetterHelperImpl(cTConnections, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
