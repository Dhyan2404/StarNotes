package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STLevelSuffix;

/* loaded from: classes16.dex */
public interface CTLevelSuffix extends XmlObject {
    public static final DocumentFactory<CTLevelSuffix> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTLevelSuffix> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctlevelsuffix3a3dtype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STLevelSuffix.Enum getVal();

    void setVal(STLevelSuffix.Enum r1);

    STLevelSuffix xgetVal();

    void xsetVal(STLevelSuffix sTLevelSuffix);
}
