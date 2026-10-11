package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTwipsMeasure;

/* loaded from: classes16.dex */
public interface CTTblGridCol extends XmlObject {
    public static final DocumentFactory<CTTblGridCol> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTblGridCol> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttblgridcolbfectype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    Object getW();

    boolean isSetW();

    void setW(Object obj);

    void unsetW();

    STTwipsMeasure xgetW();

    void xsetW(STTwipsMeasure sTTwipsMeasure);
}
