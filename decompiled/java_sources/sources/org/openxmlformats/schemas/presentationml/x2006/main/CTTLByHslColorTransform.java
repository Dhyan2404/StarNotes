package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.drawingml.x2006.main.STAngle;
import org.openxmlformats.schemas.drawingml.x2006.main.STFixedPercentage;

/* loaded from: classes14.dex */
public interface CTTLByHslColorTransform extends XmlObject {
    public static final DocumentFactory<CTTLByHslColorTransform> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTLByHslColorTransform> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttlbyhslcolortransform2bd4type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    int getH();

    Object getL();

    Object getS();

    void setH(int i);

    void setL(Object obj);

    void setS(Object obj);

    STAngle xgetH();

    STFixedPercentage xgetL();

    STFixedPercentage xgetS();

    void xsetH(STAngle sTAngle);

    void xsetL(STFixedPercentage sTFixedPercentage);

    void xsetS(STFixedPercentage sTFixedPercentage);
}
