package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTSoftEdgesEffect extends XmlObject {
    public static final DocumentFactory<CTSoftEdgesEffect> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTSoftEdgesEffect> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctsoftedgeseffect096etype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    long getRad();

    void setRad(long j);

    STPositiveCoordinate xgetRad();

    void xsetRad(STPositiveCoordinate sTPositiveCoordinate);
}
