package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlDouble;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTGradientStop extends XmlObject {
    public static final DocumentFactory<CTGradientStop> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTGradientStop> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctgradientstopd51btype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTColor addNewColor();

    CTColor getColor();

    double getPosition();

    void setColor(CTColor cTColor);

    void setPosition(double d);

    XmlDouble xgetPosition();

    void xsetPosition(XmlDouble xmlDouble);
}
