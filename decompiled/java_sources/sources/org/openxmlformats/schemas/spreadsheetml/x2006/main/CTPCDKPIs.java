package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTPCDKPIs extends XmlObject {
    public static final DocumentFactory<CTPCDKPIs> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTPCDKPIs> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctpcdkpis8c1ftype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTPCDKPI addNewKpi();

    long getCount();

    CTPCDKPI getKpiArray(int i);

    CTPCDKPI[] getKpiArray();

    List<CTPCDKPI> getKpiList();

    CTPCDKPI insertNewKpi(int i);

    boolean isSetCount();

    void removeKpi(int i);

    void setCount(long j);

    void setKpiArray(int i, CTPCDKPI ctpcdkpi);

    void setKpiArray(CTPCDKPI[] ctpcdkpiArr);

    int sizeOfKpiArray();

    void unsetCount();

    XmlUnsignedInt xgetCount();

    void xsetCount(XmlUnsignedInt xmlUnsignedInt);
}
