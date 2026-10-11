package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STFrameLayout;

/* loaded from: classes16.dex */
public interface CTFrameLayout extends XmlObject {
    public static final DocumentFactory<CTFrameLayout> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTFrameLayout> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctframelayout3a7btype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STFrameLayout.Enum getVal();

    void setVal(STFrameLayout.Enum r1);

    STFrameLayout xgetVal();

    void xsetVal(STFrameLayout sTFrameLayout);
}
