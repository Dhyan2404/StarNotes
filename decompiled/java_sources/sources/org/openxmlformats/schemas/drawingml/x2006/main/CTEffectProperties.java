package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTEffectProperties extends XmlObject {
    public static final DocumentFactory<CTEffectProperties> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTEffectProperties> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cteffectpropertiese23ftype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTEffectContainer addNewEffectDag();

    CTEffectList addNewEffectLst();

    CTEffectContainer getEffectDag();

    CTEffectList getEffectLst();

    boolean isSetEffectDag();

    boolean isSetEffectLst();

    void setEffectDag(CTEffectContainer cTEffectContainer);

    void setEffectLst(CTEffectList cTEffectList);

    void unsetEffectDag();

    void unsetEffectLst();
}
