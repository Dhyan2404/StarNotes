package org.etsi.uri.x01903.v13;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlAnyURI;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes13.dex */
public interface DocumentationReferencesType extends XmlObject {
    public static final DocumentFactory<DocumentationReferencesType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<DocumentationReferencesType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "documentationreferencestype4bbetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    void addDocumentationReference(String str);

    XmlAnyURI addNewDocumentationReference();

    String getDocumentationReferenceArray(int i);

    String[] getDocumentationReferenceArray();

    List<String> getDocumentationReferenceList();

    void insertDocumentationReference(int i, String str);

    XmlAnyURI insertNewDocumentationReference(int i);

    void removeDocumentationReference(int i);

    void setDocumentationReferenceArray(int i, String str);

    void setDocumentationReferenceArray(String[] strArr);

    int sizeOfDocumentationReferenceArray();

    XmlAnyURI xgetDocumentationReferenceArray(int i);

    XmlAnyURI[] xgetDocumentationReferenceArray();

    List<XmlAnyURI> xgetDocumentationReferenceList();

    void xsetDocumentationReferenceArray(int i, XmlAnyURI xmlAnyURI);

    void xsetDocumentationReferenceArray(XmlAnyURI[] xmlAnyURIArr);
}
