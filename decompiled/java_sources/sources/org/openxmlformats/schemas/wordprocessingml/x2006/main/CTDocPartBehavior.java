package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STDocPartBehavior;

/* loaded from: classes16.dex */
public interface CTDocPartBehavior extends XmlObject {
    public static final DocumentFactory<CTDocPartBehavior> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTDocPartBehavior> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctdocpartbehavior03f5type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STDocPartBehavior.Enum getVal();

    void setVal(STDocPartBehavior.Enum r1);

    STDocPartBehavior xgetVal();

    void xsetVal(STDocPartBehavior sTDocPartBehavior);
}
