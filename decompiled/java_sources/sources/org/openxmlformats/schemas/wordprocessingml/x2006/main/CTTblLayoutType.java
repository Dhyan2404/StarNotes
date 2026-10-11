package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STTblLayoutType;

/* loaded from: classes16.dex */
public interface CTTblLayoutType extends XmlObject {
    public static final DocumentFactory<CTTblLayoutType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTblLayoutType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttbllayouttype6830type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STTblLayoutType.Enum getType();

    boolean isSetType();

    void setType(STTblLayoutType.Enum r1);

    void unsetType();

    STTblLayoutType xgetType();

    void xsetType(STTblLayoutType sTTblLayoutType);
}
