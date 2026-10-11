package com.microsoft.schemas.office.visio.x2012.main.impl;

import com.microsoft.schemas.office.visio.x2012.main.ExtensionsDocument;
import com.microsoft.schemas.office.visio.x2012.main.ExtensionsType;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.values.XmlComplexContentImpl;

/* loaded from: classes7.dex */
public class ExtensionsDocumentImpl extends XmlComplexContentImpl implements ExtensionsDocument {
    private static final QName[] PROPERTY_QNAME = {new QName("http://schemas.microsoft.com/office/visio/2012/main", "Extensions")};
    private static final long serialVersionUID = 1;

    public ExtensionsDocumentImpl(SchemaType schemaType) {
        super(schemaType);
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.ExtensionsDocument
    public ExtensionsType addNewExtensions() {
        ExtensionsType extensionsType;
        synchronized (monitor()) {
            check_orphaned();
            extensionsType = (ExtensionsType) get_store().add_element_user(PROPERTY_QNAME[0]);
        }
        return extensionsType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.ExtensionsDocument
    public ExtensionsType getExtensions() {
        ExtensionsType extensionsType;
        synchronized (monitor()) {
            check_orphaned();
            extensionsType = (ExtensionsType) get_store().find_element_user(PROPERTY_QNAME[0], 0);
            if (extensionsType == null) {
                extensionsType = null;
            }
        }
        return extensionsType;
    }

    @Override // com.microsoft.schemas.office.visio.x2012.main.ExtensionsDocument
    public void setExtensions(ExtensionsType extensionsType) {
        generatedSetterHelperImpl(extensionsType, PROPERTY_QNAME[0], 0, (short) 1);
    }
}
