package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTMeasureDimensionMap extends XmlObject {
    public static final DocumentFactory<CTMeasureDimensionMap> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTMeasureDimensionMap> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctmeasuredimensionmap6b73type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    long getDimension();

    long getMeasureGroup();

    boolean isSetDimension();

    boolean isSetMeasureGroup();

    void setDimension(long j);

    void setMeasureGroup(long j);

    void unsetDimension();

    void unsetMeasureGroup();

    XmlUnsignedInt xgetDimension();

    XmlUnsignedInt xgetMeasureGroup();

    void xsetDimension(XmlUnsignedInt xmlUnsignedInt);

    void xsetMeasureGroup(XmlUnsignedInt xmlUnsignedInt);
}
