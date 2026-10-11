package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.STPercentage;

/* loaded from: classes14.dex */
public interface CTTLPoint extends XmlObject {
    public static final DocumentFactory<CTTLPoint> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTLPoint> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttlpoint25b7type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    Object getX();

    Object getY();

    void setX(Object obj);

    void setY(Object obj);

    STPercentage xgetX();

    STPercentage xgetY();

    void xsetX(STPercentage sTPercentage);

    void xsetY(STPercentage sTPercentage);
}
