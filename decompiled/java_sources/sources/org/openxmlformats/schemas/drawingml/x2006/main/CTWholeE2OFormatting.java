package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTWholeE2OFormatting extends XmlObject {
    public static final DocumentFactory<CTWholeE2OFormatting> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTWholeE2OFormatting> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctwholee2oformattingdc8btype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTEffectContainer addNewEffectDag();

    CTEffectList addNewEffectLst();

    CTLineProperties addNewLn();

    CTEffectContainer getEffectDag();

    CTEffectList getEffectLst();

    CTLineProperties getLn();

    boolean isSetEffectDag();

    boolean isSetEffectLst();

    boolean isSetLn();

    void setEffectDag(CTEffectContainer cTEffectContainer);

    void setEffectLst(CTEffectList cTEffectList);

    void setLn(CTLineProperties cTLineProperties);

    void unsetEffectDag();

    void unsetEffectLst();

    void unsetLn();
}
