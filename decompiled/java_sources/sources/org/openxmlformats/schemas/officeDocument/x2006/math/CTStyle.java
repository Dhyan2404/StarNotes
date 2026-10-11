package org.openxmlformats.schemas.officeDocument.x2006.math;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.math.STStyle;

/* loaded from: classes14.dex */
public interface CTStyle extends XmlObject {
    public static final DocumentFactory<CTStyle> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTStyle> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctstylead4btype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STStyle.Enum getVal();

    boolean isSetVal();

    void setVal(STStyle.Enum r1);

    void unsetVal();

    STStyle xgetVal();

    void xsetVal(STStyle sTStyle);
}
