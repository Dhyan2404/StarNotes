package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTMeasureDimensionMaps extends XmlObject {
    public static final DocumentFactory<CTMeasureDimensionMaps> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTMeasureDimensionMaps> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctmeasuredimensionmapse2e8type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTMeasureDimensionMap addNewMap();

    long getCount();

    CTMeasureDimensionMap getMapArray(int i);

    CTMeasureDimensionMap[] getMapArray();

    List<CTMeasureDimensionMap> getMapList();

    CTMeasureDimensionMap insertNewMap(int i);

    boolean isSetCount();

    void removeMap(int i);

    void setCount(long j);

    void setMapArray(int i, CTMeasureDimensionMap cTMeasureDimensionMap);

    void setMapArray(CTMeasureDimensionMap[] cTMeasureDimensionMapArr);

    int sizeOfMapArray();

    void unsetCount();

    XmlUnsignedInt xgetCount();

    void xsetCount(XmlUnsignedInt xmlUnsignedInt);
}
