package com.microsoft.schemas.vml.impl;

import com.microsoft.schemas.vml.CTPath;
import com.microsoft.schemas.vml.PathDocument;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class PathDocumentImpl extends XmlComplexContentImpl implements PathDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("urn:schemas-microsoft-com:vml", "path")};
    private static final long serialVersionUID = 1;

    public PathDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.vml.PathDocument
    public CTPath addNewPath() {
        CTPath cTPath;
        synchronized (monitor()) {
            check_orphaned();
            cTPath = (CTPath) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return cTPath;
    }

    @Override // com.microsoft.schemas.vml.PathDocument
    public CTPath getPath() {
        CTPath cTPath;
        synchronized (monitor()) {
            check_orphaned();
            cTPath = (CTPath) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (cTPath == null) {
                cTPath = null;
            }
        }
        return cTPath;
    }

    @Override // com.microsoft.schemas.vml.PathDocument
    public void setPath(CTPath cTPath) {
        generatedSetterHelperImpl(cTPath, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
