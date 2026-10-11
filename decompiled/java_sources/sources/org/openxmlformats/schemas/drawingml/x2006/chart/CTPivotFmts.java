package org.openxmlformats.schemas.drawingml.x2006.chart;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTPivotFmts extends XmlObject {
    public static final DocumentFactory<CTPivotFmts> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTPivotFmts> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctpivotfmts863etype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTPivotFmt addNewPivotFmt();

    CTPivotFmt getPivotFmtArray(int i);

    CTPivotFmt[] getPivotFmtArray();

    List<CTPivotFmt> getPivotFmtList();

    CTPivotFmt insertNewPivotFmt(int i);

    void removePivotFmt(int i);

    void setPivotFmtArray(int i, CTPivotFmt cTPivotFmt);

    void setPivotFmtArray(CTPivotFmt[] cTPivotFmtArr);

    int sizeOfPivotFmtArray();
}
