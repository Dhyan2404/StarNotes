package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.STCoordinate32;
import org.openxmlformats.schemas.presentationml.x2006.main.STDirection;

/* loaded from: classes14.dex */
public interface CTGuide extends XmlObject {
    public static final DocumentFactory<CTGuide> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTGuide> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctguide4f93type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STDirection.Enum getOrient();

    Object getPos();

    boolean isSetOrient();

    boolean isSetPos();

    void setOrient(STDirection.Enum r1);

    void setPos(Object obj);

    void unsetOrient();

    void unsetPos();

    STDirection xgetOrient();

    STCoordinate32 xgetPos();

    void xsetOrient(STDirection sTDirection);

    void xsetPos(STCoordinate32 sTCoordinate32);
}
