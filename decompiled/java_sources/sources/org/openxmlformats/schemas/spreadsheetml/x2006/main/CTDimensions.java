package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTDimensions extends XmlObject {
    public static final DocumentFactory<CTDimensions> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTDimensions> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctdimensionsaf16type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTPivotDimension addNewDimension();

    long getCount();

    CTPivotDimension getDimensionArray(int i);

    CTPivotDimension[] getDimensionArray();

    List<CTPivotDimension> getDimensionList();

    CTPivotDimension insertNewDimension(int i);

    boolean isSetCount();

    void removeDimension(int i);

    void setCount(long j);

    void setDimensionArray(int i, CTPivotDimension cTPivotDimension);

    void setDimensionArray(CTPivotDimension[] cTPivotDimensionArr);

    int sizeOfDimensionArray();

    void unsetCount();

    XmlUnsignedInt xgetCount();

    void xsetCount(XmlUnsignedInt xmlUnsignedInt);
}
