package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface CTSignedHpsMeasure extends XmlObject {
    public static final DocumentFactory<CTSignedHpsMeasure> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTSignedHpsMeasure> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctsignedhpsmeasure3099type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    Object getVal();

    void setVal(Object obj);

    STSignedHpsMeasure xgetVal();

    void xsetVal(STSignedHpsMeasure sTSignedHpsMeasure);
}
