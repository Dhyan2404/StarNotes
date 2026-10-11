package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STFFTextType;

/* loaded from: classes16.dex */
public interface CTFFTextType extends XmlObject {
    public static final DocumentFactory<CTFFTextType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTFFTextType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctfftexttype07c1type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STFFTextType.Enum getVal();

    void setVal(STFFTextType.Enum r1);

    STFFTextType xgetVal();

    void xsetVal(STFFTextType sTFFTextType);
}
