package org.etsi.uri.x01903.v13;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlAnyURI;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes13.dex */
public interface SPURIDocument extends XmlObject {
    public static final DocumentFactory<SPURIDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<SPURIDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "spuri84e1doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getSPURI();

    void setSPURI(String str);

    XmlAnyURI xgetSPURI();

    void xsetSPURI(XmlAnyURI xmlAnyURI);
}
