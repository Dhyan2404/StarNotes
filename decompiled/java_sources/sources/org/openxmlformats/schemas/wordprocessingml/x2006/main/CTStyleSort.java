package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STStyleSort;

/* loaded from: classes16.dex */
public interface CTStyleSort extends XmlObject {
    public static final DocumentFactory<CTStyleSort> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTStyleSort> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctstylesort46c3type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STStyleSort.Enum getVal();

    void setVal(STStyleSort.Enum r1);

    STStyleSort xgetVal();

    void xsetVal(STStyleSort sTStyleSort);
}
