package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STFrameScrollbar;

/* loaded from: classes16.dex */
public interface CTFrameScrollbar extends XmlObject {
    public static final DocumentFactory<CTFrameScrollbar> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTFrameScrollbar> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctframescrollbar1b0ftype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STFrameScrollbar.Enum getVal();

    void setVal(STFrameScrollbar.Enum r1);

    STFrameScrollbar xgetVal();

    void xsetVal(STFrameScrollbar sTFrameScrollbar);
}
