package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTPoint3D extends XmlObject {
    public static final DocumentFactory<CTPoint3D> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTPoint3D> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctpoint3dd472type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    Object getX();

    Object getY();

    Object getZ();

    void setX(Object obj);

    void setY(Object obj);

    void setZ(Object obj);

    STCoordinate xgetX();

    STCoordinate xgetY();

    STCoordinate xgetZ();

    void xsetX(STCoordinate sTCoordinate);

    void xsetY(STCoordinate sTCoordinate);

    void xsetZ(STCoordinate sTCoordinate);
}
