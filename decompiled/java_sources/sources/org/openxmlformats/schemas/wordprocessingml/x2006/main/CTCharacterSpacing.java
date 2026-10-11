package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STCharacterSpacing;

/* loaded from: classes16.dex */
public interface CTCharacterSpacing extends XmlObject {
    public static final DocumentFactory<CTCharacterSpacing> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTCharacterSpacing> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctcharacterspacing224etype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STCharacterSpacing.Enum getVal();

    void setVal(STCharacterSpacing.Enum r1);

    STCharacterSpacing xgetVal();

    void xsetVal(STCharacterSpacing sTCharacterSpacing);
}
