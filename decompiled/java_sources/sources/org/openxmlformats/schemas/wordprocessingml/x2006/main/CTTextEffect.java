package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STTextEffect;

/* loaded from: classes16.dex */
public interface CTTextEffect extends XmlObject {
    public static final DocumentFactory<CTTextEffect> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTextEffect> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttexteffect5ccatype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STTextEffect.Enum getVal();

    void setVal(STTextEffect.Enum r1);

    STTextEffect xgetVal();

    void xsetVal(STTextEffect sTTextEffect);
}
