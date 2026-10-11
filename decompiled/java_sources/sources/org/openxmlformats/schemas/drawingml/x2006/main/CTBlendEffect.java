package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.STBlendMode;

/* loaded from: classes14.dex */
public interface CTBlendEffect extends XmlObject {
    public static final DocumentFactory<CTBlendEffect> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTBlendEffect> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctblendeffect9173type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTEffectContainer addNewCont();

    STBlendMode.Enum getBlend();

    CTEffectContainer getCont();

    void setBlend(STBlendMode.Enum r1);

    void setCont(CTEffectContainer cTEffectContainer);

    STBlendMode xgetBlend();

    void xsetBlend(STBlendMode sTBlendMode);
}
