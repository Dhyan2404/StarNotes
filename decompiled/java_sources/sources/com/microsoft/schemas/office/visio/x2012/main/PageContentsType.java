package com.microsoft.schemas.office.visio.x2012.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface PageContentsType extends XmlObject {
    public static final DocumentFactory<PageContentsType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<PageContentsType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "pagecontentstypea5d0type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    ConnectsType addNewConnects();

    ShapesType addNewShapes();

    ConnectsType getConnects();

    ShapesType getShapes();

    boolean isSetConnects();

    boolean isSetShapes();

    void setConnects(ConnectsType connectsType);

    void setShapes(ShapesType shapesType);

    void unsetConnects();

    void unsetShapes();
}
