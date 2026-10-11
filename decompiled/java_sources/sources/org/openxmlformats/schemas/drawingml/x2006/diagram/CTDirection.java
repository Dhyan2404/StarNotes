package org.openxmlformats.schemas.drawingml.x2006.diagram;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.diagram.STDirection;

/* loaded from: classes14.dex */
public interface CTDirection extends XmlObject {
    public static final DocumentFactory<CTDirection> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTDirection> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctdirection387ctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STDirection.Enum getVal();

    boolean isSetVal();

    void setVal(STDirection.Enum r1);

    void unsetVal();

    STDirection xgetVal();

    void xsetVal(STDirection sTDirection);
}
