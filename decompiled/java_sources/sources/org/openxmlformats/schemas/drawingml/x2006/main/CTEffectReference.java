package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTEffectReference extends XmlObject {
    public static final DocumentFactory<CTEffectReference> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTEffectReference> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cteffectreferencee56btype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getRef();

    void setRef(String str);

    XmlToken xgetRef();

    void xsetRef(XmlToken xmlToken);
}
