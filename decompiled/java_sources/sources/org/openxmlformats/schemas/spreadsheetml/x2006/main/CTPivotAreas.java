package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTPivotAreas extends XmlObject {
    public static final DocumentFactory<CTPivotAreas> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTPivotAreas> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctpivotareas92edtype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTPivotArea addNewPivotArea();

    long getCount();

    CTPivotArea getPivotAreaArray(int i);

    CTPivotArea[] getPivotAreaArray();

    List<CTPivotArea> getPivotAreaList();

    CTPivotArea insertNewPivotArea(int i);

    boolean isSetCount();

    void removePivotArea(int i);

    void setCount(long j);

    void setPivotAreaArray(int i, CTPivotArea cTPivotArea);

    void setPivotAreaArray(CTPivotArea[] cTPivotAreaArr);

    int sizeOfPivotAreaArray();

    void unsetCount();

    XmlUnsignedInt xgetCount();

    void xsetCount(XmlUnsignedInt xmlUnsignedInt);
}
