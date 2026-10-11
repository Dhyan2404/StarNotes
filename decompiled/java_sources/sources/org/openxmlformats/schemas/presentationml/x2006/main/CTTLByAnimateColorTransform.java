package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTTLByAnimateColorTransform extends XmlObject {
    public static final DocumentFactory<CTTLByAnimateColorTransform> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTLByAnimateColorTransform> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttlbyanimatecolortransform87b4type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTTLByHslColorTransform addNewHsl();

    CTTLByRgbColorTransform addNewRgb();

    CTTLByHslColorTransform getHsl();

    CTTLByRgbColorTransform getRgb();

    boolean isSetHsl();

    boolean isSetRgb();

    void setHsl(CTTLByHslColorTransform cTTLByHslColorTransform);

    void setRgb(CTTLByRgbColorTransform cTTLByRgbColorTransform);

    void unsetHsl();

    void unsetRgb();
}
