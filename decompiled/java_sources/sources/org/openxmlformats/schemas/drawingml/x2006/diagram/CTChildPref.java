package org.openxmlformats.schemas.drawingml.x2006.diagram;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTChildPref extends XmlObject {
    public static final DocumentFactory<CTChildPref> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTChildPref> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctchildpreffe9ctype");
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
