package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STVerticalJc;

/* loaded from: classes16.dex */
public interface CTVerticalJc extends XmlObject {
    public static final DocumentFactory<CTVerticalJc> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTVerticalJc> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctverticaljca439type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STVerticalJc.Enum getVal();

    void setVal(STVerticalJc.Enum r1);

    STVerticalJc xgetVal();

    void xsetVal(STVerticalJc sTVerticalJc);
}
