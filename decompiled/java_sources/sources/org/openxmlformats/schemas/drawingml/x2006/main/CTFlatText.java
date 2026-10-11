package org.openxmlformats.schemas.drawingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTFlatText extends XmlObject {
    public static final DocumentFactory<CTFlatText> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTFlatText> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctflattextbc61type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    Object getZ();

    boolean isSetZ();

    void setZ(Object obj);

    void unsetZ();

    STCoordinate xgetZ();

    void xsetZ(STCoordinate sTCoordinate);
}
