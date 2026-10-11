package org.openxmlformats.schemas.officeDocument.x2006.docPropsVTypes;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface VstreamDocument extends XmlObject {
    public static final DocumentFactory<VstreamDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<VstreamDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "vstream24cddoctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTVstream addNewVstream();

    CTVstream getVstream();

    void setVstream(CTVstream cTVstream);
}
