package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STTwipsMeasure;

/* loaded from: classes16.dex */
public interface CTTwipsMeasure extends XmlObject {
    public static final DocumentFactory<CTTwipsMeasure> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTwipsMeasure> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttwipsmeasure4833type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    Object getVal();

    void setVal(Object obj);

    STTwipsMeasure xgetVal();

    void xsetVal(STTwipsMeasure sTTwipsMeasure);
}
