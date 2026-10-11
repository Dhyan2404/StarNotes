package org.openxmlformats.schemas.drawingml.x2006.diagram;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTChildMax extends XmlObject {
    public static final DocumentFactory<CTChildMax> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTChildMax> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctchildmax7509type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    int getVal();

    boolean isSetVal();

    void setVal(int i);

    void unsetVal();

    STNodeCount xgetVal();

    void xsetVal(STNodeCount sTNodeCount);
}
