package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTAlphaModulateEffect extends XmlObject {
    public static final DocumentFactory<CTAlphaModulateEffect> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTAlphaModulateEffect> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctalphamodulateeffect9b79type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTEffectContainer addNewCont();

    CTEffectContainer getCont();

    void setCont(CTEffectContainer cTEffectContainer);
}
