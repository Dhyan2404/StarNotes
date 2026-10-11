package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTAngle extends XmlObject {
    public static final DocumentFactory<CTAngle> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTAngle> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctangle8684type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    int getVal();

    void setVal(int i);

    STAngle xgetVal();

    void xsetVal(STAngle sTAngle);
}
