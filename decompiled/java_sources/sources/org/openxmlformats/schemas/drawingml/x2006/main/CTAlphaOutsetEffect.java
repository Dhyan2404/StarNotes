package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTAlphaOutsetEffect extends XmlObject {
    public static final DocumentFactory<CTAlphaOutsetEffect> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTAlphaOutsetEffect> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctalphaoutseteffect8ab4type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    Object getRad();

    boolean isSetRad();

    void setRad(Object obj);

    void unsetRad();

    STCoordinate xgetRad();

    void xsetRad(STCoordinate sTCoordinate);
}
