package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTVector3D extends XmlObject {
    public static final DocumentFactory<CTVector3D> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTVector3D> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctvector3d7c8ftype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    Object getDx();

    Object getDy();

    Object getDz();

    void setDx(Object obj);

    void setDy(Object obj);

    void setDz(Object obj);

    STCoordinate xgetDx();

    STCoordinate xgetDy();

    STCoordinate xgetDz();

    void xsetDx(STCoordinate sTCoordinate);

    void xsetDy(STCoordinate sTCoordinate);

    void xsetDz(STCoordinate sTCoordinate);
}
