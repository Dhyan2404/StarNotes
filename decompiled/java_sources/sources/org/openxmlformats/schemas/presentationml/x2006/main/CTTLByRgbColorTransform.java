package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.STFixedPercentage;

/* loaded from: classes14.dex */
public interface CTTLByRgbColorTransform extends XmlObject {
    public static final DocumentFactory<CTTLByRgbColorTransform> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTLByRgbColorTransform> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttlbyrgbcolortransform3548type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    Object getB();

    Object getG();

    Object getR();

    void setB(Object obj);

    void setG(Object obj);

    void setR(Object obj);

    STFixedPercentage xgetB();

    STFixedPercentage xgetG();

    STFixedPercentage xgetR();

    void xsetB(STFixedPercentage sTFixedPercentage);

    void xsetG(STFixedPercentage sTFixedPercentage);

    void xsetR(STFixedPercentage sTFixedPercentage);
}
