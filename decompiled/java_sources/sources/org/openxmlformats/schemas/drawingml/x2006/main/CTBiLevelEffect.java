package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTBiLevelEffect extends XmlObject {
    public static final DocumentFactory<CTBiLevelEffect> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTBiLevelEffect> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctbileveleffectc7dftype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    Object getThresh();

    void setThresh(Object obj);

    STPositiveFixedPercentage xgetThresh();

    void xsetThresh(STPositiveFixedPercentage sTPositiveFixedPercentage);
}
