package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STMultiLevelType;

/* loaded from: classes16.dex */
public interface CTMultiLevelType extends XmlObject {
    public static final DocumentFactory<CTMultiLevelType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTMultiLevelType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctmultileveltypea223type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STMultiLevelType.Enum getVal();

    void setVal(STMultiLevelType.Enum r1);

    STMultiLevelType xgetVal();

    void xsetVal(STMultiLevelType sTMultiLevelType);
}
