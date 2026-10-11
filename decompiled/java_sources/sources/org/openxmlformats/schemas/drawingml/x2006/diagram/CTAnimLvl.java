package org.openxmlformats.schemas.drawingml.x2006.diagram;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.diagram.STAnimLvlStr;

/* loaded from: classes14.dex */
public interface CTAnimLvl extends XmlObject {
    public static final DocumentFactory<CTAnimLvl> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTAnimLvl> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctanimlvl092atype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STAnimLvlStr.Enum getVal();

    boolean isSetVal();

    void setVal(STAnimLvlStr.Enum r1);

    void unsetVal();

    STAnimLvlStr xgetVal();

    void xsetVal(STAnimLvlStr sTAnimLvlStr);
}
