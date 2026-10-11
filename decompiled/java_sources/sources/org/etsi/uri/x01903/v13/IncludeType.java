package org.etsi.uri.x01903.v13;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlAnyURI;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes13.dex */
public interface IncludeType extends XmlObject {
    public static final DocumentFactory<IncludeType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<IncludeType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "includetypee104type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    boolean getReferencedData();

    String getURI();

    boolean isSetReferencedData();

    void setReferencedData(boolean z);

    void setURI(String str);

    void unsetReferencedData();

    XmlBoolean xgetReferencedData();

    XmlAnyURI xgetURI();

    void xsetReferencedData(XmlBoolean xmlBoolean);

    void xsetURI(XmlAnyURI xmlAnyURI);
}
