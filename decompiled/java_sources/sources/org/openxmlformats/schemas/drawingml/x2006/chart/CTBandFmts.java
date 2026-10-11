package org.openxmlformats.schemas.drawingml.x2006.chart;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTBandFmts extends XmlObject {
    public static final DocumentFactory<CTBandFmts> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTBandFmts> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctbandfmts9981type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTBandFmt addNewBandFmt();

    CTBandFmt getBandFmtArray(int i);

    CTBandFmt[] getBandFmtArray();

    List<CTBandFmt> getBandFmtList();

    CTBandFmt insertNewBandFmt(int i);

    void removeBandFmt(int i);

    void setBandFmtArray(int i, CTBandFmt cTBandFmt);

    void setBandFmtArray(CTBandFmt[] cTBandFmtArr);

    int sizeOfBandFmtArray();
}
