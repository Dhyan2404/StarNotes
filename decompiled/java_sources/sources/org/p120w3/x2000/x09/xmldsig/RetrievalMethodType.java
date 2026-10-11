package org.p120w3.x2000.x09.xmldsig;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlAnyURI;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface RetrievalMethodType extends XmlObject {
    public static final DocumentFactory<RetrievalMethodType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<RetrievalMethodType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "retrievalmethodtype2862type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    TransformsType addNewTransforms();

    TransformsType getTransforms();

    String getType();

    String getURI();

    boolean isSetTransforms();

    boolean isSetType();

    boolean isSetURI();

    void setTransforms(TransformsType transformsType);

    void setType(String str);

    void setURI(String str);

    void unsetTransforms();

    void unsetType();

    void unsetURI();

    XmlAnyURI xgetType();

    XmlAnyURI xgetURI();

    void xsetType(XmlAnyURI xmlAnyURI);

    void xsetURI(XmlAnyURI xmlAnyURI);
}
