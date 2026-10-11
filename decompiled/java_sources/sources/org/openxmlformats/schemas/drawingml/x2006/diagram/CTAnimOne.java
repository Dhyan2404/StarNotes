package org.openxmlformats.schemas.drawingml.x2006.diagram;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.diagram.STAnimOneStr;

/* loaded from: classes14.dex */
public interface CTAnimOne extends XmlObject {
    public static final DocumentFactory<CTAnimOne> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTAnimOne> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctanimone6366type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STAnimOneStr.Enum getVal();

    boolean isSetVal();

    void setVal(STAnimOneStr.Enum r1);

    void unsetVal();

    STAnimOneStr xgetVal();

    void xsetVal(STAnimOneStr sTAnimOneStr);
}
