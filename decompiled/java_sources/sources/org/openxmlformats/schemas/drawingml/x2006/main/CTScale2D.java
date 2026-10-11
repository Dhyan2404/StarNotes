package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTScale2D extends XmlObject {
    public static final DocumentFactory<CTScale2D> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTScale2D> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctscale2dbf4dtype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTRatio addNewSx();

    CTRatio addNewSy();

    CTRatio getSx();

    CTRatio getSy();

    void setSx(CTRatio cTRatio);

    void setSy(CTRatio cTRatio);
}
