package org.etsi.uri.x01903.v13;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlAnyURI;
import org.apache.xmlbeans.XmlID;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes13.dex */
public interface QualifyingPropertiesReferenceType extends XmlObject {
    public static final DocumentFactory<QualifyingPropertiesReferenceType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<QualifyingPropertiesReferenceType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "qualifyingpropertiesreferencetypee07ftype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getId();

    String getURI();

    boolean isSetId();

    void setId(String str);

    void setURI(String str);

    void unsetId();

    XmlID xgetId();

    XmlAnyURI xgetURI();

    void xsetId(XmlID xmlID);

    void xsetURI(XmlAnyURI xmlAnyURI);
}
