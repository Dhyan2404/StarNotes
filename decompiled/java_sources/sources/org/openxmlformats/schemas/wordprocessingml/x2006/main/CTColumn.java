package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTwipsMeasure;

/* loaded from: classes16.dex */
public interface CTColumn extends XmlObject {
    public static final DocumentFactory<CTColumn> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTColumn> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctcolumn1f12type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    Object getSpace();

    Object getW();

    boolean isSetSpace();

    boolean isSetW();

    void setSpace(Object obj);

    void setW(Object obj);

    void unsetSpace();

    void unsetW();

    STTwipsMeasure xgetSpace();

    STTwipsMeasure xgetW();

    void xsetSpace(STTwipsMeasure sTTwipsMeasure);

    void xsetW(STTwipsMeasure sTTwipsMeasure);
}
