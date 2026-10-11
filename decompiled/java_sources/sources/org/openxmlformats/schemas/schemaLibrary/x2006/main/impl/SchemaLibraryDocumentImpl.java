package org.openxmlformats.schemas.schemaLibrary.x2006.main.impl;

import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;
import org.openxmlformats.schemas.schemaLibrary.x2006.main.CTSchemaLibrary;
import org.openxmlformats.schemas.schemaLibrary.x2006.main.SchemaLibraryDocument;

/* loaded from: classes14.dex */
public class SchemaLibraryDocumentImpl extends XmlComplexContentImpl implements SchemaLibraryDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.openxmlformats.org/schemaLibrary/2006/main", "schemaLibrary")};
    private static final long serialVersionUID = 1;

    public SchemaLibraryDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // org.openxmlformats.schemas.schemaLibrary.x2006.main.SchemaLibraryDocument
    public CTSchemaLibrary addNewSchemaLibrary() {
        CTSchemaLibrary cTSchemaLibrary;
        synchronized (monitor()) {
            check_orphaned();
            cTSchemaLibrary = (CTSchemaLibrary) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTSchemaLibrary;
    }

    @Override // org.openxmlformats.schemas.schemaLibrary.x2006.main.SchemaLibraryDocument
    public CTSchemaLibrary getSchemaLibrary() {
        CTSchemaLibrary cTSchemaLibrary;
        synchronized (monitor()) {
            check_orphaned();
            cTSchemaLibrary = (CTSchemaLibrary) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTSchemaLibrary == null) {
                cTSchemaLibrary = null;
            }
        }
        return cTSchemaLibrary;
    }

    @Override // org.openxmlformats.schemas.schemaLibrary.x2006.main.SchemaLibraryDocument
    public void setSchemaLibrary(CTSchemaLibrary cTSchemaLibrary) {
        generatedSetterHelperImpl(cTSchemaLibrary, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
